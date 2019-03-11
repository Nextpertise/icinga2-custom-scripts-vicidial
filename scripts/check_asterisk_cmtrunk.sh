#!/bin/bash

cmtrunk=$(/usr/sbin/asterisk -rvx 'sip show peers' | grep cmcom | grep 'OK' | wc -l)

if [ "${cmtrunk}" == "0" ]; then

        exit 2
        echo "Status: NOK, aantal trunks: ${cmtrunk}"
else 
        echo "Status: OK, aantal trunks: ${cmtrunk}"
        exit 0
fi
