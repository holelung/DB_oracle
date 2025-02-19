======================================================
Oracle Free Use Terms and Conditions (FUTC) License 
======================================================
https://www.oracle.com/downloads/licenses/oracle-free-license.html
===================================================================

ojdbc10-full.tar.gz - JDBC Thin Driver and Companion JARS
========================================================
This TAR archive (ojdbc10-full.tar.gz) contains the 19.18.0.0 release of the Oracle JDBC Thin driver(ojdbc10.jar), the Universal Connection Pool (ucp.jar) and other companion JARs grouped by category. 

(1) ojdbc10.jar (4521359 bytes) - 
(SHA1 Checksum: e24ddbfea49e3a86bf6be69962d774741a976247)
Oracle JDBC Driver compatible with JDK8, JDK9, and JDK11;
(2) ucp.jar (1692662 bytes) - (SHA1 Checksum: 67f07992cb899e15acbb036316db57b040a743c3)
Universal Connection Pool classes for use with JDK8, JDK9, and JDK11 -- for performance, scalability, high availability, sharded and multitenant databases.
(3) ojdbc.policy (11762 bytes) - Sample security policy file for Oracle Database JDBC drivers

======================
Security Related JARs
======================
Java applications require some additional jars to use Oracle Wallets. 
You need to use all the three jars while using Oracle Wallets. 

(4) oraclepki.jar (308277 bytes ) - (SHA1 Checksum: 4af2dfbd3d9955088204a0822bede4a300c65415
Additional jar required to access Oracle Wallets from Java
(5) osdt_cert.jar (210560 bytes) - (SHA1 Checksum: 9c0f83745d2e8299e600978b5c0a9c275c9f0630)
Additional jar required to access Oracle Wallets from Java
(6) osdt_core.jar (312515 bytes) - (SHA1 Checksum: b330b3b9a5aa62e8870c7ddd4b3f356452cc2017)
Additional jar required to access Oracle Wallets from Java

=============================
JARs for NLS and XDK support 
=============================
(7) orai18n.jar (1664182 bytes) - (SHA1 Checksum: 47cf95607afdcae43d920760a26f61229518c0d1) 
Classes for NLS support
(8) xdb.jar (129355 bytes) - (SHA1 Checksum: 60109d554b5c251eaaa7dc12f841f11ae98275cb)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 
(9) xmlparserv2.jar (1935724 bytes) - (SHA1 Checksum: 14fb4f2cc67b39cd06605f8d479ab20e7038e1b0)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 
(10) xmlparserv2_sans_jaxp_services.jar (1933191 bytes) - (SHA1 Checksum: 16431a4bcbab7ffdf77847d3a5b37e0caf430dda) 
Classes to support standard JDBC 4.x java.sql.SQLXML interface

====================================================
JARs for Real Application Clusters(RAC), ADG, or DG 
====================================================
(11) ons.jar (156474 bytes ) - (SHA1 Checksum: e92a33b3ca9f28ff0ed189f7cdb0ce7beb0cd653)
for use by the pure Java client-side Oracle Notification Services (ONS) daemon
(12) simplefan.jar (32396 bytes) - (SHA1 Checksum: e907b33d2fd39e2dde23f590e5035b334deb1063)
Java APIs for subscribing to RAC events via ONS; simplefan policy and javadoc

==================================================================================
NOTE: The diagnosability JARs **SHOULD NOT** be used in the production environment. 
These JARs (ojdbc10_g.jar,ojdbc10dms.jar, ojdbc10dms_g.jar) are meant to be used in the 
development, testing, or pre-production environment to diagnose any JDBC related issues. 

=====================================
OJDBC - Diagnosability Related JARs
===================================== 

(13) ojdbc10_g.jar (7581118 bytes) - (SHA1 Checksum: 6747620e30c9f988501c0a976cd3d6f901ae251e)
Same as ojdbc10.jar except compiled with "javac -g" and contains tracing code.

(14) ojdbc10dms.jar (6298704 bytes) - (SHA1 Checksum: 37a04930c2b47fa3bff33eeeae2dedfc51031842)
Same as ojdbc10.jar, except that it contains instrumentation to support DMS and limited java.util.logging calls.

(15) ojdbc10dms_g.jar (7610887 bytes) - (SHA1 Checksum: 490729439dbab32e8f27d8090eeaa15c31d33abe)
Same as ojdbc10_g.jar except that it contains instrumentation to support DMS.

(16) dms.jar (2194533 bytes) - (SHA1 Checksum: cb20f6da4888d906ae44013dbec2cec0880d9941)
dms.jar required for DMS-enabled JAR files.

==================================================================
Oracle JDBC and UCP - Javadoc and README
==================================================================

(17) JDBC-Javadoc-19c.jar (2263119 bytes) - JDBC API Reference 19c

(18) ucp-Javadoc-19c.jar (367115 bytes) - UCP Java API Reference 19c

(19) simplefan-Javadoc-19c.jar (88476 bytes) - Simplefan API Reference 19c 

(20) xdb-Javadoc-19c.jar (2861664 bytes) - XDB API Reference 19c 

(21) xmlparserv2-Javadoc-19c.jar (2861664 bytes) - xmlparserv2 API Reference 19c 

(22) Jdbc-Readme.txt: It contains general information about the JDBC driver and bugs that have been fixed in the 19.18.0.0 release. 

(23) UCP-Readme.txt: It contains general information about UCP and bugs that are fixed in the 19.18.0.0 release. 


=================
USAGE GUIDELINES
=================
Refer to the JDBC Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/19/jjdbc/index.html) and Universal Connection Pool Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/19/jjucp/index.html) for more details.
