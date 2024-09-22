# Use Nmap's vulnerability scanning scripts to identify common vulnerabilities on a selected host (`nmap --script vuln <target-IP>`).

┌──(kali㉿Kali)-[~]
└─$ nmap --script vuln 10.5.5.1                                                                                                                                                                                   Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 10:28 UTC                                                                                                                                                   
Nmap scan report for 10.5.5.1                                                                                                                                                                                     
Host is up (0.00063s latency).                                                                                                                                                                                    
Not shown: 999 closed tcp ports (conn-refused)                                                                                                                                                                    
PORT   STATE SERVICE                                                                                                                                                                                              
22/tcp open  ssh                                                                                                                                                                                                  
                                                                                                                                                                                                                  
Nmap done: 1 IP address (1 host up) scanned in 13.87 seconds                                                                                                                                                      
                                                                                                                                                                                                                  
┌──(kali㉿Kali)-[~]  

: '
The Nmap scan using vulnerability scripts identified that the SSH service (port 22) is open 
on the host 10.5.5.1. However, no vulnerabilities were reported as there were no additional details 
provided in the output regarding vulnerabilities for this specific service. 

'