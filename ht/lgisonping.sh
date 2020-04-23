#!/bin/bash

if `/sbin/ping -t 2 -c 1 10.6.1.32 &> /dev/null ` ; then
   echo "ping succeeded"
   curl -X PUT -d value=1 http://10.6.1.28:8176/variables/TVOn &> /dev/null
else
   echo "ping failed"
   curl -X PUT -d value=0 http://10.6.1.28:8176/variables/TVOn &> /dev/null
fi
