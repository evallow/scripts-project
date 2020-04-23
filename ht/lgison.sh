#!/usr/bin/expect
set timeout 1
log_user 0
# returns: 
# 0 - success; -1 = timeout; -2 = protocol error; -3 = other/usage error
set ip2serial 10.6.1.31
set ip2serialport 2401

# example
# ./lgison.sh

proc usage {} { 
   puts -nonewline "argv: lgison.sh "
   puts "\r"
}

# check to see if no args
# if no args
if { [llength $argv] != 0 } {
   usage
   exit -1
}

spawn telnet $ip2serial $ip2serialport

expect "Escape character is '^]'." {
   send "ka 01 ff\r\n"
      expect {
         "*OK*"  { puts "1" }
         "*NG*"  { puts "1" }
         timeout { puts "0" }
      }
   } "Connection refused" {
      puts "Connection refused to $ip2serial:$ip2serialport"
} timeout { puts "timeout waiting for ip2serial" }
