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

/*Table structure for table `tbl_knowledge` */

DROP TABLE IF EXISTS `tbl_knowledge`;

CREATE TABLE `tbl_knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(5) NOT NULL,
  `issue_title` varchar(500) NOT NULL,
  `issue_desc` longtext NOT NULL,
  `publish` varchar(1) NOT NULL DEFAULT 'Y',
  `views` int(5) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_title` (`issue_title`(255)),
  KEY `cate_id` (`cate_id`),
  CONSTRAINT `FK_tbl_knowledge` FOREIGN KEY (`cate_id`) REFERENCES `tbl_knowledge_cate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_knowledge` */

insert  into `tbl_knowledge`(`id`,`cate_id`,`issue_title`,`issue_desc`,`publish`,`views`,`update_time`,`update_by`) values (5,1,'เข้าระบบไม่ได้','เปลี่ยนรหัสผ่านที่ระบบ EIM\r\nhttp://eim.cattelecom.com','Y',0,'2014-07-16 14:21:02','Administrator'),(6,3,'เปิด Report แล้วเปิด Popup ไม่ได้','ให้เปิด Availability View','Y',0,'2014-09-10 14:20:06','Administrator'),(8,2,'เปิดใช้งานผ่าน IE ไม่ได้','<b>ใช้ IE 10 ขึ้นไป</b>','Y',0,'2014-07-31 10:12:02','Administrator'),(10,2,'Download SAS Install ที่ไหน','ที่เครื่อง B3','Y',0,'2014-08-08 10:34:19','Administrator'),(11,1,'How to Create Graph Using SAS Enterprise Guide','<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" background=\"http://web.utk.edu/sas/OnlineTutor/1.2/en/60477/navimages/banner.gif\"><tbody><tr valign=\"top\" bgcolor=\"#FFFFF0\"><td valign=\"middle\" style=\"font-size: 13px;\"><font color=\"#003399\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><b>Creating Graphs</b></font></td><td style=\"font-size: 13px;\"><img src=\"http://web.utk.edu/sas/OnlineTutor/1.2/en/60477/navimages/arch.gif\" width=\"357\" height=\"64\" align=\"top\" alt=\" \" style=\"cursor: pointer;\"></td></tr></tbody></table><br style=\"color: rgb(0, 0, 0); font-size: 13px;\"><center style=\"color: rgb(0, 0, 0); font-size: 13px;\"><p id=\"le2_eg2\" class=\"eg_div\"></p><table width=\"85%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr valign=\"top\"><td style=\"font-size: 13px;\"><p>Now that you\'ve created a list report, a frequency report, and a summary table, let\'s look at the last type of report that you need: a <b>graph</b> that shows total profit by product category. To create this graph, you can produce a simple bar chart in only a few steps.</p></td></tr></tbody></table><p><br></p><p id=\"eg2\" class=\"eg_div\"><img src=\"http://web.utk.edu/sas/OnlineTutor/1.2/en/60477/m102/images/m102_37s.gif\" alt=\"bar chart\" width=\"350\" height=\"334\" style=\"cursor: pointer;\"></p><p id=\"le2\" class=\"eg_div\"><img src=\"http://web.utk.edu/sas/OnlineTutor/1.2/en/60477/m102/images/m102_37le2s.gif\" alt=\"bar chart\" width=\"350\" style=\"cursor: pointer;\"></p><br><br><br><table width=\"85%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr valign=\"top\"><td style=\"font-size: 13px;\"><p>Using SAS Enterprise Guide, you can create the following types of graphs:</p><ul><li>bar charts</li><li>pie charts</li><li>area charts</li><li>line charts</li><li>scatter charts</li><li>surface charts</li><li>map charts</li><li>bubble plots</li><li>finance charts</li><li>donut charts</li><li>contour plots</li><li>radar (or star) charts.</li></ul><p>For now, you\'ll create a simple bar chart in HTML format. Later in this lesson, you\'ll learn how to use the interactive features of SAS Enterprise Guide graphs and how to insert your graphs into applications such as Microsoft PowerPoint and Microsoft Word.</p></td></tr></tbody></table><p></p><p id=\"eg3\" class=\"eg_div\"></p><table width=\"85%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr valign=\"top\"><td style=\"font-size: 13px;\"><p>Now that you\'ve created a list report, a frequency report, and a summary table, let\'s look at the last type of report that you need: a <b>graph</b> that shows total profit by product category. To create this graph, you can produce a simple bar chart in only a few steps.</p></td></tr></tbody></table><p></p></center>','Y',0,'2014-09-10 16:01:20','นายปิยะพงษ์ แก้วน่าน'),(12,1,'[SAS MS Add-In] ปัญหา SAS Microsoft Add-in ไม่มี SAS Ribbon ขึ้น Installation Note 44788: The error \"System.Xml.XmlException: Root element is missing\" might occur when Microsoft Office is invoked','<h2 style=\"font-size: 1.2em; margin-top: 1em; margin-bottom: 0.5em; color: rgb(75, 75, 75); font-family: Arial, Helvetica, Verdana, sans-serif; line-height: 16.8999996185303px;\">Installation Note <i>44788: </i>The error \"System.Xml.XmlException: Root element is missing\" might occur when Microsoft Office is invoked</h2><table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\"><tbody style=\"font-size: 13px; line-height: 1.25em; font-family: inherit;\"><tr style=\"font-size: 13px; line-height: 1.25em; font-family: inherit;\"><td><a href=\"http://support.sas.com/kb/44/788.html#\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\"><img border=\"0\" alt=\"Details\" src=\"http://support.sas.com/images/samples/details_sel.gif\" id=\"tabnav_details\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: none; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></a></td><td><a href=\"http://support.sas.com/kb/44/788.html#\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\"><img border=\"0\" alt=\"About\" src=\"http://support.sas.com/images/samples/about.gif\" id=\"tabnav_about\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: none; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></a></td><td><a href=\"http://support.sas.com/kb/44/788.html#\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\"><img border=\"0\" alt=\"Rate It\" src=\"http://support.sas.com/images/samples/rateit.gif\" id=\"tabnav_rateit\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: none; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></a></td><td width=\"100%\" height=\"3\" valign=\"bottom\"><img width=\"100%\" alt=\"\" height=\"3\" src=\"http://support.sas.com/images/samples/gray1.gif\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></td></tr></tbody></table><p id=\"tab_details\" style=\"font-family: Arial, Helvetica, Verdana, sans-serif; font-size: small; line-height: 16.8999996185303px; padding: 10px 0px 0px 30px;\">The following error message might be displayed when you invoke Microsoft Office with SAS Add-In for Microsoft Office installed.<p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"><img src=\"http://support.sas.com/kb/44/addl/fusion_44788_1_rootelement1.jpg\" alt=\"image label\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\">Clicking the <b>Details</b> button shows additional information, as shown below.</p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"><img src=\"http://support.sas.com/kb/44/addl/fusion_44788_3_rootelement3.jpg\" alt=\"image label\" style=\"margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\">The error might occur because of a corrupt AMOOptions.xml file. In that case, renaming the AMOOptions.xml file should correct the problem.</p><ol><li style=\"line-height: 20px;\">Close Microsoft Office.</li><li style=\"line-height: 20px;\">Browse to the following location depending on your operating system and rename the AMOOptions.xml file to AMOOptions_old.xml.<ul style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 25px;\"><li>Windows XP path to AMOOptions.xml: <br><span style=\"font-family: monospace;\"><b>C:\\Documents and Settings\\<userid>\\Application Data\\SAS\\Add-InForMicrosoftOffice\\4.3</b></span></li><li>Windows 7 path to AMOOptions.xml: <br><span style=\"font-family: monospace;\"><b>C:\\Users\\<userid>\\AppData\\Roaming\\SAS\\Add-InForMicrosoftOffice\\4.3</b></span></li></ul></li></ol><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\"><b>Note:</b> The paths shown above use the default Windows profile path for the respective operating system. Your Windows profile path might be different. If your profile path is other than the default, open <b>My Computer</b> and enter <b>%appdata%</b> in the address bar to determine what your Windows profile path is. <br><br></p><h4 style=\"margin-top: 1em; margin-bottom: 0px; padding: 0px 0px 1px; border: 0px; font-size: 1em; line-height: 1.25em; font-family: inherit; color: rgb(0, 0, 0);\">Operating System and Release Information</h4><table cellpadding=\"5\" border=\"1\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit;\"><tbody style=\"font-size: 13px; line-height: 1.25em; font-family: inherit;\"><tr class=\"product_header\" style=\"font-weight: bold; font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center; background-color: rgb(204, 204, 204);\"><td rowspan=\"2\">Product Family</td><td rowspan=\"2\">Product</td><td rowspan=\"2\">System</td><td colspan=\"2\" style=\"background-color: rgb(236, 236, 236);\">Product Release</td><td colspan=\"2\" style=\"background-color: rgb(236, 236, 236);\">SAS Release</td></tr><tr class=\"product_header\" style=\"font-weight: bold; font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center; background-color: rgb(204, 204, 204);\"><td>Reported</td><td>Fixed*</td><td>Reported</td><td>Fixed*</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td valign=\"top\" rowspan=\"9\">SAS System</td><td valign=\"top\" rowspan=\"9\">SAS Add-in for Microsoft Office</td><td>Microsoft® Windows® for x64</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Datacenter Edition</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Enterprise Edition</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Standard Edition</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 for x64</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2008 for x64</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows XP Professional</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Windows Vista</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Windows Vista for x64</td><td>4.305</td><td>6.1</td><td>9.2 TS2M0</td><td>9.3 TS1M2</td></tr></tbody></table><span class=\"status\" style=\"color: rgb(0, 0, 0); font-weight: bold;\"><b>*</b></span><span class=\"newstext\" style=\"font-size: 10px; line-height: normal; color: rgb(0, 0, 0); margin-top: 0px; padding-top: 0px;\"> For software releases that are not yet generally available, the Fixed Release is the software release in which the problem is planned to be fixed.</span></p>','Y',0,'2014-10-27 15:55:50','นายปิยะพงษ์ แก้วน่าน'),(13,1,'[SAS DI] ERROR: The PERFINIT macro has not been run.','<p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\">A SAS Data Integration Studio deployed job that is scheduled or run in batch mode might receive the following Warning and Error in the SAS Log:</p><p class=\"fusionnote\" style=\"margin: 20px; font-family: monospace; padding: 10px 20px 10px 5px; white-space: pre; line-height: 16.8999996185303px;\"><pre style=\"margin-bottom: 0px; padding: 10px 0px 8px; border: 0px; font-size: 12px; line-height: 1.25em; font-family: monospace;\">WARNING: ARMINIT: Negative appid returned - check macro parameters, appid=-1(0xFFFFFFFF).ERROR: The PERFINIT macro has not been run.</pre></p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\">These messages are generated when the following is true:</p><ol style=\"font-family: Arial, Helvetica, Verdana, sans-serif; font-size: small; line-height: 16.8999996185303px;\"><li style=\"line-height: 20px;\">The <b>Collect Runtime Statistics</b> option is enabled in the SAS Data Integration Studio job definition, and the job is then deployed for scheduling.</li><li style=\"line-height: 20px;\">The resulting job code is executed in a SAS® environment that has not been configured to support ARM logging.</li></ol><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\">You can resolve this issue by performing <i>one</i> of the following:</p><ul style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 25px; font-family: Arial, Helvetica, Verdana, sans-serif; font-size: small; line-height: 16.8999996185303px;\"><li style=\"line-height: 20px;\">Turn off the <b>Collect Runtime Statistics</b> option in your job definition, then redeploy the job for scheduling.<p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\">The Collect Runtime Statistics option is turned on by default. Therefore, all newly created jobs, as well as all jobs that are migrated or imported from earlier versions of SAS® Data Integration Studio, will generate performance statistics. Once a job has been created, the only way to turn the option off is to open the job in the Job Editor window. Then, right-click the canvas and select <b>Collect Runtime Statistics</b> to clear the option.</p></li><li style=\"line-height: 20px;\">Modify the SAS invocation so that ARM logging is enabled.<p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\">If you want to collect runtime statistics and are executing the generated job code via the DATA Step Batch Server, see <a href=\"http://support.sas.com/documentation/cdl/en/bisag/60945/HTML/default/a003314985.htm\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\">Configure DATA Step Batch Servers on Windows or UNIX to Collect ARM Log Information</a> for instuctions to enable this functionality.</p><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit;\">If you want to collect runtime statistics and are executing the generated job code via some other SAS invocation method, see <a href=\"http://support.sas.com/documentation/cdl/en/armref/61526/HTML/default/a003286584.htm\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\">ARM Logging Using the SAS Language</a> for instuctions to enable this functionality.</p></li></ul><p style=\"margin-bottom: 0px; padding: 5px 0px; border: 0px; font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\">For more information about ARM logging, see the <a href=\"http://support.sas.com/documentation/cdl/en/armref/61526/PDF/default/armref.pdf\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 13px; line-height: 1.25em; font-family: inherit; text-decoration: none; color: rgb(0, 102, 204);\">SAS® 9.2 Interface to Application Response Measurement (ARM) Reference</a>.</p><br style=\"font-family: Arial, Helvetica, Verdana, sans-serif; font-size: small; line-height: 16.8999996185303px;\"><br style=\"font-family: Arial, Helvetica, Verdana, sans-serif; font-size: small; line-height: 16.8999996185303px;\"><h4 style=\"margin-top: 1em; margin-bottom: 0px; padding: 0px 0px 1px; border: 0px; font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif; color: rgb(0, 0, 0);\">Operating System and Release Information</h4><table cellpadding=\"5\" border=\"1\" style=\"font-size: small; line-height: 1.25em; font-family: Arial, Helvetica, Verdana, sans-serif;\"><tbody style=\"font-size: 13px; line-height: 1.25em; font-family: inherit;\"><tr class=\"product_header\" style=\"font-weight: bold; font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center; background-color: rgb(204, 204, 204);\"><td rowspan=\"2\">Product Family</td><td rowspan=\"2\">Product</td><td rowspan=\"2\">System</td><td colspan=\"2\" style=\"background-color: rgb(236, 236, 236);\">Product Release</td><td colspan=\"2\" style=\"background-color: rgb(236, 236, 236);\">SAS Release</td></tr><tr class=\"product_header\" style=\"font-weight: bold; font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center; background-color: rgb(204, 204, 204);\"><td>Reported</td><td>Fixed*</td><td>Reported</td><td>Fixed*</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td valign=\"top\" rowspan=\"6\">SAS System</td><td valign=\"top\" rowspan=\"6\">SAS Data Integration Studio</td><td>Windows Vista</td><td>4.2</td><td>9.2 TS2M0</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows XP Professional</td><td>4.2</td><td>9.2 TS2M0</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Standard Edition</td><td>4.2</td><td>9.2 TS2M0</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Enterprise Edition</td><td>4.2</td><td>9.2 TS2M0</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft Windows Server 2003 Datacenter Edition</td><td>4.2</td><td>9.2 TS2M0</td></tr><tr class=\"product_row\" style=\"font-size: 13px; line-height: 1.25em; font-family: inherit; text-align: center;\"><td>Microsoft® Windows® for x64</td><td>4.2</td><td>9.2 TS2M0</td></tr></tbody></table><span class=\"status\" style=\"font-size: 14.3000001907349px; color: rgb(0, 0, 0); font-weight: bold; font-family: Arial, Helvetica, Verdana, sans-serif; line-height: 16.8999996185303px;\"><b>*</b></span><span class=\"newstext\" style=\"font-size: 10.3999996185303px; color: rgb(0, 0, 0); margin-top: 0px; padding-top: 0px; font-family: Arial, Helvetica, Verdana, sans-serif;\"> For software releases that are not yet generally available, the Fixed Release is the software release in which the problem is planned to be fixed.</span>','Y',0,'2015-03-11 11:33:19','นายปิยะพงษ์ แก้วน่าน'),(14,1,'สอบถามเรื่องการใช้งาน MDX และการใช้งาน SAS E-Guide','<p class=\"cs95e872d0\"><span style=\"font-size:10.0pt\"> </span><span lang=\"TH\" style=\"font-size:10.0pt\">การใช้งาน</span><span style=\"font-size:10.0pt\"> MDX </span><span lang=\"TH\" style=\"font-size:10.0pt\">โดยแนะนำว่าทาง</span><span style=\"font-size:10.0pt\"> CAT </span><span lang=\"TH\" style=\"font-size:10.0pt\">จะสามารถประยุกต์ใช้งาน</span><span style=\"font-size:10.0pt\"> MDX </span><span lang=\"TH\" style=\"font-size:10.0pt\">ในงานปัจจุบันของทาง</span><span style=\"font-size:10.0pt\"> CAT </span><span lang=\"TH\" style=\"font-size:10.0pt\">อะไรได้บ้าง</span><br></p><p class=\"cs95e872d0\"><span style=\"font-size:10.0pt\">       Please see information about MDX inattached file name \"olap_mdx_9317.pdf\" </span></p><p class=\"cs95e872d0\"><span style=\"font-size:10.0pt\">       Also see in <span class=\"cs48129e1b1\"><a href=\"http://support.sas.com/documentation/onlinedoc/91pdf/sasdoc_913/olap_mdx_9317.pdf\">http://support.sas.com/documentation/onlinedoc/91pdf/sasdoc_913/olap_mdx_9317.pdf</a></span></p><p class=\"cs95e872d0\"><span style=\"font-size:10.0pt\"><br></span></p><p class=\"cs95e872d0\"><span style=\"font-size:10.0pt\">-   </span><span lang=\"TH\" style=\"font-size:10.0pt\">สร้าง</span><span style=\"font-size:10.0pt\"> Project </span><span lang=\"TH\" style=\"font-size:10.0pt\">ของ</span><span style=\"font-size:10.0pt\"> SAS E-Guide </span><span lang=\"TH\" style=\"font-size:10.0pt\">โดยเก็บไว้ที่</span><span style=\"font-size:10.0pt\"> Server </span><span lang=\"TH\" style=\"font-size:10.0pt\">แล้วต้องการให้ตั้ง</span><span style=\"font-size:10.0pt\"> Schedule </span><span lang=\"TH\" style=\"font-size:10.0pt\">เพื่อ</span><span style=\"font-size:10.0pt\"> Run </span><span lang=\"TH\" style=\"font-size:10.0pt\">ตามวันเวลาที่ต้องการได้อย่างไรบ้าง</span><span class=\"csa16174ba\"><span style=\"font-size:10.0pt\"> </span><span class=\"csa16174ba\"><span style=\"font-size:10.0pt\">       In SAS Enterprise guide we can schedule theproject by using File > Schedule Project. For more advanced information.Please check following\"Hemedinger_298-2012.pdf\" Document</span></p>','Y',0,'2015-07-03 09:22:44','นายปิยะพงษ์ แก้วน่าน'),(15,1,'SAS E-Guide ไม่สามารถลบ/สร้างตารางจาก Library ได้','http://support.sas.com/techsup/technote/ts788.pdf','Y',0,'2015-09-03 11:35:53','นายปิยะพงษ์ แก้วน่าน'),(16,4,'วิธีการ Start SAS Service','<p><b>Start SAS Service</b></p><p></p><p>/app/sas/config/Lev1/sas.servers start</p><p>sleep 5</p><p><br></p><p># To Start LSF</p><p>cd /app/sas/software/lsf/conf/</p><p>. ./profile.lsf</p><p>lsadmin limstartup</p><p>sleep 5</p><p>lsadmin resstartup</p><p>sleep 5</p><p>badmin hstartup</p><p>sleep 5</p><p>&nbsp;</p><p>cd /app/sas/software/pm/conf/</p><p>. ./profile.js</p><p>jadmin start</p><p>sleep 5</p><p>&nbsp;</p><p></p><p></p><p></p><hr id=\"null\"><p></p><p></p><p><b>Start LDAP Client</b></p><p>- ต้องเช็คก่อนว่า มี process ldap หรือเปล่า &nbsp;ps -ef | grep ldap -&gt; kill -9 PID</p><p>- เข้าไปลบ ไฟล์ status ที่เสียหายทิ้ง โดย</p><p>&nbsp;cd /var/spool/ldapcltd/</p><p>&nbsp;rm status</p><p>- start process ldap ขึ้นมา แล้ว ไฟล์ status จะสร้างขึ้นมาใหม่ด้วย โดย</p><p>&nbsp;/opt/ldapux/bin/ldapclientd</p>','Y',0,'2015-11-04 13:53:52','นายปิยะพงษ์ แก้วน่าน'),(17,3,'วิธีการ Disabled / Enabled Cube','<p><b>วิธีการ Disabled / Enabled Cube</b></p><p><br></p><p>เนื่องจากจังหวะการ Build Cube บางครั้งจะมี User เรียกใช้งาน Cube อยู่จะเกิด Error ขึ้น ดังนี้</p><p>RROR: Resource is read-locked by another user. File =/data/cube/cdr/CDR_DM_MART_FACT/gen0000/CDR_DM_MART_FACT.cube. System Error</p><p>Code = 0.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ERROR: The file is already locked by another user.</p><p><br></p><p>ดังนั้นสามารถแก้ปัญหาโดยการสร้าง Jobs มา 2 อัน คั่นระหว่าง Cube ที่ต้องการ โดย Job แรกเป็น Job เพื่อ Disabled Cube ส่วนอันหลังเพื่อ Enabled Cube&nbsp;</p><p><br></p><p>Job Disabled -&gt; Current Cube -&gt; Job Enabled Cube</p><p><br></p><p>โดยใช้เขียน Code ดังนี้</p><p><br></p><p>HOSTNAME&nbsp;</p><p>&nbsp; - Production = CATEBI1</p><p>&nbsp; - DEV = CATDEV2</p><p>&nbsp; &nbsp;&nbsp;</p><p>/*DISABLED CUBE*/</p><p>PROC OLAPOPERATE;</p><p>&nbsp; &nbsp;CONNECT host=\"HOSTNAME\" Port=5451 userid=\"username\" password=\"pass\";&nbsp;</p><p>&nbsp; &nbsp;DISABLE CUBE \"CUBE_NAME\";</p><p>&nbsp; &nbsp;DISCONNECT; &nbsp;</p><p>QUIT;&nbsp;</p><p><br></p><p>/*ENABLED CUBE*/</p><p>PROC OLAPOPERATE;</p><p>&nbsp; &nbsp;CONNECT host=\"HOSTNAME\" Port=5451 userid=\"username\" password=\"pass\";&nbsp;</p><p>&nbsp; &nbsp;ENABLE CUBE \"CUBE_NAME\";</p><p>&nbsp; &nbsp;DISCONNECT; &nbsp;</p><p>QUIT;</p>','Y',0,'2015-12-24 09:12:28','นายปิยะพงษ์ แก้วน่าน'),(18,1,'Error : ไม่สามารถรันข้ามเครื่องได้ พบ Error  communication subsystem partner link setup request failure has occurred.','<span style=\"font-size:12px;\"><p style=\"font-size: 12px;\">-----------------------------------------------------------------------------------------------------------------<br style=\"font-size: 12px;\"></p><p style=\"font-size: 12px;\">Error : ไม่สามารถรันข้ามเครื่องได้ พบ Error &nbsp;communication subsystem partner link setup request failure has occurred.</p><p style=\"font-size: 12px;\">-----------------------------------------------------------------------------------------------------------------</p><p style=\"font-size: 12px;\">&nbsp;%let transformID = %quote(A5XM3OF3.BS0011F2);</p><p style=\"font-size: 12px;\">153 &nbsp; &nbsp; &nbsp; &nbsp;%let trans_rc = 0;</p><p style=\"font-size: 12px;\">154 &nbsp; &nbsp; &nbsp; &nbsp;%let etls_stepStartTime = %sysfunc(datetime(), datetime20.);</p><p style=\"font-size: 12px;\">155 &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"font-size: 12px;\">156 &nbsp; &nbsp; &nbsp; &nbsp;/*---- Implicit Transfer of Data &nbsp;----*/</p><p style=\"font-size: 12px;\">157 &nbsp; &nbsp; &nbsp; &nbsp;options comamid=TCP;</p><p style=\"font-size: 12px;\">158 &nbsp; &nbsp; &nbsp; &nbsp;%let local = cateai1 7551;</p><p style=\"font-size: 12px;\">159 &nbsp; &nbsp; &nbsp; &nbsp;data _null_;</p><p style=\"font-size: 12px;\">160 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; signon local &nbsp;noscript;</p><p style=\"font-size: 12px;\">NOTE: Remote signon to LOCAL commencing (SAS Release 9.02.02M3P041310).</p><p style=\"font-size: 12px;\">ERROR: A communication subsystem partner link setup request failure has occurred.</p><p style=\"font-size: 12px;\">ERROR: Communication request rejected by partner: security verification failure.</p><p style=\"font-size: 12px;\">ERROR: Remote signon to LOCAL canceled.</p><p style=\"font-size: 12px;\"><br style=\"font-size: 12px;\"></p><p style=\"font-size: 12px;\">-----------------------------------------------------------------------------------------------------------------<br style=\"font-size: 12px;\"></p><p style=\"font-size: 12px;\"><p style=\"font-size: 12px;\">แก้ไข : Re-Deploy Job ใหม่</p><p style=\"font-size: 12px;\">-----------------------------------------------------------------------------------------------------------------</p></p><p style=\"font-size: 12px;\"><p style=\"font-size: 12px;\">%let transformID = %quote(A5XM3OF3.BS0011F2);</p><p style=\"font-size: 12px;\">%let trans_rc = 0;</p><p style=\"font-size: 12px;\">%let etls_stepStartTime = %sysfunc(datetime(), datetime20.);&nbsp;</p><p style=\"font-size: 12px;\"><br style=\"font-size: 12px;\"></p><p style=\"font-size: 12px;\">/*---- Implicit Transfer of Data &nbsp;----*/&nbsp;</p><p style=\"font-size: 12px;\">options comamid=TCP;</p><p style=\"font-size: 12px;\">%let local = cateai1 7551;</p><p style=\"font-size: 12px;\">data _null_;&nbsp;</p><p style=\"font-size: 12px;\">&nbsp; &nbsp;signon local &nbsp;user=\"cm_flow\" password=\"{sas002}E3ECBE1420BF5D6F2467910B17EDD659\" noscript;</p><p style=\"font-size: 12px;\">run;&nbsp;</p></p></span><p><br></p>','Y',0,'2016-03-03 11:44:26','นายปิยะพงษ์ แก้วน่าน'),(19,1,'ไม่สามารถ Build Cube ในขณะที่ Server ยัง Connect ได้ปกติ','ตรวจสอบพื้นที่สำคัญบน Server ว่าเต็มหรือไม่ โดยใช้คำสั่ง bdf ถ้ามีพื้นที่ตรงไหนเต็มให้ทำการลบ เพื่อ clear พื้นที่<p><br></p><p>พื้นที่ path ที่สำคัญ ได้แก่</p><p>/</p><p>/work</p><p>/utilloc</p><p>/tmp</p><p>/temp</p><p>/data</p>','Y',0,'2016-04-29 14:54:16','นายปิยะพงษ์ แก้วน่าน');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
