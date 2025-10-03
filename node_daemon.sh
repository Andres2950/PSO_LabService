#!/bin/bash



git -C /home/osobando/Documents/lab_servicios/demonio/PSO_LabService/ checkout Deploy

while true; do
    
    echo "Hello World demonio"

    output = $(git -C /home/osobando/Documents/lab_servicios/demonio/PSO_LabService/ fetch origin Deploy --porcelain)

    sleep 1

done
