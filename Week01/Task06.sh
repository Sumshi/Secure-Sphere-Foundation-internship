# Banner Grabbing and Service Version Detection
# - Perform banner grabbing and version detection on the open ports and services identified in Task 1 using Nmap's `-sV` option.
# - Provide a summary of each service version identified, and any known vulnerabilities associated with these versions.


┌──(kali㉿Kali)-[~]
└─$ sudo nmap -sV 10.5.5.1                                                                                                                                                                                        
[sudo] password for kali: 
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 10:42 UTC
Nmap scan report for 10.5.5.1
Host is up (0.000050s latency).
Not shown: 999 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 9.3p2 Debian 1 (protocol 2.0)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 17.00 seconds

┌──(kali㉿Kali)-[~]

: '
Summary of Service Versions and Known Vulnerabilities
Port: 22/tcp

Service Version: OpenSSH 9.3p2 Debian 1
Description: OpenSSH is a widely used implementation of the SSH protocol for secure remote login and other secure network services.
Protocol: 2.0
Known Vulnerabilities:

CVE-2023-23522: A potential issue in OpenSSH’s handling of certain protocols that could lead to privilege escalation.
CVE-2023-23525: A vulnerability related to OpenSSH’s internal handling of authentication.
Service Info:

Operating System: Linux
CPE: cpe:/o:linux
'
