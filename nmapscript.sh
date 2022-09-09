#!/bin/bash
 
echo "sed -e '/closed/d;/Completed/d;/Initiating/d;/Starting/d;/Not/d;/Nmap/d'" > SED && chmod +x SED
printf "enter the ip\n\n"
read IP 
echo "${IP}" > host\
&& nmap -sn -v -iL host -oG - | awk '/Up$/{print$2}' > livehosts.txt && rm host\
&& nmap -v -iL livehosts.txt | ./SED > nmapscan.txt\
&& nmap -sV -A --script vulners -iL livehost* | ./SED > vulnscan.txt 
