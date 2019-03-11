#!/bin/bash

asteriskspeers=$(/usr/sbin/asterisk -rvx 'sip show peers' | grep -v cmcom | grep -v 'Name/username' | grep '/' | grep 'OK' | wc -l)

echo "Aantal active peers: ${asteriskspeers}"
