# Use Zenmap (the graphical frontend for Nmap) to create a network topology map based on the scans performed in the above tasks.
# - Export the topology map and include it in the report.

┌──(kali㉿Kali)-[~]
└─$ sudo nmap -sn -oX network_scan.xml 10.5.5.1/24
Starting Nmap 7.94 ( https://nmap.org ) at 2024-09-22 16:01 UTC
Nmap scan report for mutillidae.pc (10.5.5.11)
Host is up (0.000016s latency).
MAC Address: 02:42:0A:05:05:0B (Unknown)
Nmap scan report for dvwa.pc (10.5.5.12)
Host is up (0.18s latency).
MAC Address: 02:42:0A:05:05:0C (Unknown)
Nmap scan report for juice-shop.pc (10.5.5.13)
Host is up (0.00036s latency).
MAC Address: 02:42:0A:05:05:0D (Unknown)
Nmap scan report for gravemind.pc (10.5.5.14)
Host is up (0.00031s latency).
MAC Address: 02:42:0A:05:05:0E (Unknown)
Nmap scan report for webgoat.pc (10.5.5.15)
Host is up (0.00036s latency).
MAC Address: 02:42:0A:05:05:0F (Unknown)
Nmap scan report for 10.5.5.1
Host is up.
Nmap done: 256 IP addresses (6 hosts up) scanned in 15.34 seconds

: '
Option 1: Use Nmap and Generate a Topology Manually
You can use Nmap itself to perform network scans, then use visualization tools like Nmap Visualizer or Graphviz to create the network topology map.

Step 1: Perform the Nmap Scan
You can run the Nmap scan using the following command: sudo nmap -sn -oX network_scan.xml <target_subnet>

sudo nmap -sn -oX network_scan.xml <target_subnet>

sudo nmap -sn -oX network_scan.xml <target_subnet>
Replace <target_subnet> with the appropriate network range (e.g., 192.168.1.0/24). The -sn option does a ping scan to identify live hosts.

Step 2: Visualize the Network Topology
Once you have the network_scan.xml file, you can use tools like Nmap Visualizer or even create a custom visualization using Graphviz.

Nmap Visualizer: This tool allows you to upload your Nmap XML results and generates a visual map of the network.
Graphviz: You can create a .dot file to represent the network and use Graphviz to create the visualization.
Example of using Graphviz:
You can write a .dot file like this:
'
# network_topology.dot file
graph NetworkTopology {
    "10.5.5.1 (Gateway)" -- "10.5.5.11 (mutillidae.pc)";
    "10.5.5.1 (Gateway)" -- "10.5.5.12 (dvwa.pc)";
    "10.5.5.1 (Gateway)" -- "10.5.5.13 (juice-shop.pc)";
    "10.5.5.1 (Gateway)" -- "10.5.5.14 (gravemind.pc)";
    "10.5.5.1 (Gateway)" -- "10.5.5.15 (webgoat.pc)";
    
    // Adding MAC Addresses as labels for extra information
    "10.5.5.11 (mutillidae.pc)" [label="mutillidae.pc\nMAC: 02:42:0A:05:05:0B"];
    "10.5.5.12 (dvwa.pc)" [label="dvwa.pc\nMAC: 02:42:0A:05:05:0C"];
    "10.5.5.13 (juice-shop.pc)" [label="juice-shop.pc\nMAC: 02:42:0A:05:05:0D"];
    "10.5.5.14 (gravemind.pc)" [label="gravemind.pc\nMAC: 02:42:0A:05:05:0E"];
    "10.5.5.15 (webgoat.pc)" [label="webgoat.pc\nMAC: 02:42:0A:05:05:0F"];
}

: '
Step 2: Generate the Visualization
Save the above .dot file as network_topology.dot and then use Graphviz to create a PNG image of the network topology.

dot -Tpng network_topology.dot -o network_topology.png
This will generate a visual map of your network in network_topology.png. You can include this image in your report.
'


