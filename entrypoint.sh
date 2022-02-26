#!/bin/sh
cd /home/container

# Output Current HAProxy Version
haproxy -v ## only really needed to show what version is being used. Should be changed for different applications

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
