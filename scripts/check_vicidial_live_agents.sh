#!/bin/bash

vicidial_live_agents=$(mysql asterisk -N -s -e 'select count(*) from vicidial_live_agents')
        echo "Aantal live agents: ${vicidial_live_agents}"
        exit 0
