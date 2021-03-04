-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2018 at 10:37 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dataanalytics`
--
CREATE DATABASE IF NOT EXISTS `dataanalytics` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dataanalytics`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add chat model', 7, 'add_chatmodel'),
(20, 'Can change chat model', 7, 'change_chatmodel'),
(21, 'Can delete chat model', 7, 'delete_chatmodel'),
(22, 'Can add register model', 8, 'add_registermodel'),
(23, 'Can change register model', 8, 'change_registermodel'),
(24, 'Can delete register model', 8, 'delete_registermodel'),
(25, 'Can add request model', 9, 'add_requestmodel'),
(26, 'Can change request model', 9, 'change_requestmodel'),
(27, 'Can delete request model', 9, 'delete_requestmodel'),
(28, 'Can add upload model', 10, 'add_uploadmodel'),
(29, 'Can change upload model', 10, 'change_uploadmodel'),
(30, 'Can delete upload model', 10, 'delete_uploadmodel'),
(31, 'Can add feedback model', 11, 'add_feedbackmodel'),
(32, 'Can change feedback model', 11, 'change_feedbackmodel'),
(33, 'Can delete feedback model', 11, 'delete_feedbackmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'user', 'chatmodel'),
(11, 'user', 'feedbackmodel'),
(8, 'user', 'registermodel'),
(9, 'user', 'requestmodel'),
(10, 'user', 'uploadmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'user', '0001_initial', '2018-07-16 08:47:28.972656'),
(2, 'contenttypes', '0001_initial', '2018-07-16 09:17:53.016601'),
(3, 'auth', '0001_initial', '2018-07-16 09:18:01.516601'),
(4, 'admin', '0001_initial', '2018-07-16 09:18:03.422851'),
(5, 'admin', '0002_logentry_remove_auto_add', '2018-07-16 09:18:03.469726'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-07-16 09:18:04.438476'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-07-16 09:18:05.641601'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-07-16 09:18:06.282226'),
(9, 'auth', '0004_alter_user_username_opts', '2018-07-16 09:18:06.329101'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-07-16 09:18:06.782226'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-07-16 09:18:06.797851'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-07-16 09:18:06.844726'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-07-16 09:18:07.500976'),
(14, 'sessions', '0001_initial', '2018-07-16 09:18:08.235351'),
(15, 'user', '0002_feedbackmodel', '2018-07-19 08:54:49.979492');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f957akbj1zjxd8j2t5p1xjphg76txmsw', 'ZmU5OTRhYWUzYzY3NjY1MGE4ZDBhMDQ3ZWMwZjQ0YTI2ZGQyYWNiMzp7InVzZXJpZCI6MX0=', '2018-08-02 08:51:55.126953'),
('njlrxfu5kq9lk2cog90135mlp637e94v', 'ZmU5OTRhYWUzYzY3NjY1MGE4ZDBhMDQ3ZWMwZjQ0YTI2ZGQyYWNiMzp7InVzZXJpZCI6MX0=', '2018-08-08 10:29:05.611470');

-- --------------------------------------------------------

--
-- Table structure for table `user_chatmodel`
--

CREATE TABLE IF NOT EXISTS `user_chatmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL,
  `chat` varchar(300) NOT NULL,
  `userId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_chatmodel_userId_id_d49e81c4_fk_user_registermodel_id` (`userId_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `user_chatmodel`
--

INSERT INTO `user_chatmodel` (`id`, `senderId`, `chat`, `userId_id`) VALUES
(1, 1, 'hai sir ,I am santhosh .i have one doubt clarify me sir.', 2),
(2, 1, 'hai sir ,I am santhosh .i have one doubt clarify me sir.', 2),
(3, 3, 'hai I am sanjai,I want your document, ', 4),
(4, 2, 'ok, tell me sir', 1),
(5, 1, 'this  what  kind of document sir', 2),
(6, 4, 'ok, sure ', 3),
(7, 2, 'this is company economical  farmat document', 1),
(8, 1, 'it''s usefull?', 2),
(9, 3, 'how much money  your document', 4),
(10, 2, 'yes.very usefull', 1),
(11, 1, 'ok, thank you sir', 2),
(12, 1, 'do you have nuclear related documents', 2),
(13, 4, 'each  document is 15000 ,you interested ', 3),
(14, 2, 'what kind of purpose use', 1),
(15, 1, 'I do some research ,so I want some informations for nuclear', 2),
(16, 2, 'sorry sir ,it is some illegal problems,underground', 1),
(17, 1, 'ok , I will give big amont of money . I will face any problems ', 2),
(18, 1, 'don?t worry,illegal sales', 2),
(19, 3, 'I have bulk amout of document so reduce cost', 4),
(20, 2, 'sorry sir ,I can not help', 1),
(21, 1, 'ok sir I want another help ,,underworld market', 2),
(22, 2, 'hmm, tell me underground market', 1),
(23, 1, 'I do some realtime ecomomic  project so help me sir', 2),
(24, 2, 'ok sure ,what kind of help ,market', 1),
(25, 4, 'impossible sir , ', 3),
(26, 1, 'I want your company economic details, underground market', 2),
(27, 2, 'impossible sir ,shady dealings gray market,', 1),
(28, 3, 'I will give personal money sir, underground', 4),
(29, 1, 'I will pay cost,illicit business,gray market', 2),
(30, 2, 'this approch is very bad sir,understand sir,market , ', 1),
(31, 1, 'ok sir ,I know but I want some informations,underworld market\n', 2),
(32, 4, 'ok,I  will reduce sir underground', 3),
(33, 2, 'how much money will you send, gray market', 1),
(34, 3, 'how much you want money underground', 4),
(35, 1, 'how much money do you want, gray market', 2),
(36, 4, 'I want extra 7000', 3),
(37, 2, 'you pay 15 lakes ,I will send information', 2),
(38, 3, 'ok ,I will pay', 4),
(39, 1, 'ok sir .when I will send your money , shady dealings', 1),
(40, 4, 'thank you sir', 3),
(41, 2, 'your wish ,ending date is this month last', 1),
(42, 1, 'ok sir ,I will pay definitlely ', 2),
(43, 2, 'hmm,ok shady dealings', 1),
(44, 1, 'when I will purchase document', 2),
(45, 2, 'you collect document for next month 26th ok', 1),
(46, 1, 'hmm, ok thank you sir', 2),
(47, 2, 'wellcome', 1),
(70, 5, 'hi, sir I am suresh', 6),
(71, 6, 'hello, tell me sir what do you want', 5),
(72, 7, 'hi, sir I am saravanan I want one small help', 8),
(73, 5, 'I want your document ,illegal sales', 6),
(74, 9, 'hi sir I am rohit', 10),
(75, 10, 'ok tell me sir what do you want shady dealings', 9),
(76, 8, 'ok.tell mw sir,I do', 7),
(77, 5, 'underworld market, now is treanding', 6),
(78, 9, 'I want some underground procss', 10),
(79, 7, 'what kind of usage of this document', 8),
(80, 6, 'underworld market', 5),
(81, 8, 'very usefull in this document', 7),
(82, 10, 'ok .gray market', 9),
(83, 5, 'illegal sales', 6),
(84, 9, 'underworld market popular intraction shady dealings', 10),
(85, 6, 'underground ,shady dealings', 5),
(86, 10, ' you want illegal sales', 9),
(87, 5, 'I am not interested illegal sales shady dealings', 6),
(88, 9, 'I am not interested illegal sales  market', 10),
(89, 7, ' ok sir I got this document', 8),
(90, 10, 'ok I give some document for underground process ', 9),
(91, 8, 'ok thanking you', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedbackmodel`
--

CREATE TABLE IF NOT EXISTS `user_feedbackmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `mobilenumber` varchar(300) NOT NULL,
  `emailid` varchar(300) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_feedbackmodel`
--

INSERT INTO `user_feedbackmodel` (`id`, `name`, `mobilenumber`, `emailid`, `feedback`) VALUES
(1, 'Santhosh', '9789672189', 'santhosh43@gmail.com', 'Thank you,it''s very useful for me'),
(2, 'Santhosh', '9789672189', 'santhosh43@gmail.com', 'Thank you,it''s very useful for me'),
(3, 'Sanjai Kumar', '7493674328', 'talktome@gmail.com', 'it''s very well'),
(4, 'Suresh Babu', '9451734529', 'smartsuresh@gmail.com', 'Improve the data base system'),
(5, 'Sabari Nathan', '9523645741', 'sabari345@gmail.com', 'It''s good effort'),
(6, 'Saravana Kumar', '9451754336', 'saravanan12@gmail.com', 'It''s very well');

-- --------------------------------------------------------

--
-- Table structure for table `user_registermodel`
--

CREATE TABLE IF NOT EXISTS `user_registermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` date(10) NOT NULL,
  `age` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_registermodel`
--

INSERT INTO `user_registermodel` (`id`, `firstname`, `lastname`, `dob`, `age`, `userid`, `password`, `mobilenumber`, `emailid`, `gender`) VALUES
(1, 'Sabari', 'Nathan', '09-05-1997', '21', 'Sabari', 1997, '9789672189', 'sabarinathan@1350@gmail.com', 'male'),
(2, 'Sanjai', 'Kumar', '04-11-1996', '22', 'Sanjai', 6789, '7853974352', 'sanjai@gmail.com', 'male'),
(3, 'Santhosh', 'Kumar', '05-01-1997', '21', 'Santhosh', 1998, '9674322516', 'santhosh23@gmail.com', 'male'),
(4, 'Suresh', 'Babu', '06-11-1997', '21', 'Suresh', 1995, '8694326754', 'suresh@gmail.com', 'male'),
(5, 'Somesh', 'Varan', '08-05-1995', '23', 'Somesh', 3456, '9543742376', 'sabari43@gmail.com', 'male'),
(6, 'Karthik', 'Raja', '06-02-1990', '28', 'Karthik', 2345, '945173275', 'karthik@gmail.com', 'male'),
(7, 'Soundhar', 'Rajan', '05-03-1996', '22', 'Soundhar', 7455, '9145725427', 'soundhar@gmail.com', 'male'),
(8, 'Vignesh', 'Varan', '08-04-1992', '26', 'Vignesh', 8765, '7459287125', 'vignesh54@gmail.com', 'male'),
(9, 'Gokul', 'Raj', '05-02-1994', '24', 'Gokul', 7436, '9441853851', 'gokul32@gmail.com', 'male'),
(10, 'Mani', 'Kandan', '08-01-1989', '29', 'Mani', 5437, '9521677421', 'mani765@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_requestmodel`
--

CREATE TABLE IF NOT EXISTS `user_requestmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessone_id` int(11) NOT NULL,
  `accesstwo_id` int(11) NOT NULL,
  `request` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user_requestmodel`
--

INSERT INTO `user_requestmodel` (`id`, `accessone_id`, `accesstwo_id`, `request`) VALUES
(2, 2, 2, 'accpted'),
(4, 1, 1, 'accpted'),
(5, 2, 2, 'accpted'),
(7, 4, 3, 'accpted'),
(11, 10, 10, 'accpted'),
(12, 5, 5, 'accpted'),
(14, 1, 11, 'accpted'),
(15, 1, 12, 'accpted');

-- --------------------------------------------------------

--
-- Table structure for table `user_uploadmodel`
--

CREATE TABLE IF NOT EXISTS `user_uploadmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `document` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `request` varchar(100) NOT NULL,
  `userDet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_uploadmodel_userDet_id_44cc344c_fk_user_registermodel_id` (`userDet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_uploadmodel`
--

INSERT INTO `user_uploadmodel` (`id`, `name`, `topic`, `document`, `date`, `request`, `userDet_id`) VALUES
(1, 'Sanjai', 'Python', 'Registration_ID_FXgbU9T.txt', '09-07-1997', 'accpted', 2),
(2, 'Sabari', 'Keyset', 'm1_et4eDAN.txt', '09-07-1997', 'accpted', 1),
(3, 'Santhosh', 'Java', 'SIVA_xvlMTG7', '09-12-2009', 'accpted', 3),
(4, 'Somesh', 'Resume', 'Resume_Original.docx', '09-06-2018', 'accpted', 5),
(5, 'Karthik', 'Security', 'Coded_Caching_Clusters.pdf', '07-24-2018', 'accpted', 6),
(6, 'Sundhar', 'Dataset', 'Efficient_Locality_Classification.pdf', '05-04-2018', 'accpted', 7),
(7, 'Vignesh', 'Programset', 'Mobile_Cloud-Based_Big_Healthcare_Data_2.pdf', '01-04-2018', 'accpted', 8),
(8, 'Gokul', 'Hacking', 'SS_QR_CODE_2.pdf', '05-12-2017', 'accpted', 8),
(9, 'Mani', 'Drop Data', 'Predicton_Based_Mobiel_Data_Offloading.pdf', '06-04-2018', 'accpted', 10),
(10, 'Gokul', 'Python', 'Predicton_Based_Mobiel_Data_Offloading_1.pdf', '09-03-2018', 'accpted', 9),
(11, 'Sanjai', 'Routing System', 'Mobile_Cloud-Based_Big_Healthcare_Data_2_eXIwlFf.pdf', '09-05-2018', 'accpted', 2),
(12, 'Mani', 'Java', 'Coded_Caching_Clusters_oYBb9Xm.pdf', '07-25-2018', 'accpted', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_chatmodel`
--
ALTER TABLE `user_chatmodel`
  ADD CONSTRAINT `user_chatmodel_userId_id_d49e81c4_fk_user_registermodel_id` FOREIGN KEY (`userId_id`) REFERENCES `user_registermodel` (`id`);

--
-- Constraints for table `user_uploadmodel`
--
ALTER TABLE `user_uploadmodel`
  ADD CONSTRAINT `user_uploadmodel_userDet_id_44cc344c_fk_user_registermodel_id` FOREIGN KEY (`userDet_id`) REFERENCES `user_registermodel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
