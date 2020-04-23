#!/usr/bin/expect
set timeout 1
log_user 1
set ip2serial 10.6.1.31
set ip2serialport 2401

# example
# ./lgip2serial PWRON
# ./lgip2serial PWRCHECK

# todo
# fix expected response issue (change to *OK*?, how handle NG?, what about requests?) 
#
# how handle sending codes when off? should I have ison() function?
#
# how should I handle returning values to caller function
# 
# consider re-writing to always check 0xff status before issuing command
#

# Pull LG command definitions	from external file	
source ./codes.exp 

# set tvON to "ka 01 01" & CRchar

proc usage {} { 
   global commandcode
   puts -nonewline " argv: lgip2serial.exp "
   foreach i [ array names commandcode ] {
      puts -nonewline "$i "
   }
   puts "\r"
}

# check to see if no args
# if no args
if { [llength $argv] == 0 } {
   usage
   exit -1
}

# validate commands
foreach i $argv {
   if { [info exists commandcode($i)] == 0 } {
      puts "$argv0: commandcode($i)"
      usage
      exit -1
   }
}

# commandsend { command  }
# 
# example:
# commandsend { "ka 01 00"  }
# returns: 
# > 0 - success with  
#   0 - success with no return value 
#  -1 = timeout on command; 
#  -2 = timeout in response; 
#  -3 = bad command
# 
# 
proc commandsend { command } {
   set result ''
   global ip2serial
   global ip2serialport
   spawn telnet $ip2serial $ip2serialport
   
   expect "Escape character is '^]'." { 
      # EJV - check here if TV must be on to continue, 
      send "${command}\r\n"
      expect { 
        "*OK*"  { set result $expect_out(0,string); return 0 }
        "*NG*"  { send_user "NG\r\n"; return -3 }
        timeout { send_user "timeout\r\n"; return -1 }
      }
   } "Connection refused" {
      # send_user "Connection refused to $ip2serial:$ip2serialport \r\n"
      return -3 
   } timeout { return -2 } 

   # parse return value
   set result [ lindex $result [ expr [ llength $result ] - 1 ] ]
   send_user "'$result'\r\n"
   
   return 0
}

# Actually call the commandsend proc now
# puts $argv
set commandreturn [commandsend $commandcode($argv) ]

# send_user $commandreturn

if { $commandreturn < 0 } {
   send_user "command failure\r\n"
   exit -3
} else {
   send_user "command succeeded!\r\n"
   exit 0
}
