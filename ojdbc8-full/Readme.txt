======================================================
Oracle Free Use Terms and Conditions (FUTC) License 
======================================================
https://www.oracle.com/downloads/licenses/oracle-free-license.html
===================================================================

ojdbc8-full.tar.gz - JDBC Thin Driver and Companion JARS
========================================================
This TAR archive (ojdbc8-full.tar.gz) contains the 19.25.0.0 release of the Oracle JDBC Thin driver(ojdbc8.jar), the Universal Connection Pool (ucp.jar) and other companion JARs grouped by category. 

(1) ojdbc8.jar (4535290 bytes) - 
(SHA1 Checksum: d82419ba52c6064a40e211cce991e6e778249912)
Oracle JDBC Driver compatible with JDK8, JDK9, and JDK11;
(2) ucp.jar (1701061 bytes) - (SHA1 Checksum: be3fd1228e394457e080fecc4c2e31b882652773)
Universal Connection Pool classes for use with JDK8, JDK9, and JDK11 -- for performance, scalability, high availability, sharded and multitenant databases.
(3) ojdbc.policy (12134 bytes) - Sample security policy file for Oracle Database JDBC drivers

======================
Security Related JARs
======================
Java applications require some additional jars to use Oracle Wallets. 
You need to use all the three jars while using Oracle Wallets. 

(4) oraclepki.jar (309753 bytes ) - (SHA1 Checksum: 78056d3eacf6b9d37204ab208ad7d9400e18d640
Additional jar required to access Oracle Wallets from Java
(5) osdt_cert.jar (210568 bytes) - (SHA1 Checksum: 471b100b382757d4093033363edb026e70f286b8)
Additional jar required to access Oracle Wallets from Java
(6) osdt_core.jar (312563 bytes) - (SHA1 Checksum: 2b96038ae6d9b06792c9936cd05a4cc9bd6070c7)
Additional jar required to access Oracle Wallets from Java

=============================
JARs for NLS and XDK support 
=============================
(7) orai18n.jar (1664184 bytes) - (SHA1 Checksum: 65b0280f7e5a94ecf9557265f71642bcdeaac96f) 
Classes for NLS support
(8) xdb.jar (129355 bytes) - (SHA1 Checksum: a71126d804266bfa658a841c6bc897408e1504de)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 
(9) xmlparserv2.jar (1935806 bytes) - (SHA1 Checksum: 67c289c777f87491f24f23e0ad2ba417d21eda80)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 
(10) xmlparserv2_sans_jaxp_services.jar (1933273 bytes) - (SHA1 Checksum: ae2bc8e6976eaa0edce2a15ff65b3d6a43286c0e) 
Classes to support standard JDBC 4.x java.sql.SQLXML interface

====================================================
JARs for Real Application Clusters(RAC), ADG, or DG 
====================================================
(11) ons.jar (156646 bytes ) - (SHA1 Checksum: 3554dcf30d2ab4facdf73f455fae6f2acebde90a)
for use by the pure Java client-side Oracle Notification Services (ONS) daemon
(12) simplefan.jar (32396 bytes) - (SHA1 Checksum: 249c5dd927cbafcbe76871963d76bda45eb283d6)
Java APIs for subscribing to RAC events via ONS; simplefan policy and javadoc

==================================================================================
NOTE: The diagnosability JARs **SHOULD NOT** be used in the production environment. 
These JARs (ojdbc8_g.jar,ojdbc8dms.jar, ojdbc8dms_g.jar) are meant to be used in the 
development, testing, or pre-production environment to diagnose any JDBC related issues. 

=====================================
OJDBC - Diagnosability Related JARs
===================================== 

(13) ojdbc8_g.jar (7599874 bytes) - (SHA1 Checksum: 8a95e0b2eec0e397f782975d4e2346c3392b11c0)
Same as ojdbc8.jar except compiled with "javac -g" and contains tracing code.

(14) ojdbc8dms.jar (6317836 bytes) - (SHA1 Checksum: 5e01f8ccf49908ab7eba5508da9d80fc66fc4781)
Same as ojdbc8.jar, except that it contains instrumentation to support DMS and limited java.util.logging calls.

(15) ojdbc8dms_g.jar (7629695 bytes) - (SHA1 Checksum: 4b652e723d5e829296dc1baecaa2f6f3825cb771)
Same as ojdbc8_g.jar except that it contains instrumentation to support DMS.

(16) dms.jar (2194533 bytes) - (SHA1 Checksum: 630235f20bb2ffd6c0d9c8fa09d07554566f05b0)
dms.jar required for DMS-enabled JAR files.

==================================================================
Oracle JDBC and UCP - Javadoc and README
==================================================================

(17) JDBC-Javadoc-19c.jar (1763595 bytes) - JDBC API Reference 19c

(18) ucp-Javadoc-19c.jar (366890 bytes) - UCP Java API Reference 19c

(19) simplefan-Javadoc-19c.jar (84174 bytes) - Simplefan API Reference 19c 

(20) xdb-Javadoc-19c.jar (2861664 bytes) - XDB API Reference 19c 

(21) xmlparserv2-Javadoc-19c.jar (2861664 bytes) - xmlparserv2 API Reference 19c 

(22) Jdbc-Readme.txt: It contains general information about the JDBC driver and bugs that have been fixed in the 19.25.0.0 release. 

(23) UCP-Readme.txt: It contains general information about UCP and bugs that are fixed in the 19.25.0.0 release. 


=================
USAGE GUIDELINES
=================
Refer to the JDBC Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/19/jjdbc/index.html) and Universal Connection Pool Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/19/jjucp/index.html) for more details. 
