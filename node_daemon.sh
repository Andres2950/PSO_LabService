#!/bin/bash

git -C ~/PSO_LabService/ checkout Deploy

while true; do
    
    echo "Hello World demonio"

    OUTPUT="$(git -C ~/PSO_LabService/ status)"
        
    if [[ $OUTPUT == *"pull"* ]]; then
        git -C ~/PSO_LabService/ pull
        # systemctl restart node.service
    fi

    sleep 1

done
