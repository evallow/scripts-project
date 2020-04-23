#!/usr/bin/python

import subprocess

result = subprocess.call("ping -t 1 -c 1 10.6.1.32", shell=True) 
print (result == 0)
