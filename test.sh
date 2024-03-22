#!/bin/bash
output=$(kube-capacity)
output1=$(kube-capacity --pods)
#output2=$(`kube-capacity --util`) #(nodes)
echo "$output \n kube-capacity UTIL OUPUT \n  $output1" > ./log.txt
#`kube-capacity --pods >> /home/admin1/CAPACITY_PLANNING/"$(date "+\%d\%b\%y")".log` #(pods)

