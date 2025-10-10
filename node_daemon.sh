#!/bin/bash

while true; do

    OUTPUT="$(git -C ~/PSO_LabService/ fetch origin refs/heads/Deploy:refs/remotes/origin/Deploy --verbose --porcelain --dry-run)"
    
        
    if ! [[ $OUTPUT == *"="* ]]; then
        systemctl stop node.service
        git -C ~/PSO_LabService/ checkout Deploy
        git -C ~/PSO_LabService/ pull
        systemctl start node.service
    fi

    sleep 5

done
