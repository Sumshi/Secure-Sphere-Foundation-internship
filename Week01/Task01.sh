# Use Nmap to perform a basic scan of a local network (e.g., `nmap 192.168.1.0/24`).
┌──(kali㉿Kali)-[~]
└─$ nmap 10.5.5.1                                                                                                                                                                                                                          
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 08:15 UTC
Nmap scan report for 10.5.5.1
Host is up (0.00018s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT   STATE SERVICE
22/tcp open  ssh

Nmap done: 1 IP address (1 host up) scanned in 2.75 seconds

# explanation: This Nmap scan is probing the IP address 10.0.2.15. The scan reveals that the host is up, meaning the system at this IP is active and responding to requests. Nmap found that most ports are closed (not accessible), except for port 22, which is open and running an SSH service. This suggests that the device or VM is accessible for remote login via SSH