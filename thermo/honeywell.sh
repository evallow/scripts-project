#!/usr/bin/python

import urllib2
import urllib
import json
import datetime
import re
import time
import math
import base64
import time
import httplib
import sys
import tty,termios
import os
import stat

# Optional - Specify credentials here so you don't need them on command line
USERNAME="erik@misty.com"
PASSWORD="Pr0berhoneywell"
# DEVICE_ID for Apartment thermostat
# DEVICE_ID=261232
# DEVICE_ID=377297
DEVICE_ID=2364125

AUTH="https://rs.alarmnet.com/TotalConnectComfort/"

# Returns character or None on error. Error should WAIT then retry
def getch(ttydev):
    fd=None
    old_settings=None
    ch=None
    try:
        fd = open(ttydev,"r")
        old_settings=termios.tcgetattr(fd)	
        tty.setraw(fd)
        ch = fd.read(1)
    finally:
         if (fd != None): 
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
         return ch

def get_login(queryOnly=None):
    
    retries=5
    params=urllib.urlencode({"timeOffset":"240",
        "UserName":USERNAME,
        "Password":PASSWORD,
        "RememberMe":"false"})
    print params
    headers={"Content-Type":"application/x-www-form-urlencoded",
            "Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Encoding":"sdch",
            "Host":"rs.alarmnet.com",
            "DNT":"1",
            "Origin":"https://rs.alarmnet.com/TotalComfort/",
            "User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36"
        }
    conn = httplib.HTTPSConnection("rs.alarmnet.com")
    conn.request("POST", "/TotalConnectComfort/",params,headers)
    r1 = conn.getresponse()
    print r1.status, r1.reason
    cookie = r1.getheader("Set-Cookie")
    location = r1.getheader("Location")
    "Cookie",cookie
    exit()

    # Strip "expires" "httponly" and "path" from cookie
    newcookie=cookie
    newcookie=re.sub(";\s*expires=[^;]+","",newcookie)
    newcookie=re.sub(";\s*path=[^,]+,",";",newcookie)
    newcookie=re.sub("HttpOnly\s*[^;],","X;",newcookie)
    newcookie=re.sub(";\s*HttpOnly\s*,",";",newcookie)
    cookie=newcookie
    # DEBUG print "Cookie",cookie

    if ((location == None) or (r1.status != 302)):
        raise BaseException("Login fail" )

    # Skip second query - just go directly to our device_id, rather than letting it
    # redirect us to it. 

    code=str(DEVICE_ID)

    t = datetime.datetime.now()
    utc_seconds = (time.mktime(t.timetuple()))
    utc_seconds = int(utc_seconds*1000)

    location="/TotalConnectComfort/Device/CheckDataSession/"+code+"?_="+str(utc_seconds)
    headers={
            "Accept":"*/*",
            "DNT":"1",
            "Accept-Encoding":"plain",
            "Cache-Control":"max-age=0",
            "Accept-Language":"en-US,en,q=0.8",
            "Connection":"keep-alive",
            "Host":"rs.alarmnet.com",
            "Referer":"https://rs.alarmnet.com/TotalConnectComfort/",
            "X-Requested-With":"XMLHttpRequest",
            "User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36",
            "Cookie":cookie
        }
    conn = httplib.HTTPSConnection("rs.alarmnet.com")
    # DEBUG conn.set_debuglevel(999);
    conn.request("GET", location,None,headers)
    r3 = conn.getresponse()
    if (r3.status != 200):
        print "Bad R3 status ",r3.status, r3.reason
    # DEBUG print r3.status, r3.reason
    rawdata=r3.read()
    j = json.loads(rawdata)
    # DEBUG print json.dumps(j,sort_keys=True,indent=4, separators=(',', ': '))
    print "CurrentTemp",j['latestData']['uiData']["DispTemperature"]
    print "CoolSetpoint",j['latestData']['uiData']["CoolSetpoint"]
    print "HeatSetpoint",j['latestData']['uiData']["HeatSetpoint"]

queryOnly=1

if ((USERNAME == None) or (USERNAME=="") or (PASSWORD == None) or (PASSWORD == "") or (DEVICE_ID ==0)):
  print "User credentials not specified"
  exit(1)

if (queryOnly):
    get_login(queryOnly=1)
    exit(0)

# We need a tty 

if (args.__len__() == 0):
    usage()
    exit(2)

ttydev=args.pop()
mode  = os.stat(ttydev).st_mode
if (not stat.S_ISCHR(mode)):
    print ttydev,"is not a character device"
    exit(2)

sys.stdout = os.fdopen(sys.stdout.fileno(), 'w', 0)
