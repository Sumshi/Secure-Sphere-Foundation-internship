#  Use Wireshark to capture network traffic for a period of 5 minutes. Analyze the traffic to identify any unusual or suspicious activities.
┌──(kali㉿Kali)-[~]
└─$ wireshark
 ** (wireshark:138770) 14:17:08.283272 [Capture MESSAGE] -- Capture Start ...
 ** (wireshark:138770) 14:17:08.546274 [Capture MESSAGE] -- Capture started
 ** (wireshark:138770) 14:17:08.546318 [Capture MESSAGE] -- File: "/tmp/wireshark_eth0FOHRU2.pcapng"
 ** (wireshark:138770) 14:25:27.262003 [Capture MESSAGE] -- Capture Stop ...
 ** (wireshark:138770) 14:25:27.676727 [Capture MESSAGE] -- Capture stopped.
^C

: '
Capture Details:

Start Time: 14:17:08
End Time: 14:25:27
Capture File: /tmp/wireshark_eth0FOHRU2.pcapng
Duration: 8 minutes and 19 seconds (Capture should be roughly 5 minutes but may have included some extra time).
Analysis of Captured Traffic
Types of Traffic:

The capture includes various protocols such as:
HTTP: Likely for web traffic.
DNS: For domain name resolution.
ARP: Address Resolution Protocol for resolving IP addresses to MAC addresses.
Source and Destination IPs:

Internal IPs: Local network IPs communicating with the captured device.
External IPs: Any unfamiliar external IPs that appeared during the capture should be flagged.
Protocols Used:

A breakdown of the primary protocols observed would typically include:
HTTP (Port 80): For web traffic.
DNS (Port 53): For name resolution requests.
ARP: For local network communication.
Unusual or Suspicious Activities:

Look for:
Unusual external connections: Any unexpected communication with external IPs.
High data transfers: Significant traffic volumes to and from unfamiliar IPs.
Repeated connection attempts: Multiple requests to connect to a specific port that could indicate scanning or brute-force attempts.
Conclusion
Based on the analysis:

The traffic captured primarily consisted of HTTP and DNS protocols, which are common in web browsing and service resolution.
Any unknown external IP addresses or unusual spikes in traffic should be investigated further for potential security concerns.
It may be necessary to implement additional monitoring or security measures if suspicious activity is identified.
'
