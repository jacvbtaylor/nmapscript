#!/bin/bash
#by @jacvbtaylor

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
 
echo "sed -e '/Raw/d;/Read/d;/Discovered/d;/Increasing/d;/closed/d;/Completed/d;/Initiating/d;/Starting/d;/Not/d;/Nmap/d'" > SED && chmod +x SED
printf "input the ip, then press enter\n\n"
read IP 
echo "${IP}" > host\
&& nmap -sn -v -iL host -oG - | awk '/Up$/{print$2}' > livehosts.txt &&\
printf "${GREEN}\n\n\n[x]Found live host, scanning now[x]\n\n\n${ENDCOLOR}" && echo "_______________________________" &&\
rm host && nmap -v -iL livehosts.txt | ./SED >> scan.txt && printf "${RED}\n\n~~~~Port scan is now complete~~~~\n\n${ENDCOLOR}" \
&& cat scan.txt && rm SED 
