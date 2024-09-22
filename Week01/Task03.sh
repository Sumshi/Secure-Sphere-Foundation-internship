# - List the open ports and running services for each host.

┌──(kali㉿Kali)-[~]
└─$ nmap -sV 10.5.5.0/24                                                                                                                                                                                          
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 09:50 UTC
Nmap scan report for 10.5.5.1
Host is up (0.00091s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 9.3p2 Debian 1 (protocol 2.0)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for mutillidae.pc (10.5.5.11)
Host is up (0.0010s latency).
Not shown: 998 closed tcp ports (conn-refused)
PORT     STATE SERVICE VERSION
80/tcp   open  http    Apache httpd 2.4.7 ((Ubuntu))
3306/tcp open  mysql   MySQL 5.5.60-0ubuntu0.14.04.1

Nmap scan report for dvwa.pc (10.5.5.12)
Host is up (0.00096s latency).
All 1000 scanned ports on dvwa.pc (10.5.5.12) are in ignored states.
Not shown: 1000 closed tcp ports (conn-refused)

Nmap scan report for juice-shop.pc (10.5.5.13)
Host is up (0.00093s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT     STATE SERVICE VERSION
3000/tcp open  http    Node.js Express framework

Nmap scan report for gravemind.pc (10.5.5.14)
Host is up (0.00089s latency).
Not shown: 994 closed tcp ports (conn-refused)
PORT    STATE SERVICE     VERSION
21/tcp  open  ftp         vsftpd 3.0.3
22/tcp  open  ssh         OpenSSH 7.9p1 Debian 10+deb10u2 (protocol 2.0)
53/tcp  open  domain      ISC BIND 9.11.5-P4-5.1+deb10u5 (Debian Linux)
80/tcp  open  http        nginx 1.14.2
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
Service Info: Host: GRAVEMIND; OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for webgoat.pc (10.5.5.15)
Host is up (0.00094s latency).
Not shown: 997 closed tcp ports (conn-refused)
PORT     STATE SERVICE    VERSION
8080/tcp open  http-proxy
8888/tcp open  http       nginx 1.18.0
9001/tcp open  jdbc       HSQLDB JDBC (Network Compatibility Version 2.3.4.0)
