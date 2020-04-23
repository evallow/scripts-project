#!/usr/bin/ruby
require 'socket'      # Sockets are in standard library

hostname = '10.6.1.31'
port = 2401
tvstatus = "ka 01 00"

s = TCPSocket.open(hostname, port)
puts s

s.send(tvstatus,0)
response = s.read
puts response

s.close               # Close the socket when done
