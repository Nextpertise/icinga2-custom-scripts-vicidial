#!/bin/bash


while getopts w:c: option
do
case "${option}"
in
w) warning=${OPTARG};;
c) critical=${OPTARG};;
esac
done

if [ -z "${warning}" ]; then
	warning=0
fi
if [ -z "${critical}" ]; then
	critical=0
fi

swapusage=$(free -k | grep Swap | awk '{print $3}')
if [ "${swapusage}" -gt "${critical}" ]; then
        echo "Critical - ${swapusage}Kb on swap used"
        exit 2
elif [ "${swapusage}" -gt "${warning}" ]; then
        echo "Warning - ${swapusage}Kb on swap used"
        exit 1
fi

echo "OK - ${swapusage}Kb on swap used"
exit 0
