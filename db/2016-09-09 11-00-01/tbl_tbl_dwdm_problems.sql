/*
SQLyog Job Agent Version 8.18 Copyright(c) Webyog Softworks Pvt. Ltd. All Rights Reserved.


MySQL - 5.5.5-10.1.10-MariaDB : Database - dwdm_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dwdm_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dwdm_db`;

/*Table structure for table `tbl_dwdm_problems` */

DROP TABLE IF EXISTS `tbl_dwdm_problems`;

CREATE TABLE `tbl_dwdm_problems` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cate_id` int(5) NOT NULL,
  `problem_status` enum('P','S') NOT NULL DEFAULT 'P',
  `problem_date_start` datetime NOT NULL,
  `problem_topic` text NOT NULL,
  `problem_owner` varchar(125) NOT NULL,
  `problem_by` varchar(125) DEFAULT NULL,
  `problem_solution` text,
  `problem_date_finish` datetime DEFAULT NULL,
  `problem_remark` text,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`problem_status`),
  KEY `NewIndex2` (`cate_id`),
  CONSTRAINT `FK_tbl_dwdm_problems` FOREIGN KEY (`cate_id`) REFERENCES `tbl_dwdm_category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_dwdm_problems` */

insert  into `tbl_dwdm_problems`(`id`,`cate_id`,`problem_status`,`problem_date_start`,`problem_topic`,`problem_owner`,`problem_by`,`problem_solution`,`problem_date_finish`,`problem_remark`,`update_time`,`update_by`) values (1,2,'S','2014-05-20 10:00:00','บ.นำเครื่อง B2 ไปทดสอบติดตั้งโปรแกรม HP Data Protector Version 8.0 เพื่อ Backup ข้อมูลแทนเครื่อง Backup เดิมที่ติดตั้ง Version 6 เพื่อให้สามารถ Backup OS ได้','นายปิยะพงษ์ แก้วน่าน','IRCP','เพิ่ม \r\n- MEMSORT = 8G\r\n\r\nดำเนินการเสร็จแล้วโดยการ Upgrade เป็น HP Data Protector Version 8.0','2015-06-12 08:40:00',NULL,'2015-06-12 09:00:17','นายปิยะพงษ์ แก้วน่าน'),(2,2,'S','2014-06-02 11:37:00','เครื่อง Server CATDEV2 ไม่สามารถ Build Cube ได้','นายณัฐวัฒน์ แสงสีทอง','บ.IRCP','เนื่องจากค่า Config ที่ Path /app/sas/config/Lev1/SASBI/OLAPServer/sasv9.cfg ที่เครื่อง CATDEV2 (OLAP Server) ได้ชี้ Service ไม่ถูกต้อง แก้ไขค่า \"SASMiner - OLAP Server\" -> \"SASBI - OLAP Server\"','2014-06-09 20:00:00',NULL,'2014-09-24 11:50:27','Administrator'),(3,2,'S','2014-06-03 11:39:00','แจ้ง บ.ติดตั้ง Flow Manager Server ที่เครื่อง CATDE1,CATDEV2','น.ส.ภัทริกา แก้วใจ','คุณคมสันฯ (IRCP)','ติดตั้ง Flow Manager Server ','2014-06-23 11:51:00',NULL,'2014-09-24 11:50:33','Administrator'),(4,2,'S','2014-06-13 11:41:00','บ. แจ้งเข้ามาเพื่อตั้งค่า Mail Alert ใน Flows ของ 3 โมดูล (CM,NUA,HKR)','นายปิยะพงษ์ฯ','คุณฟอร์ด IRCP + คุณคมสันฯ (Innobiz)','แก้ไขค่า Config ของ Service Sendmail','2014-06-13 11:41:00',NULL,'2015-11-04 15:43:57','นายปิยะพงษ์ แก้วน่าน'),(5,1,'S','2014-06-18 08:30:00','แจ้งสลับ Path /ftproot กับ /temp ที่เครื่อง CATDEV1 เนื่องจากในเครื่อง CATDEV1 ที่ Path /ftproot (100GB) มีเนื้อที่ใช้งานเหลือไม่มาก ','นายปิยะพงษ์ แก้วน่าน','คุณธัชพลฯ IRCP','ทำการสลับ Path ftproot กับ /temp ที่เครื่อง CATDEV1 ','2014-07-01 08:30:00',NULL,'2014-09-23 16:19:11','Administrator'),(6,2,'S','2014-06-30 08:30:00','บ.แจ้ง Stop SAS Service เพื่อทำการ Update SAS License','คุณคมสันฯ (Innobiz)','คุณคมสันฯ (Innobiz)',' - Stop Process & Service ต่างๆ ของ SAS เพื่อทำการ update license SAS & Process manager ที่เครื่อง\r\n10.32.13.21     cateai1                        \r\n10.32.13.16     catebi1                        \r\n10.32.13.26     catedi1                        \r\n10.32.13.52     catspm             \r\n10.32.13.46     catspm1                         \r\n10.32.13.24     catdev1                       \r\n10.32.13.25     catdev2                       \r\n10.32.13.48     catbsc              \r\n10.32.13.45     catbsc1                        \r\n10.32.13.11     catspds1','2014-07-01 08:30:00',NULL,'2014-09-24 11:50:34','Administrator'),(7,2,'S','2014-07-01 08:30:00','ไม่สามารถใช้งานโปรแกรม Flow Manager เชื่อมต่อไปที่เครื่อง CATEDI1 ได้ เกิดจากการที่ process ของ process manager ยังคงตกค้างแม้จะใช้ script jadmin stop ทำให้ เมื่อ start ขึ้นมาอีกครั้งจะเกิด fail  port ชนกัน\r\nError : Error Communicating with Daemon: Invalid response - Unable to connect to Process Manager <catedi1:1966>.','นายปิยะพงษ์ แก้วน่าน','คุณคมสันฯ (Innobiz)','วิธีแก้ไข :\r\nทำการ kill process jfd ทิ้ง แล้ว start service ใหม่','2014-07-01 10:40:00',NULL,'2014-09-24 11:50:36','Administrator'),(8,2,'S','2014-07-23 10:00:00','ไม่สามารถเชื่อมต่อ Server ได้\r\nเนื่องจากในเวลา 11.00 น. ของวันนี้ ทางทีม Network ของ CAT (พี่พรเทพ)\r\nได้เริ่มเปิดใช้งาน firewall เพื่อ กำหนด Policy การเข้าถึง Server DW/DM โดยได้ทำการ Allow Port ในการเข้าใช้งาน Server \r\nซึ่งยังขาด Port 1966 (Flow Manager) , 8591 (Connect Server) ทำให้ไม่สามารถเชื่อมต่อ Server ได้\r\nThe application could not log on to the server \"catedi1:8591\". No server is available at that port on that machine.\r\nConnection timed out: connect','นายณัฐวัฒน์ แสงสีทอง','นายพรเทพฯ นธ.','แจ้ง Port ต้องใช้งานเพิ่มเติมกับทาง นธ.','2014-07-23 14:30:00',NULL,'2014-09-24 11:50:37','Administrator'),(9,2,'S','2014-07-28 11:40:00','Jobs ไม่สามารถส่งเมล์ได้หลังจากทำงานเสร็จ เกิดจากการ Config ค่า Mail ไม่ถูกต้อง\r\nERROR: Email: The connection has timed out.','นายณัฐวัฒน์ แสงสีทอง','คุณธัชพลฯ IRCP','แก้ไขค่า Config ที่ Server CATEDI1,CATEBI1 แล้ว Restart Service Mail','2014-08-19 07:00:00',NULL,'2014-09-24 11:50:39','Administrator'),(10,2,'S','2014-07-30 09:20:00','ERROR: Sort Execution Failure เมื่อรันจ๊อบที่ SAS DI หรือ Process Manager ที่เครื่อง Production (เครื่อง Dev ไม่มีปัญหา)  เจอปัญหาเกิด Node ที่มีการ Sort','นายณัฐวัฒน์ แสงสีทอง','คุณคมสันฯ (inobiz)','วิธีแก้ไข :\r\nเพิ่ม parameter ที่  /app/sas/config/Lev1/SASDI/WorkspaceServer/sasv9.cfg ดังนี้\r\n-MEMSIZE 8G\r\n-SORTSIZE 4G\r\nrestart services ทั้งหมดของเครื่อง catedi1\r\n\r\n - แจ้ง บ. 30 ก.ค. 57 เวลา 14.13 น.\r\nอธิบายเพิ่มเติม\r\nในแต่ละ component (BatchServer, OLAPServer, WorkspaceServer) ที่อยู่ภายใต้พาธ/app/sas/config/Lev1/SASDI/  จะมี config ของใครของมัน\r\nเช่น /app/sas/config/Lev1/SASDI/BatchServer/sasv9.cfg\r\nถ้ามีการใส่ Optionเพิ่มจะเป็นการเขียนทับ(Override) Config File ตัวหลักซึ่งอยู่ที่ /app/sas/software/SASFoundation/9.2/sasv9.cfg ซึ่งเซตค่า MEMSIZE=8G และ SORTSIZE=2G\r\nการรันด้วย SASDI จะใช้  /WorkspaceServer/sasv9.cfg\r\nการรันด้วย Process Manager จะใช้  /BatchServer/sasv9.cfg\r\nการที่เซต parameter ที่ Workspace จะ Override ตัว Batchserver ด้วย จึงทำให้รันจ๊อบจากทั้ง 2 program ไม่ Error','2014-08-07 16:20:00',NULL,'2014-09-24 11:50:46','Administrator'),(11,1,'S','2014-08-07 15:40:00','Cache Board ที่เครื่อง Storage P12000 พัง 1 ตัว\r\nบ. แจ้งว่าอยู่ในช่วงการต่อ MA จะทำให้ HP อาจคิดค่าปรับย้อนหลังได้','คุณธัชพลฯ IRCP','คุณธัชพลฯ IRCP','แจ้ง HP Thailand เปลี่ยนอุปรณ์','2014-08-28 09:30:00',NULL,'2014-09-23 16:19:12','Administrator'),(12,1,'S','2014-08-21 10:00:00','ไม่สามารถเชื่อมต่อ Server เครื่อง CATEDI1 ได้ (10.00 น.) RAM พัง','นายปิยะพงษ์ แก้วน่าน','คุณธัชพลฯ IRCP','แจ้ง HP Thailand เปลี่ยนอุปรณ์','2014-08-28 09:30:00',NULL,'2014-09-23 16:19:12','Administrator'),(13,1,'S','2014-09-08 10:00:00','เครื่อง Server Superdome มีไฟล์เตือนขึ้น คุณฟอร์ดฯแจ้ง HP เพื่อเข้ามาตรวจสอบในวันที่ 9 ก.ย. 57 เวลา 10.00 น. ','คุณธัชพลฯ IRCP','HP Thailand,IRCP','เปลี่ยน RAM เครื่อง CATEAI1 โดย HP Thailand','2014-09-09 13:00:00',NULL,'2014-09-23 16:19:13','นายปิยะพงษ์ แก้วน่าน'),(14,2,'S','2014-09-30 11:00:00','/work ใน CATDEV2 เต็ม ทำให้ service down','นายธรรมรัฐฯ','บ.Innobiz (คมสันฯ)','ทำการ Clear /work แล้ว Restart Service ใหม่','2014-09-30 14:30:00',NULL,'2014-10-02 15:24:34','นายปิยะพงษ์ แก้วน่าน'),(15,2,'S','2014-09-23 16:00:00','[SAS 7611320608]\r\n1.SAS LOGS\r\n      1.1	 ทาง CAT ต้องการทราบจำนวนผู้เข้าใช้งานระบบทั้งผ่าน Web และ Apps ต่างๆ ว่าในแต่ละเดือนมีสถิติการใช้งานมากน้อยเพียงใด? \r\nสามารถเรียกดูสถิติเหล่านี้ได้จากที่ไหน?\r\n      1.2	 การเปิดใช้งาน Audit Logs ของโปรแกรม SAS เพื่อเก็บ Logs มีวิธีการอย่างไร? และเมื่อเปิดแล้ว Logs ที่ต้องการดูตามข้อ (1) นั้น\r\nข้อมูล Logs อยู่ที่ไหน?  และมีผลต่อประสิทธิภาพการทำงานของเครื่องมากน้อยเพียงใด?\r\n\r\n2.	Graph ของ SAS บน Web report\r\n      2.1	 ปัญหา Graph บน Web Report แสดงข้อความบนกราฟ (Label) ซ้อนทับกันสามารถแก้ไขไม่ซ้อนกันได้หรือไม่? อย่างไร?\r\n      2.2	 กราฟสีไม่สวย ปรับเปลี่ยนสีได้มั้ย?\r\n','นายปิยะพงษ์ แก้วน่าน','SAS Thailand (K\'Nareerat)','1. SAS Logs\r\n     1.1 ทาง SAS แจ้งว่า Logs ให้ดูในส่วนของ Metadata Logs  แต่ว่า log ที่เกิดมีจำนวนมากทำให้นำมาวิเคราะห์ยาก โดยไม่แนะนำให้เป็น Audit Log เพราะจะทำให้ประสิทธิภาพการทำงานของเครื่อง Server ช้าลง\r\n             On Windows: Lev1\\SASMeta\\MetadataServer\\Logs\r\n             UNIX or z/OS: Lev1/SASMeta/MetadataServer/Logs\r\n \r\nNote: You can see more detail in the following.\r\nhttp://support.sas.com/documentation/cdl/en/bisag/64088/HTML/default/viewer.htm#a003318754.htm\r\nhttp://support.sas.com/documentation/cdl/en/bisag/64088/HTML/default/viewer.htm#a003228608.htm\r\n \r\n \r\n2.      Graph of SAS Web report\r\n \r\n2.1   About the labels of graph are overlaping in SAS Web Report, could you please capture and send me the picture of issue ka.\r\n \r\n2.2   You can customize the Report Styles for SAS Web Report Studio. For the graph report, please see it in this link http://support.sas.com/documentation/cdl/en/biwaag/63149/HTML/default/viewer.htm#a003103966.htm\r\n\r\nทาง CAT (คุณณัฐวัฒน์ฯ) ได้ทำการแก้ไข Graph ตามที่ SAS แนะนำมาโดยค่ายังทับกันอยู่แต่น้อยลงกว่าเดิม\r\n','2014-10-10 12:50:00',NULL,'2014-10-27 13:30:28','นายปิยะพงษ์ แก้วน่าน'),(16,2,'S','2014-10-07 10:00:00','[SAS 7611332485]\r\nไม่สารถเข้าใช้งาน BI Report + Web Report Studio ได้ เนื่องจาก\r\n1. ปัญหา java.net.SocketException: No buffer space avaliable (maximum connection reached) ใน SAS Web Report (weblogic app server)\r\n2. พบปัญหา tcp time wait มีจำนวนมาก ถึง 22928 connection ในจำนวนนี้มี port ของ Sas Webreport รวมอยู่ด้วย\r\n','นายปิยะพงษ์ แก้วน่าน','คุณสมสันฯ + SAS Thailand (K\'Nareerat)+คุณคุณธัชพลฯ IRCP','ทำการ Re-Start Server CATBSC1 ทำให้ Service ต่างๆกลับมาใช้งานตามปกติ\r\n\r\nสมมุติฐาน :  time wait มีจำนวนมากเกินไปจน tcp connection ไม่สามารถสร้างขึ้นมาใหม่ได้\r\nทางแก้ : ต้องให้ทำ time wait หายไปก่อน เพื่อให้สามารถสร้าง connection ขึ้นมาใหม่ได้\r\n\r\nทาง SAS Thailand ได้แจ้งผลการตรวจสอบมาว่า จาก Log ของ SAS เองไม่ได้มีอะไรผิดปกติ แต่พบ Log ที่อาจเกิดจาก OS ของเครื่อง CATBSC1 ที่เป็น Windows 2008 R2 เอง \r\nทาง SAS แนะนำให้ทำการ Update Patch เพื่อแก้ปัญหาดังกล่าว\r\nตาม url : http://support.microsoft.com/kb/2577795\r\n\r\nการ Update Patch ดำเนินการโดย บ. IRCP คุณธัชพลฯ (ฟอร์ดฯ) แจ้งเมื่อวันที่ 27/10/57 เวลา 11.00น.','2014-10-08 15:12:00',NULL,'2014-10-27 13:33:31','นายปิยะพงษ์ แก้วน่าน'),(17,2,'S','2014-10-08 10:00:00','ไม่สามารถเลือก Batch Server ในการ Deploy Job ในเครื่อง CATDEV1 , CATDEV2 ได้','นายปิยะพงษ์ แก้วน่าน','บ.Innobiz (คุณคมสันฯ)','บ.ได้เพิ่ม Batch Server SASDI,SASBI ที่เครื่อง CATDEV1,CATDEV2 โดยการเพิ่มที่ SAS SMC ที่เครื่อง DEV','2014-10-08 15:23:00',NULL,'2014-10-09 14:39:37','นายปิยะพงษ์ แก้วน่าน'),(18,2,'S','2014-10-13 10:00:00','ไม่มี Deployment Directory ของ SASBI ในเครื่อง Dev','น.ส.ภัทริกา แก้วใจ','คุณคมสันฯ (Innobiz)','1. แก้ไปปัญหาแล้ว ด้วยการ config default path ของการ Deployment โดยวิธีการ config ดูได้จาก หัวข้อ \"Define a Deployment Directory\" ตาม link ด้านล่าง\r\nhttp://support.sas.com/documentation/cdl/en/scheduleug/61559/HTML/default/viewer.htm#p1nzohoe0nkyqfn17uori4m82dwl.htm\r\n2.เมื่อ config เสร็จแล้วทดสอบด้วยการ Deploy Cube ที่เครือง catdev2 (SAS BI) ผลปรากฏว่า success \r\n','2014-10-15 11:00:00',NULL,'2014-10-17 09:58:15','นายปิยะพงษ์ แก้วน่าน'),(19,2,'S','2014-10-15 15:32:00','[SAS 7611337907] \r\nไม่สามารถ Print รายงาน HKR  “HRM_007” ที่มีจำนวน Measure เยอะได้\r\nได้แจ้งปัญหาดังกล่าวไปทาง SAS Support Thailand ','คุณพรรณี ชมสมุท','SAS Thailand (K\'Nootchanart)','Please check measure that you move. If it include trailing spaces you might not be able to print the report in SAS Web Report Studio.\r\nPlease see the the following link ka.\r\nhttp://support.sas.com/kb/46/603.html\r\n\r\nCould you please capture the full Error Messages and send me it ka?\r\nThank you very much.\r\n\r\nทำการตรวจสอบพบว่ารายงานที่ไม่สามารถพิมพ์รายงานได้นั้น โดยชื่อของ Information map มีช่องว่าง (trailing  Space) ตามที่ SAS แนะนำมา และได้ทำการเปลี่ยนชื่อของ Information map ดังกล่าว สามารถใช้พิมพ์งานได้แล้ว','2014-10-15 16:30:00',NULL,'2014-10-27 13:36:46','นายปิยะพงษ์ แก้วน่าน'),(20,2,'S','2014-10-20 09:47:00','ปัญหา SAS Microsoft Add-in\r\n\r\nพบปัญหาในการลงโปรแกรม SAS Microsoft  Add-in ver. 4.3 ให้กับ user คือ\r\n\r\n1.  เมื่อลงโปรแกรมแล้วไม่มี SAS Ribbon ขึ้น\r\n2.  มี SAS Ribbon ขึ้น สามารถใช้งานได้ แต่พอผ่านไปสักพัก มี error ขึ้น และ SAS Ribbon หายไป\r\nสอบถามเบื้องต้นไปยัง user ที่พบ error  ใช้ระบบปฎิบัติการ Windows7 64bit , Microsoft Office 2007 และ 2010\r\n','น.ส.ภัทริกา แก้วใจ','SAS Support','The error might occur because of a corrupt AMOOptions.xml file. In that case, renaming the AMOOptions.xml file should correct the problem.\r\n\r\n1. Close Microsoft Office.\r\n2. Browse to the following location depending on your operating system and rename the AMOOptions.xml file to AMOOptions_old.xml.\r\n\r\nWindows XP path to AMOOptions.xml: \r\nC:\\Documents and Settings\\\\Application Data\\SAS\\Add-InForMicrosoftOffice\\4.3\r\n\r\nWindows 7 path to AMOOptions.xml: \r\nC:\\Users\\\\AppData\\Roaming\\SAS\\Add-InForMicrosoftOffice\\4.3\r\n\r\nNote: The paths shown above use the default Windows profile path for the respective operating system. Your Windows profile path might be different. If your profile path is other than the default, open My Computer and enter %appdata% in the address bar to determine what your Windows profile path is. ','2014-10-20 09:47:00',NULL,'2014-10-30 14:00:14','น.ส.ภัทริกา แก้วใจ'),(21,2,'S','2014-10-30 10:30:00','ไม่สามารถเปิด Table ใน SAS DI ได้\r\nไม่สามารถเข้าใช้งาน ftp > edi,ebi ได้ (error เกี่ยวกับ LDAP Password)\r\nแต่ยังสามารถเปิดรายงานได้\r\n\r\nตรวจสอบ Service ของ LDAP Server ที่เครื่อง CATSPDS1 แล้วยังทำงานอยู่','นายปิยะพงษ์ แก้วน่าน','คุณคมสันฯ (Innobiz) + คุณฟอร์ดฯ (IRCP)','Re-Start LDAP Server ที่เครื่อง CATSPDS1','2014-10-30 17:40:00',NULL,'2014-10-31 13:26:43','นายปิยะพงษ์ แก้วน่าน'),(22,2,'S','2014-11-21 08:30:00','ไม่สามารถเปิด Table ใน SAS DI ได้ ไม่สามารถเข้าใช้งาน ftp > edi,ebi ได้ (error เกี่ยวกับ LDAP Password) แต่ยังสามารถเปิดรายงานได้ ตรวจสอบ Service ของ LDAP Server ที่เครื่อง CATSPDS1 แล้วยังทำงานอยู่','นายปิยะพงษ์ แก้วน่าน','คุณธัชพลฯ (ฟอร์ด IRCP)','restart Service LDAP  ที่เครื่อง CATSPDS1','2014-11-21 11:40:00',NULL,'2014-11-21 11:42:15','นายปิยะพงษ์ แก้วน่าน'),(23,2,'S','2014-11-24 14:00:00','[SAS 7611367898] พบปัญหาว่าทาง EIM ไม่สามารถ Sync  User & Group (CATSPM1) มาให้ DW/DM ได้ ทำให้ไม่สามารถเพิ่ม Group / User ใหม่ได้ โดยได้แจ้งกับทีมที่ดูแลระบบ EIM เพื่อแก้ไขปัญหาดังกล่าวแล้วเบื้องต้น แล้วพบว่าระบบฝั่ง EIM ปกติ','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ฯ + SAS Thailand','ทาง SAS แนะนำมาให้เพิ่มสิทธิ์ User > eimadmin เป็นกลุ่ม SAS Administrators โดยได้ทดสอบแล้วสามารถใช้งานได้ปกติแล้ว','2014-11-28 14:30:00',NULL,'2014-12-01 11:25:57','นายปิยะพงษ์ แก้วน่าน'),(24,2,'S','2015-01-06 13:29:00','ไม่สามารถเปืดรายงานที่เครื่อง Production ช่วงเวลา 10.00 น. ได้ แจ้ง บ. เวลา 13.20 น.\r\nError : Missing report element      \r\n    An error occurred in processing the report element. Refresh the page to try again. Contact your administrator if this problem persists. \r\n \r\n','นายปิยะพงษ์ แก้วน่าน','บ. Innobiz (คุณคมสันฯ)','สาเหตุตัว OLAP ที่เครื่อง catebi1 มีปัญหา\r\nทางแก้ restart service sas ที่เครื่อง catebi1','2015-01-06 16:50:00',NULL,'2015-01-07 09:02:59','นายปิยะพงษ์ แก้วน่าน'),(25,1,'S','2015-01-16 15:15:00','ตู้ Tape Library เสีย','นายปิยะพงษ์ แก้วน่าน','HP Thailand + คุณฟอร์ด','เปลี่ยนอุปกรณ์ตู้ Tape Library ','2015-01-19 15:15:00',NULL,'2015-01-19 15:17:46','นายปิยะพงษ์ แก้วน่าน'),(26,2,'S','2015-01-23 15:00:00','[SAS 7611406870] มีปัญหาเรื่องการดูรายงาน คือ สามารถ Login เข้าไปใช้งาน Webportal ได้แต่ไม่พบรายงาน ได้แจ้ง SAS Support Thailand เวลา 22.30 น.\r\n\r\nปัญหาเกืดจาก EIM ทำการ Reset User & Group ใน SAS Metadata ทำให้สิทธิ์ต่างๆหลุด ต้องทำการผูกสิทธิ์แบบ Manual ใหม่','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','กำหนดสิทธิ์ใน SAS Metadata แบบ Manual แล้วทำการ Backup Metadata ล่าสุดไว้','2015-02-06 10:11:00',NULL,'2015-02-26 10:03:10','นายปิยะพงษ์ แก้วน่าน'),(27,1,'S','2015-01-27 12:49:00','RAM เครื่อง Super Dome เสีย แจ้ง HP เข้ามาดำเนินการเปลี่ยน','นายปิยะพงษ์ แก้วน่าน','HP Thailand','ดำเนินการเปลี่ยน RAM แล้ว ยังขาดที่ต้องเปลี่ยนอีก 32 GB เปลี่ยนครั้งต่อไป','2015-01-27 15:20:00',NULL,'2015-02-04 15:24:22','นายปิยะพงษ์ แก้วน่าน'),(28,2,'S','2015-02-02 11:47:00','ไม่สามารถ FTP ที่เครื่อง CATBSC1 ได้ แจ้่งคุณฟอร์ดเวลา 11.30 น.','นายปิยะพงษ์ แก้วน่าน','คุณฟอร์ด (IRCP)','ดำเนินการเเก้ไขโดยทำการ Restart Server FTP เนื่องจากมี service ที่ crash ','2015-02-02 12:56:00',NULL,'2015-02-02 13:36:25',''),(29,2,'S','2015-03-06 14:16:00','Jobs ไม่สามารถส่งเมล์แจ้ง User ได้\r\nERROR: Email: The connection was reset by a peer. NOTE: The SAS System stopped processing this step because of errors.','นายปิยะพงษ์ แก้วน่าน','คุณฟอร์ดฯ IRCP','คุณฟอร์ดได้ทำการ restart service mail ที่เครื่อง CATEDI1 เเละ CATEBI1 \r\n\r\n# /sbin/init.d/sendmail stop \r\nSendmail pid is 1756\r\nKilling sendm....\r\nSendmail killed.\r\n# \r\n# /sbin/init.d/sendmail start\r\nWARNING: local host name (CATEBI1) is not qualified; fix $j in config file\r\n/etc/mail/aliases: 7 aliases, longest 9 bytes, 88 bytes total\r\nsendmail\r\n# \r\n# /sbin/init.d/sendmail start\r\nsendmail has already been started\r\n','2015-03-06 14:50:00',NULL,'2015-03-13 08:59:05','นายปิยะพงษ์ แก้วน่าน'),(30,2,'S','2015-03-24 09:26:00','[SAS 7611454325] แจ้งปัญหาในการ config https ssl , Weblogic ที่เครื่อง DEV (CATBSC) ในช่วงวันที่ 21-21 มี.ค. โดยทาง CAT & บ.ฯ ที่จัดทำระบบ SSO','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ฯ','บ.แจ้งว่าระบบ DW/DM ไม่ต้องทำ https แล้ว','2015-03-24 09:40:00',NULL,'2015-08-24 13:01:56','นายปิยะพงษ์ แก้วน่าน'),(31,2,'S','2015-04-01 11:02:00','[SAS 7611461518 SAS Enterprise Miner] ไม่สามารถเข้าใช้งานได้ SAS Enterprise miner ที่เครื่อง DEV','นายปิยะพงษ์ แก้วน่าน','ปิยะพงษ์+นธ (เป้ 7201)','ตรวจสอบแล้วพบว่าเกิดจากปัญหาเกี่ยวกับ Firewall  ที่ Blocked port 6411 \r\nได้ทำการเปิด Firewall ที่ Port ดังกล่าวแล้ว สามารถใช้งานได้แล้ว','2015-04-01 13:40:00',NULL,'2015-04-01 15:47:16','นายปิยะพงษ์ แก้วน่าน'),(32,2,'S','2015-04-16 11:00:00','มีปัญหาเรื่องการดูรายงาน คือ สามารถ Login เข้าไปใช้งาน Webportal ได้แต่ไม่พบรายงาน','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','ดำเนินการนำ Backup ของวันที่ 22 มี.ค. 58 มา Restore','2015-04-16 11:00:00',NULL,'2015-04-17 10:48:04','นายปิยะพงษ์ แก้วน่าน'),(33,2,'S','2015-04-20 09:30:00','มีปัญหาเรื่องการดูรายงาน คือ สามารถ Login เข้าไปใช้งาน Webportal ได้แต่ไม่พบรายงาน','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','นำ Backup Metadata ของวันที่ 17 เม.ษ. 58 มาทำการ Restore ให้สามารถใช้งานได้','2015-04-20 11:00:00',NULL,'2015-04-21 15:18:14','นายปิยะพงษ์ แก้วน่าน'),(34,2,'S','2015-05-15 13:00:00','ไม่สามารถ Run Flow ได้ ตั้งแต่เวลา 13.00 น. ','นายปิยะพงษ์ แก้วน่าน','-','re-strart SAS Service & Process Manager Service','2015-05-18 09:05:00',NULL,'2015-11-27 11:12:58','นายปิยะพงษ์ แก้วน่าน'),(35,1,'S','2015-05-27 09:21:00','MA ระบบ DW/DM\r\n-เปลี่ยน RAM เครื่อง Superdome \r\n-ปรับปรุงระบบ Network\r\n-Backup CATSPM1 เพื่อติดตั้ง Agent HP Data Protector 8.0','นายปิยะพงษ์ แก้วน่าน','คุณฟอร์ด,HP Thailand','-','2015-05-27 16:30:00',NULL,'2015-05-29 09:23:44','นายปิยะพงษ์ แก้วน่าน'),(36,2,'S','2015-06-09 14:30:00','เปิดโปรเจ็ค Mining ที่ PROD  แล้วมันขึ้นหน้าเกี่ยวกับ license ของ โปรแกรม SAS EM ','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','จาาการตรวจสอบ พบว่า SAS Service ที่เครื่อง CATEAI1 ยังไม่ Start ได้ทำการจัดทำ Script และสั่งให้ทำงานโดยใช้คำสั่ง /app/sas/config/startcateai1.sh','2015-06-10 10:19:00',NULL,'2015-06-10 10:21:26','นายปิยะพงษ์ แก้วน่าน'),(37,2,'S','2015-06-10 10:22:00','แจ้งคุณฟอร์ดให้เพิ่ม Script Auto Start SAS Service ทุกครั้งที่มีการบูตเครื่อง CATEDI1,CATEBI1,CATEAI1','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','HP ไม่แนะนำให้ทำเพราะจะทำให้ Service บางตัวไม่ทำงาน Server จะ Start ไม่ได้','2015-12-28 10:20:00',NULL,'2016-03-09 09:49:42','นายปิยะพงษ์ แก้วน่าน'),(38,2,'S','2015-06-26 08:39:00','แจ้ง บ. เพื่อทำการ Upgrade SAS License 9.2','นายปิยะพงษ์ แก้วน่าน','คุณคมสันฯ Innobiz','ทำการ Upgrade SAS License ที่เครื่อง Windows + Unix ทั้ง Production และ Development','2015-06-29 16:30:00',NULL,'2015-06-30 09:16:39','นายปิยะพงษ์ แก้วน่าน'),(39,2,'S','2015-07-01 13:10:00','[SAS 7611533191] สอบถามเรื่องการใช้งาน MDX และการใช้งาน SAS E-Guide\r\nทาง CAT มีประเด็นสอบถามดังนี้\r\n-	ทาง  CAT ต้องการนัด SAS Thailand เข้ามา On-Site เกี่ยวกับการใช้งาน MDX โดยแนะนำว่าทาง CAT จะสามารถประยุกต์ใช้งาน MDX ในงานปัจจุบันของทาง CAT อะไรได้บ้าง\r\n-	ทาง CAT ต้องการสร้าง Project ของ SAS E-Guide โดยเก็บไว้ที่ Server แล้วต้องการให้ตั้ง Schedule เพื่อ Run ตามวันเวลาที่ต้องการได้อย่างไรบ้าง\r\n','นายปิยะพงษ์ แก้วน่าน','คุณ อิศรินฯ (SAS Thailand)','From your question, Please see my answer below krub,\r\n \r\nทาง  CAT ต้องการนัด SAS Thailand เข้ามา On-Site เกี่ยวกับการใช้งาน MDX โดยแนะนำว่าทาง CAT จะสามารถประยุกต์ใช้งาน MDX ในงานปัจจุบันของทาง CAT อะไรได้บ้าง\r\n        Please see information about MDX in attached file name \"olap_mdx_9317.pdf\" krub.\r\n \r\n        Also see in http://support.sas.com/documentation/onlinedoc/91pdf/sasdoc_913/olap_mdx_9317.pdf\r\n \r\n \r\n-          ทาง CAT ต้องการสร้าง Project ของ SAS E-Guide โดยเก็บไว้ที่ Server แล้วต้องการให้ตั้ง Schedule เพื่อ Run ตามวันเวลาที่ต้องการได้อย่างไรบ้าง\r\n \r\n        In SAS Enterprise guide we can schedule the project by using File > Schedule Project. For more advanced information. Please check following\"Hemedinger_298-2012.pdf\" Document krub.\r\n \r\nBest Regards,\r\n \r\nIsarin\r\n','2015-07-03 09:14:00',NULL,'2015-07-03 09:17:01','นายปิยะพงษ์ แก้วน่าน'),(40,2,'S','2015-10-20 09:39:00','[SAS-7611628712] แจ้งปัญหาการันงาน IDD CDR \r\nสาเหตุ : เกิดจาก /work ที่เครื่อง CATEBI1 มีขนาดไม่เพียงพอในการทำงาน โดยขนาดของ Mart CDR มีขนาดประมาณ 300GB (20 ต.ค. 58) ','นายปิยะพงษ์ แก้วน่าน','บ. IRCP+HP Thailand','แกไข : เพิ่มขนาด /work ที่เครื่อง CATEBI1 จากเดิม 500GB เป็น 1.3TB จากพื้นที่ว่างที่ยังไม่ได้ถูกใช้งาน (700GB)','2015-10-27 15:00:00',NULL,'2015-10-28 09:45:34','นายปิยะพงษ์ แก้วน่าน'),(41,2,'S','2015-11-03 10:13:00','Flow ของ IDD CDR ที่รันทุกวันช่วงตี 1 พบว่าไม่มี E-Mail ส่งมาแจ้ง พอเข้าไปตรวจสอบใน Log\r\nพบว่ามี Error\r\nThis is the mail system at host mta1.zimbra.cattelecom.com.\r\n\r\nI\'m sorry to have to inform you that your message could not\r\nbe delivered to one or more recipients. It\'s attached below.\r\n\r\nFor further assistance, please send mail to postmaster.\r\n\r\nIf you do so, please include this problem report. You can\r\ndelete your own text from the attached returned message.\r\n\r\n                   The mail system\r\n\r\n<cm_flow@CATEDI1.zimbra.cattelecom.com>: Host or domain name not found. Name\r\n    service error for name=CATEDI1.zimbra.cattelecom.com type=A: Host not found','นายปิยะพงษ์ แก้วน่าน','คุณฟอร์ด IRCP  + คุณคมสัน Innobiz','แก้ไข Config ของ Service Sendmail','2015-11-03 10:13:00',NULL,'2015-11-04 15:43:03','นายปิยะพงษ์ แก้วน่าน'),(42,2,'S','2015-11-13 14:20:00','[SAS-7611642714] สอบถามการ Disabled , Enabled Cubes ของงาน CDR','นายปิยะพงษ์ แก้วน่าน','SAS Thailand (คุณม่อน)','แก้ไขปัญหาโดยอ้างชื่อ Server ใหม่เป็นเครื่อง catdev2 ที่เครื่อง DEV\r\n\r\nPROC OLAPOPERATE;\r\n   CONNECT host=\"catdev2\" Port=5451 userid=\"nua_flow\" password=\"pwnuaflow\";	\r\n   DISABLE CUBE \"TING_CUBE\";\r\n   DISCONNECT;  \r\nQUIT;','2015-11-17 09:10:00',NULL,'2015-11-19 11:53:22','นายปิยะพงษ์ แก้วน่าน'),(43,2,'S','2016-02-15 10:00:00','เปิดรายงานและ Save รายงานไม่ได้','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','Re-Start SAS Service ที่เครื่อง catbsc1','2016-02-15 10:20:00',NULL,'2016-02-16 09:28:13','นายปิยะพงษ์ แก้วน่าน'),(44,2,'S','2016-03-15 10:00:00','ไม่สามารถเข้า Portal เครื่อง CATBSC ได้','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','ทำการ Restart เครื่อง Server CATBSC','2016-03-15 11:10:00',NULL,'2016-03-15 11:36:51','นายปิยะพงษ์ แก้วน่าน'),(45,1,'S','2016-03-28 09:51:00','Visual Memory ที่เครื่อง BSC (Dev) มีไม่เพียงพอ ทำให้เครื่องค้าง เนื่องจากค่า Default มากับ Windows กำหนดมาให้แค่ 1GB ','Administrator','คุณฟอร์ดฯ IRCP','ทำการ เพิ่ม Visual Memory เป็น 10GB +1GB (เดิม) = 11GB','2016-03-28 09:51:00',NULL,'2016-03-28 09:54:18','Administrator'),(46,1,'S','2016-04-19 10:17:00','- เครื่อง CATSPM (DEV) เสีย แจ้ง HP ตรวจสอบ พบว่า พัดลม CPU เสีย กับ Board พัง\r\n- เครื่อง CATBSC (DEV) ติดต่อไม่ได้ คาดว่าเป้นที่ Software \r\n','คุณฟอร์ด IRCP','คุณฟอร์ด IRCP + HP Thailand','replace CPU fan and replace Board','2016-04-20 14:30:00',NULL,'2016-04-21 12:37:06','นายปิยะพงษ์ แก้วน่าน'),(47,2,'S','2016-04-21 10:20:00','ไม่สามารถ Start SAS Service ที่เครื่อง CATSPM ได้ พบ Error\r\n20160325:11.11.37.09: 00000000:ERROR: IOM has terminated, context can not be created.\r\n20160325:11.11.37.10: 00000000:ERROR: woiContextInitialize failure.','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','ตรวจสอบพบว่า วันที่+เวลา ที่เครื่อง Server  ไม่ตรง ได้ทำการปรับค่าเวลาให้ตรงแล้วทำการ Restart SAS Service ได้แล้ว','2016-04-21 12:20:00',NULL,'2016-04-21 12:39:30','นายปิยะพงษ์ แก้วน่าน'),(48,2,'S','2016-05-11 09:53:00','ไม่สามารถรันงานที่มี Job ส่งเมล์ได้ \r\nERROR: Email server did not respond','นายปิยะพงษ์ แก้วน่าน','นายปิยะพงษ์ แก้วน่าน','ทำการ Restart Sendmail Service\r\n\r\n/sbin/init.d/sendmail stop\r\n/sbin/init.d/sendmail start','2016-05-11 10:40:00',NULL,'2016-05-11 13:51:10','นายปิยะพงษ์ แก้วน่าน'),(49,1,'S','2016-05-16 10:06:00','เครื่อง CATBSC เข้าใช้งานไม่ได้ มีอุปรณ์เสีย แจ้ง บ. เพื่อตรวจสอบ เวลา 10.00 น.\r\nจากการตรวจสอบเกิดจาก CPU เสีย','นายปิยะพงษ์ แก้วน่าน','HP Thailand','เปลี่ยน CPU ใหม่','2016-05-31 10:06:00',NULL,'2016-05-31 13:22:44','Administrator'),(50,1,'S','2016-06-02 13:29:00','เครื่อง CATBSC (DEV) Mainboard เสีย','นายปิยะพงษ์ แก้วน่าน','HP Thailand,IRCP','เปลี่ยน Mainboard ','2016-06-21 13:29:00',NULL,'2016-07-29 15:25:50','Administrator');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
