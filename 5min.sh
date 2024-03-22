#!/bin/bash
echo "START OF $(date +%d%b%y_%T_%Z) LOGS"
#echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
#/home/linuxbrew/.linuxbrew/bin/kube-capacity | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(nodes)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity --pods";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity --pods --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(pods)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity --pods -n kube-system";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity --pods -n kube-system --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(pods)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity --available";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity --available --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(total available resources on the nodes)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; echo "kube-capacity --pod-count";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";echo
/home/linuxbrew/.linuxbrew/bin/kube-capacity --pod-count --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(pod count of each node)


#IFF METRICS SERVER INSTALLED:
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";echo "kube-capacity --util";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
/home/linuxbrew/.linuxbrew/bin/kube-capacity --util --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(node utilisation)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";echo "kube-capacity --pods --util";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity --pods --util --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(combined pod & node utilisation)
echo;echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";echo "kube-capacity --pods --util -n kube-system";echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/home/linuxbrew/.linuxbrew/bin/kube-capacity --pods --util -n kube-system --output json | tee -a /home/admin1/CAPACITY_PLANNING/logs/"$(date "+%d%b%y")".log #(combined pod & node utilisation)
echo;echo "END OF $(date +%d%b%y_%T_%Z) LOGS";echo;echo;echo
