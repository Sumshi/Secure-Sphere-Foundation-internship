# - Use Nikto to scan a selected web server or application (`nikto -h <target-IP or domain>`).

┌──(kali㉿Kali)-[~]
└─$ nikto -h 10.5.5.11
- Nikto v2.5.0
---------------------------------------------------------------------------
+ Target IP:          10.5.5.11
+ Target Hostname:    10.5.5.11
+ Target Port:        80
+ Start Time:         2024-09-22 10:48:30 (GMT0)
---------------------------------------------------------------------------
+ Server: Apache/2.4.7 (Ubuntu)
+ /: Cookie PHPSESSID created without the httponly flag. See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies
+ /: Cookie showhints created without the httponly flag. See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies
+ /: Retrieved x-powered-by header: PHP/5.5.9-1ubuntu4.25.
+ /: The anti-clickjacking X-Frame-Options header is not present. See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
+ /: Uncommon header 'logged-in-user' found, with contents: .
+ /: The X-Content-Type-Options header is not set. This could allow the user agent to render the content of the site in a different fashion to the MIME type. See: https://www.netsparker.com/web-vulnerability-scanner/vulnerabilities/missing-content-type-header/                                                                                                                                                                                                                   
+ /robots.txt: contains 8 entries which should be manually viewed. See: https://developer.mozilla.org/en-US/docs/Glossary/Robots.txt                                                                                                       
+ Apache/2.4.7 appears to be outdated (current is at least Apache/2.4.54). Apache 2.2.34 is the EOL for the 2.x branch.                                                                                                                    
+ /: Web Server returns a valid response with junk HTTP methods which may cause false positives.                                                                                                                                           
^[[B^[[B^[[B+ /index.php?page=../../../../../../../../../../etc/passwd: The PHP-Nuke Rocket add-in is vulnerable to file traversal, allowing an attacker to view any file on the host. (probably Rocket, but could be any index.php).      
^[[B^[[B^[[B+ /phpinfo.php: Output from the phpinfo() function was found.                                                                                                                                                                  
+ /?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000: PHP reveals potentially sensitive information via certain HTTP requests that contain specific QUERY strings. See: OSVDB-12184                                                                
+ /data/: Directory indexing found.                                                                                                                                                                                                        
+ /data/: This might be interesting.                                                                                                                                                                                                       
+ /includes/: Directory indexing found.
+ /includes/: This might be interesting.
+ /passwords/: Directory indexing found.
+ /passwords/: This might be interesting.
+ /phpmyadmin/changelog.php: phpMyAdmin is for managing MySQL databases, and should be protected or limited to authorized hosts.
+ /phpmyadmin/ChangeLog: phpMyAdmin is for managing MySQL databases, and should be protected or limited to authorized hosts.
+ /test/: Directory indexing found.
+ /test/: This might be interesting.
+ /phpinfo.php: PHP is installed, and a test script which runs phpinfo() was found. This gives a lot of system information. See: CWE-552
+ /index.php: PHP is installed, and a test script which runs phpinfo() was found. This gives a lot of system information. See: CWE-552
+ /images/: Directory indexing found.
+ /styles/: Directory indexing found.

: '
Identify any outdated software, configuration issues, or potential vulnerabilities reported by Nikto.
ii. Configuration Issues:
Issue: Server Information Disclosure
Details: The server is exposing its version and configuration details.
Recommendation: Configure the server to hide version information to reduce information leakage to potential attackers.
Issue: Missing Security Headers
Details: HTTP security headers like Content-Security-Policy and X-Content-Type-Options are missing.
Recommendation: Implement necessary security headers to enhance security and prevent various types of attacks.
- Summarize the findings, including any critical vulnerabilities that should be addressed immediately.
iii. Potential Vulnerabilities:
Issue: Directory Traversal
Details: Potential for directory traversal vulnerabilities in specific paths.
Recommendation: Review and secure file paths and directories to prevent unauthorized access.
Issue: Default Files
Details: Presence of default or sample files that may expose sensitive information.
Recommendation: Remove or secure default files to prevent unauthorized access and information disclosure.
Critical Vulnerabilities:
Outdated Software: Apache version 2.4.54 is outdated and should be updated immediately to mitigate known vulnerabilities.
Server Information Disclosure: This can help attackers find weaknesses; therefore, it is crucial to configure the server to obscure such details and enhance overall security.
'