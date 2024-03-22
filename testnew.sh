#!/bin/bash
echo "START OF $(date +%d%b%y_%T_%Z) LOGS"
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity | tee -a /home/admin1/CAPACITY_PLANNING/testlogs/"$(date "+%d%b%y")".log #(nodes)
