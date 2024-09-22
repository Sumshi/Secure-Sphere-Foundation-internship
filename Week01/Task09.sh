# Use Netcat to perform a manual port scan and compare the results with the Nmap scan.
# nc -zv <target-IP> <start-port>-<end-port>
# -z: This option tells Netcat to scan without sending any data (zero-I/O mode).
# -v: This option enables verbose mode to see the output.

┌──(kali㉿Kali)-[~]
└─$ nc -zv 10.5.5.11 1-1024 
mutillidae.pc [10.5.5.11] 80 (http) open

┌──(kali㉿Kali)-[~]
└─$ nmap -p 1-1024 10.5.5.11 
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 13:31 UTC
Nmap scan report for mutillidae.pc (10.5.5.11)
Host is up (0.00034s latency).
Not shown: 1023 closed tcp ports (conn-refused)
PORT   STATE SERVICE
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.27 seconds

┌──(kali㉿Kali)-[~]
└─$ 

: '
Summary
Both Netcat and Nmap identified port 80/tcp as open.
Nmap provided a summary indicating that 1023 ports were closed, while Netcat only scanned and reported on the open port.
Conclusion
Both tools yielded consistent results for port 80.
Nmap gives a more comprehensive overview of the port states (including closed ports), while Netcat is more straightforward and quick for identifying open ports.
'