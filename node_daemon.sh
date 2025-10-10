#!/bin/bash

while true; do

    OUTPUT="$(git -C /home/osobando/PSO_LabService/ fetch origin refs/heads/Deploy:refs/remotes/origin/Deploy --verbose --porcelain --dry-run)"
    
        
    if ! [[ $OUTPUT == *"="* ]]; then
        systemctl stop node.service
        git -C /home/osobando/PSO_LabService/ checkout Deploy
        git -C /home/osobando/PSO_LabService/ pull
        systemctl start node.service
    fi

    sleep 300

done
