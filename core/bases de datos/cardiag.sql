CREATE DATABASE  IF NOT EXISTS `cardiag` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cardiag`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cardiag
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) unsigned NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) unsigned NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',0,'Administración de Django',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1),(2,'CarDiag',1,'Administración de CarDiag',1,'',0,'#436572','#FFFFFF','#A6C9D1','#FFFFFF','#C9F0DD','#A6C9D1','#FFFFFF','#FFFFFF','#C9F0DD',1,'#436572','#A6C9D1','#436572','#A6C9D1','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','CarDiag',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Theme',1,'add_theme'),(2,'Can change Theme',1,'change_theme'),(3,'Can delete Theme',1,'delete_theme'),(4,'Can view Theme',1,'view_theme'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Taller',7,'add_tallermecanico'),(26,'Can change Taller',7,'change_tallermecanico'),(27,'Can delete Taller',7,'delete_tallermecanico'),(28,'Can view Taller',7,'view_tallermecanico'),(29,'Can add user',8,'add_usercustom'),(30,'Can change user',8,'change_usercustom'),(31,'Can delete user',8,'delete_usercustom'),(32,'Can view user',8,'view_usercustom'),(33,'Can add Vehiculo',9,'add_car'),(34,'Can change Vehiculo',9,'change_car'),(35,'Can delete Vehiculo',9,'delete_car'),(36,'Can view Vehiculo',9,'view_car'),(37,'Can add Fecha',10,'add_cita'),(38,'Can change Fecha',10,'change_cita'),(39,'Can delete Fecha',10,'delete_cita'),(40,'Can view Fecha',10,'view_cita'),(41,'Can add Añadir',11,'add_añadir'),(42,'Can change Añadir',11,'change_añadir'),(43,'Can delete Añadir',11,'delete_añadir'),(44,'Can view Añadir',11,'view_añadir');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `taller_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Fecha_taller_id_364fba79_fk_taller_id` (`taller_id`),
  CONSTRAINT `Fecha_taller_id_364fba79_fk_taller_id` FOREIGN KEY (`taller_id`) REFERENCES `taller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (5,'2023-09-19','16:00:00.000000',6);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_usercustom_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_usercustom_id` FOREIGN KEY (`user_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-19 00:00:25.934468','1','Autollantas',3,'',7,10),(2,'2023-09-19 00:00:33.884829','6','Autollantas',2,'[{\"changed\": {\"fields\": [\"Nombre taller\"]}}]',7,10),(3,'2023-09-19 00:02:21.217097','5','Cita el 2023-09-19 a las 16:00:00',2,'[]',10,10),(4,'2023-09-19 00:03:42.148446','2','CarDiag',1,'[{\"added\": {}}]',1,10),(5,'2023-09-19 00:05:09.732122','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Title\", \"Color\"]}}]',1,10),(6,'2023-09-19 00:05:22.189369','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',1,10),(7,'2023-09-19 00:05:33.108987','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Visible\"]}}]',1,10),(8,'2023-09-19 00:06:08.339139','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Background color\", \"Text color\"]}}]',1,10),(9,'2023-09-19 00:06:34.473382','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,10),(10,'2023-09-19 00:07:17.270271','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Link color\"]}}]',1,10),(11,'2023-09-19 00:07:56.763506','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Link hover color\"]}}]',1,10),(12,'2023-09-19 00:08:33.949011','2','CarDiag',2,'[{\"changed\": {\"fields\": [\"Background color\", \"Background hover color\"]}}]',1,10),(13,'2023-09-19 00:08:56.154664','2','CarDiag',2,'[]',1,10);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(1,'admin_interface','theme'),(4,'auth','group'),(3,'auth','permission'),(5,'contenttypes','contenttype'),(10,'core','cita'),(7,'core','tallermecanico'),(6,'sessions','session'),(11,'user','añadir'),(9,'user','car'),(8,'user','usercustom');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-08 21:01:29.875492'),(2,'contenttypes','0002_remove_content_type_name','2023-09-08 21:01:29.944828'),(3,'auth','0001_initial','2023-09-08 21:01:30.122797'),(4,'auth','0002_alter_permission_name_max_length','2023-09-08 21:01:30.164157'),(5,'auth','0003_alter_user_email_max_length','2023-09-08 21:01:30.164157'),(6,'auth','0004_alter_user_username_opts','2023-09-08 21:01:30.174164'),(7,'auth','0005_alter_user_last_login_null','2023-09-08 21:01:30.174164'),(8,'auth','0006_require_contenttypes_0002','2023-09-08 21:01:30.174164'),(9,'auth','0007_alter_validators_add_error_messages','2023-09-08 21:01:30.189825'),(10,'auth','0008_alter_user_username_max_length','2023-09-08 21:01:30.189825'),(11,'auth','0009_alter_user_last_name_max_length','2023-09-08 21:01:30.199833'),(12,'auth','0010_alter_group_name_max_length','2023-09-08 21:01:30.199833'),(13,'auth','0011_update_proxy_permissions','2023-09-08 21:01:30.215505'),(14,'auth','0012_alter_user_first_name_max_length','2023-09-08 21:01:30.225534'),(15,'user','0001_initial','2023-09-08 21:01:30.475385'),(16,'admin','0001_initial','2023-09-08 21:01:30.623963'),(17,'admin','0002_logentry_remove_auto_add','2023-09-08 21:01:30.623963'),(18,'admin','0003_logentry_add_action_flag_choices','2023-09-08 21:01:30.639614'),(19,'admin_interface','0001_initial','2023-09-08 21:01:30.649623'),(20,'admin_interface','0002_add_related_modal','2023-09-08 21:01:30.721037'),(21,'admin_interface','0003_add_logo_color','2023-09-08 21:01:30.746705'),(22,'admin_interface','0004_rename_title_color','2023-09-08 21:01:30.772366'),(23,'admin_interface','0005_add_recent_actions_visible','2023-09-08 21:01:30.792680'),(24,'admin_interface','0006_bytes_to_str','2023-09-08 21:01:30.831842'),(25,'admin_interface','0007_add_favicon','2023-09-08 21:01:30.847474'),(26,'admin_interface','0008_change_related_modal_background_opacity_type','2023-09-08 21:01:30.888811'),(27,'admin_interface','0009_add_enviroment','2023-09-08 21:01:30.924511'),(28,'admin_interface','0010_add_localization','2023-09-08 21:01:30.940175'),(29,'admin_interface','0011_add_environment_options','2023-09-08 21:01:31.009374'),(30,'admin_interface','0012_update_verbose_names','2023-09-08 21:01:31.014919'),(31,'admin_interface','0013_add_related_modal_close_button','2023-09-08 21:01:31.031461'),(32,'admin_interface','0014_name_unique','2023-09-08 21:01:31.044820'),(33,'admin_interface','0015_add_language_chooser_active','2023-09-08 21:01:31.070794'),(34,'admin_interface','0016_add_language_chooser_display','2023-09-08 21:01:31.084895'),(35,'admin_interface','0017_change_list_filter_dropdown','2023-09-08 21:01:31.084895'),(36,'admin_interface','0018_theme_list_filter_sticky','2023-09-08 21:01:31.111381'),(37,'admin_interface','0019_add_form_sticky','2023-09-08 21:01:31.151507'),(38,'admin_interface','0020_module_selected_colors','2023-09-08 21:01:31.378192'),(39,'admin_interface','0021_file_extension_validator','2023-09-08 21:01:31.391570'),(40,'admin_interface','0022_add_logo_max_width_and_height','2023-09-08 21:01:31.431514'),(41,'admin_interface','0023_theme_foldable_apps','2023-09-08 21:01:31.471505'),(42,'admin_interface','0024_remove_theme_css','2023-09-08 21:01:31.498258'),(43,'admin_interface','0025_theme_language_chooser_control','2023-09-08 21:01:31.521574'),(44,'admin_interface','0026_theme_list_filter_highlight','2023-09-08 21:01:31.538234'),(45,'admin_interface','0027_theme_list_filter_removal_links','2023-09-08 21:01:31.564331'),(46,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2023-09-08 21:01:31.618224'),(47,'admin_interface','0029_theme_css_generic_link_active_color','2023-09-08 21:01:31.641646'),(48,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2023-09-08 21:01:31.711592'),(49,'core','0001_initial','2023-09-08 21:01:31.727270'),(50,'sessions','0001_initial','2023-09-08 21:01:31.752811'),(51,'user','0002_alter_car_hibrido','2023-09-08 21:14:20.074427'),(52,'user','0003_car_hibri2','2023-09-08 21:20:54.234052'),(53,'user','0004_alter_car_hibrido','2023-09-08 21:31:05.680063'),(54,'user','0005_remove_car_hibri2','2023-09-08 21:32:13.691026'),(55,'core','0002_evento','2023-09-14 02:24:15.771653'),(56,'core','0003_calendario_delete_evento','2023-09-14 02:24:15.854600'),(57,'core','0004_cita_delete_calendario','2023-09-14 02:24:15.930284'),(58,'core','0002_alter_cita_options_alter_cita_table','2023-09-14 03:19:51.955540'),(59,'core','0003_alter_tallermecanico_direccion_and_more','2023-09-14 12:00:52.542558'),(60,'user','0002_añadir','2023-09-14 12:00:52.558209'),(61,'user','0003_alter_añadir_table','2023-09-14 12:00:52.578481'),(62,'core','0004_tallermecanico_atencion_tallermecanico_direction','2023-09-14 12:03:24.375488'),(63,'user','0004_delete_añadir','2023-09-14 12:03:24.375488'),(64,'core','0005_remove_tallermecanico_atencion','2023-09-14 12:05:36.501221'),(65,'core','0006_remove_tallermecanico_direction_and_more','2023-09-14 12:13:49.239948'),(66,'core','0007_tallermecanico_usuario','2023-09-14 12:54:07.167750');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taller`
--

DROP TABLE IF EXISTS `taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taller` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_taller` varchar(200) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `numero_telefono` varchar(200) NOT NULL,
  `horarios_atencion` varchar(200) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taller_usuario_id_9582fedd_fk_user_usercustom_id` (`usuario_id`),
  CONSTRAINT `taller_usuario_id_9582fedd_fk_user_usercustom_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (6,'Autollantas','calle 13 No. 12-61, Granada-Meta','+57 312 3504820','8:00am-6:00pm','La mejor calidad en llantas y baterias, servicion de alineacion y balanceo, etc',7);
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_usercustom`
--

DROP TABLE IF EXISTS `user_usercustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_usercustom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `age` int(10) unsigned DEFAULT NULL CHECK (`age` >= 0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_usercustom`
--

LOCK TABLES `user_usercustom` WRITE;
/*!40000 ALTER TABLE `user_usercustom` DISABLE KEYS */;
INSERT INTO `user_usercustom` VALUES (3,'pbkdf2_sha256$600000$ufrD5zbhdjpE7fwl6agNhR$sZIdrMENuyw3p7uI8lJ9C4K2+O/3l1T2gKJe9Pxg6wg=','2023-09-08 23:02:55.506468',0,'claudiam78','','','montescm2@hotmail.com',0,1,'2023-09-08 23:02:39.477417',NULL),(4,'pbkdf2_sha256$600000$oJW4oIhpowHA2SEMrzw0th$0AY3A11WSGh7PM7g2Vb6WCxa+5ZZHQDwh9vdrL/A1wc=','2023-09-08 23:07:10.885136',0,'Felipe','','','andresfelipecasasmontes11@gmail.com',0,1,'2023-09-08 23:07:00.828136',NULL),(7,'pbkdf2_sha256$600000$q0mfBOZ7LrlorVTKfCBbCy$/MnK5nGd70Cz/Jq5ctQ9KqcPRgy9Fe0iqbqqZxCW3CU=','2023-09-19 00:13:50.941958',0,'Eric','','','escasas37@soy.sena.edu.co',0,1,'2023-09-14 03:44:04.584222',NULL),(10,'pbkdf2_sha256$600000$WGv6qipxeItrvqfeYGOFQO$W74/H4FJPmYe8tfA70Gd9PanXowfecUHjr6dkyzVBxQ=','2023-09-19 00:11:49.395154',1,'admin','','','eric15casas@gmail.com',1,1,'2023-09-18 23:59:55.559754',NULL);
/*!40000 ALTER TABLE `user_usercustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_usercustom_groups`
--

DROP TABLE IF EXISTS `user_usercustom_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_usercustom_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usercustom_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_usercustom_groups_usercustom_id_group_id_d8a1fe62_uniq` (`usercustom_id`,`group_id`),
  KEY `user_usercustom_groups_group_id_51bc093d_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_usercustom_grou_usercustom_id_ecf3e604_fk_user_user` FOREIGN KEY (`usercustom_id`) REFERENCES `user_usercustom` (`id`),
  CONSTRAINT `user_usercustom_groups_group_id_51bc093d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_usercustom_groups`
--

LOCK TABLES `user_usercustom_groups` WRITE;
/*!40000 ALTER TABLE `user_usercustom_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_usercustom_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_usercustom_user_permissions`
--

DROP TABLE IF EXISTS `user_usercustom_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_usercustom_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usercustom_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_usercustom_user_per_usercustom_id_permission_c5578123_uniq` (`usercustom_id`,`permission_id`),
  KEY `user_usercustom_user_permission_id_61ae36bd_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_usercustom_user_permission_id_61ae36bd_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_usercustom_user_usercustom_id_0ad0553c_fk_user_user` FOREIGN KEY (`usercustom_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_usercustom_user_permissions`
--

LOCK TABLES `user_usercustom_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_usercustom_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_usercustom_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `linea` varchar(50) DEFAULT NULL,
  `modelo` int(10) unsigned DEFAULT NULL CHECK (`modelo` >= 0),
  `placa` varchar(7) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `kilometraje` bigint(20) unsigned DEFAULT NULL CHECK (`kilometraje` >= 0),
  `Hibrido` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vehiculo_user_id_079069a0_fk_user_usercustom_id` (`user_id`),
  CONSTRAINT `vehiculo_user_id_079069a0_fk_user_usercustom_id` FOREIGN KEY (`user_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (2,'sandero','renault','sandero',2014,'HXS495','Gasolina',72000,0,3),(3,'ambo','Chevrolet','Spark',2014,'htr131','Gasolina',17000,0,4),(5,'RayoMcQueen','Chevrolet','Spark',2014,'HCK002','Gasolina',50000,0,7);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cardiag'
--

--
-- Dumping routines for database 'cardiag'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-21 17:45:14
