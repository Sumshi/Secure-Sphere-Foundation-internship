# Identify all active hosts on the network.

┌──(kali㉿Kali)-[~]
└─$ nmap  10.5.5.1/24                                                                                                                                                                                             
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 08:30 UTC
Nmap scan report for 10.5.5.1
Host is up (0.00096s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT   STATE SERVICE
22/tcp open  ssh

Nmap scan report for mutillidae.pc (10.5.5.11)
Host is up (0.0012s latency).
Not shown: 998 closed tcp ports (conn-refused)
PORT     STATE SERVICE
80/tcp   open  http
3306/tcp open  mysql

Nmap scan report for dvwa.pc (10.5.5.12)
Host is up (0.0011s latency).
All 1000 scanned ports on dvwa.pc (10.5.5.12) are in ignored states.
Not shown: 1000 closed tcp ports (conn-refused)

Nmap scan report for juice-shop.pc (10.5.5.13)
Host is up (0.0010s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT     STATE SERVICE
3000/tcp open  ppp

Nmap scan report for gravemind.pc (10.5.5.14)
Host is up (0.00094s latency).
Not shown: 994 closed tcp ports (conn-refused)
PORT    STATE SERVICE
21/tcp  open  ftp
22/tcp  open  ssh
53/tcp  open  domain
80/tcp  open  http
139/tcp open  netbios-ssn
445/tcp open  microsoft-ds

Nmap scan report for webgoat.pc (10.5.5.15)
Host is up (0.0010s latency).
Not shown: 997 closed tcp ports (conn-refused)
PORT     STATE SERVICE
8080/tcp open  http-proxy
8888/tcp open  sun-answerbook
9001/tcp open  tor-orport

Nmap done: 256 IP addresses (6 hosts up) scanned in 3.45 seconds

: '
the active hosts on the network are:
10.5.5.1 (Host is up)
mutillidae.pc (10.5.5.11)
dvwa.pc (10.5.5.12)
juice-shop.pc (10.5.5.13)
gravemind.pc (10.5.5.14)
webgoat.pc (10.5.5.15)
These are the six hosts that were active and responding to the Nmap scan in the 10.5.5.1/24 network range.

'