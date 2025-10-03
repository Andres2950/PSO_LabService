#!/bin/bash



git -C /home/osobando/Documents/lab_servicios/demonio/PSO_LabService/ checkout Deploy

while true; do
    
    echo "Hello World demonio"

    OUTPUT = "$(git -C /home/osobando/Documents/lab_servicios/demonio/PSO_LabService/ fetch origin Deploy --porcelain)"
        
    if [[ $OUTPUT == "*"* ]]; then
        echo "pull"
    fi

    sleep 1

done
