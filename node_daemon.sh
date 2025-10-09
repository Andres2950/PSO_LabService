#!/bin/bash

git -C ~/PSO_LabService/ checkout Deploy

while true; do
    
    echo "Hello World demonio"

    OUTPUT="$(git -C ~/PSO_LabService/ fetch origin refs/heads/Deploy:refs/remotes/origin/Deploy --verbose --porcelain --dry-run)"
    
        
    if ! [[ $OUTPUT == *"="* ]]; then
        git -C ~/PSO_LabService/ pull
        # systemctl restart node.service
    fi

    sleep 1

done
