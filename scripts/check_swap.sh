#!/bin/bash

warning=$1
critical=$2

if [ -z "${warning}" ]; then
	warning=0
fi
if [ -z "${critical}" ]; then
	critical=0
fi

swapusage=$(free | grep Swap | awk '{print $3}')
if [ "${swapusage}" -gt "${critical}" ]; then
        echo "Critical - ${swapusage}k on swap used"
        exit 2
elif [ "${swapusage}" -gt "${warning}" ]; then
        echo "Warning - ${swapusage}k on swap used"
        exit 1
fi

echo "OK - ${swapusage} on swap used"
exit 0
