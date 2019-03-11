#!/bin/bash                                                                                                                          
                                                                                                                                     
swapusage=$(free | grep Swap | awk '{print $3}')                                                                                     
if [ "${swapusage}" == "0" ]; then                                                                                                   
        echo "OK - No swap used"                                                                                                     
        exit 0                                                                                                                       
fi                                                                                                                                   
                                                                                                                                     
echo "NOK - ${swapusage}k on swap used"                                                                                              
exit 2        
