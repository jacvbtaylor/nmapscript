# nmapscript
use for CTF recon

I wrote this interactive script to quickly scan a target IP (or IP range if applied). 
It puts the IP(s) into a txt file that have responded and are up. 
Nmap takes that file and scans the hosts that are running, putting those results into a different txt so you can easily see which ports/services are running. 
Additionally, it scans for vulnerabilities which are placed in a seperate file. 
(This script is very helpful when scanning a network as apposed to a single machine, but I still like to use it when doing CTF's).


