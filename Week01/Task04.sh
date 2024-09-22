# - Identify the operating systems used by the devices on the network using OS detection (`-O` flag).
┌──(kali㉿Kali)-[~]
└─$ sudo nmap -O 10.5.5.1                                                                                                                                                                                                                   
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 10:04 UTC
Nmap scan report for 10.5.5.1
Host is up (0.00016s latency).
Not shown: 999 closed tcp ports (reset)
PORT   STATE SERVICE
22/tcp open  ssh
Device type: general purpose
Running: Linux 2.6.X
OS CPE: cpe:/o:linux:linux_kernel:2.6.32
OS details: Linux 2.6.32
Network Distance: 0 hops

OS detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 1.65 seconds

: '
The scan identified that the device at IP address 10.5.5.1 
is running a Linux operating system, specifically Linux kernel version 2.6.32. 
It also detected that the SSH service is running on port 22. 
The host is directly reachable on the local network (0 hops)

'