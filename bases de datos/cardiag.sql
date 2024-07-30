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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Theme',1,'add_theme'),(2,'Can change Theme',1,'change_theme'),(3,'Can delete Theme',1,'delete_theme'),(4,'Can view Theme',1,'view_theme'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Taller',7,'add_tallermecanico'),(26,'Can change Taller',7,'change_tallermecanico'),(27,'Can delete Taller',7,'delete_tallermecanico'),(28,'Can view Taller',7,'view_tallermecanico'),(29,'Can add Cita',8,'add_cita'),(30,'Can change Cita',8,'change_cita'),(31,'Can delete Cita',8,'delete_cita'),(32,'Can view Cita',8,'view_cita'),(33,'Can add user',9,'add_usercustom'),(34,'Can change user',9,'change_usercustom'),(35,'Can delete user',9,'delete_usercustom'),(36,'Can view user',9,'view_usercustom'),(37,'Can add Vehiculo',10,'add_car'),(38,'Can change Vehiculo',10,'change_car'),(39,'Can delete Vehiculo',10,'delete_car'),(40,'Can view Vehiculo',10,'view_car'),(41,'Can add diagnostico',11,'add_diagnostico'),(42,'Can change diagnostico',11,'change_diagnostico'),(43,'Can delete diagnostico',11,'delete_diagnostico'),(44,'Can view diagnostico',11,'view_diagnostico'),(45,'Can add servicio',12,'add_servicio'),(46,'Can change servicio',12,'change_servicio'),(47,'Can delete servicio',12,'delete_servicio'),(48,'Can view servicio',12,'view_servicio'),(49,'Can add factura',13,'add_factura'),(50,'Can change factura',13,'change_factura'),(51,'Can delete factura',13,'delete_factura'),(52,'Can view factura',13,'view_factura');
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
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Fecha_taller_id_364fba79_fk_taller_id` (`taller_id`),
  KEY `Cita_usuario_id_34fe825a_fk_user_usercustom_id` (`usuario_id`),
  CONSTRAINT `Cita_usuario_id_34fe825a_fk_user_usercustom_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_usercustom` (`id`),
  CONSTRAINT `Fecha_taller_id_364fba79_fk_taller_id` FOREIGN KEY (`taller_id`) REFERENCES `taller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'2023-11-30','09:23:00.000000',1,NULL),(3,'2023-12-14','10:00:00.000000',1,3),(5,'2023-12-16','10:07:00.000000',1,4),(6,'2023-12-14','10:00:00.000000',1,1);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_part` varchar(50) DEFAULT NULL,
  `symptom` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_diagnostico_user_id_eb86bd13_fk_user_usercustom_id` (`user_id`),
  CONSTRAINT `user_diagnostico_user_id_eb86bd13_fk_user_usercustom_id` FOREIGN KEY (`user_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,'motor','ruido',1),(2,'motor','ruido',1),(3,'motor','ruido',1),(4,'frenos','ruido',1),(5,'motor','ruido',1),(6,'motor','ruido',1),(7,'motor','ruido',1),(8,'motor','ruido',1),(9,'motor','ruido',1),(10,'motor','ruido',1),(11,'motor','ruido',1),(12,'motor','ruido',1),(13,'motor','ruido',1),(14,'motor','ruido',1),(15,'motor','ruido',1),(16,'motor','ruido',1),(17,'motor','ruido',1),(18,'motor','ruido',1),(19,'motor','ruido',1),(20,'motor','ruido',1),(21,'motor','ruido',1),(22,'motor','ruido',1),(23,'motor','ruido',1),(24,'motor','ruido',1),(25,'motor','ruido',1),(26,'motor','ruido',3),(27,'motor','ruido',1),(28,'motor','ruido',1),(29,'motor','ruido',1),(30,'motor','ruido',1),(31,'motor','ruido',1),(32,'transmision','rebote',1),(33,'transmision','vibracion',1),(34,'frenos','ruido',1),(35,'motor','ruido',3),(36,'motor','ruido',4),(37,'frenos','ruido',4),(38,'motor','ruido',4),(39,'motor','ruido',1);
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(1,'admin_interface','theme'),(4,'auth','group'),(3,'auth','permission'),(5,'contenttypes','contenttype'),(8,'core','cita'),(7,'core','tallermecanico'),(6,'sessions','session'),(10,'user','car'),(11,'user','diagnostico'),(13,'user','factura'),(12,'user','servicio'),(9,'user','usercustom');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-04 23:13:57.524400'),(2,'contenttypes','0002_remove_content_type_name','2023-11-04 23:13:57.588909'),(3,'auth','0001_initial','2023-11-04 23:13:57.793890'),(4,'auth','0002_alter_permission_name_max_length','2023-11-04 23:13:57.843945'),(5,'auth','0003_alter_user_email_max_length','2023-11-04 23:13:57.854242'),(6,'auth','0004_alter_user_username_opts','2023-11-04 23:13:57.854242'),(7,'auth','0005_alter_user_last_login_null','2023-11-04 23:13:57.863882'),(8,'auth','0006_require_contenttypes_0002','2023-11-04 23:13:57.863882'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-04 23:13:57.873851'),(10,'auth','0008_alter_user_username_max_length','2023-11-04 23:13:57.883900'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-04 23:13:57.883900'),(12,'auth','0010_alter_group_name_max_length','2023-11-04 23:13:57.903891'),(13,'auth','0011_update_proxy_permissions','2023-11-04 23:13:57.903891'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-04 23:13:57.914082'),(15,'user','0001_initial','2023-11-04 23:13:58.223875'),(16,'admin','0001_initial','2023-11-04 23:13:58.333598'),(17,'admin','0002_logentry_remove_auto_add','2023-11-04 23:13:58.343989'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-04 23:13:58.353695'),(19,'admin_interface','0001_initial','2023-11-04 23:13:58.374050'),(20,'admin_interface','0002_add_related_modal','2023-11-04 23:13:58.444010'),(21,'admin_interface','0003_add_logo_color','2023-11-04 23:13:58.468960'),(22,'admin_interface','0004_rename_title_color','2023-11-04 23:13:58.473979'),(23,'admin_interface','0005_add_recent_actions_visible','2023-11-04 23:13:58.493994'),(24,'admin_interface','0006_bytes_to_str','2023-11-04 23:13:58.544022'),(25,'admin_interface','0007_add_favicon','2023-11-04 23:13:58.564014'),(26,'admin_interface','0008_change_related_modal_background_opacity_type','2023-11-04 23:13:58.594256'),(27,'admin_interface','0009_add_enviroment','2023-11-04 23:13:58.624042'),(28,'admin_interface','0010_add_localization','2023-11-04 23:13:58.644666'),(29,'admin_interface','0011_add_environment_options','2023-11-04 23:13:58.708673'),(30,'admin_interface','0012_update_verbose_names','2023-11-04 23:13:58.713694'),(31,'admin_interface','0013_add_related_modal_close_button','2023-11-04 23:13:58.734421'),(32,'admin_interface','0014_name_unique','2023-11-04 23:13:58.744886'),(33,'admin_interface','0015_add_language_chooser_active','2023-11-04 23:13:58.763991'),(34,'admin_interface','0016_add_language_chooser_display','2023-11-04 23:13:58.784006'),(35,'admin_interface','0017_change_list_filter_dropdown','2023-11-04 23:13:58.794497'),(36,'admin_interface','0018_theme_list_filter_sticky','2023-11-04 23:13:58.814088'),(37,'admin_interface','0019_add_form_sticky','2023-11-04 23:13:58.854240'),(38,'admin_interface','0020_module_selected_colors','2023-11-04 23:13:58.898636'),(39,'admin_interface','0021_file_extension_validator','2023-11-04 23:13:58.904174'),(40,'admin_interface','0022_add_logo_max_width_and_height','2023-11-04 23:13:58.934159'),(41,'admin_interface','0023_theme_foldable_apps','2023-11-04 23:13:58.963977'),(42,'admin_interface','0024_remove_theme_css','2023-11-04 23:13:58.974481'),(43,'admin_interface','0025_theme_language_chooser_control','2023-11-04 23:13:58.994109'),(44,'admin_interface','0026_theme_list_filter_highlight','2023-11-04 23:13:59.013973'),(45,'admin_interface','0027_theme_list_filter_removal_links','2023-11-04 23:13:59.034345'),(46,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2023-11-04 23:13:59.073831'),(47,'admin_interface','0029_theme_css_generic_link_active_color','2023-11-04 23:13:59.094256'),(48,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2023-11-04 23:13:59.194475'),(49,'core','0001_initial','2023-11-04 23:13:59.254339'),(50,'core','0002_alter_cita_options_alter_cita_table','2023-11-04 23:13:59.264362'),(51,'core','0003_alter_tallermecanico_direccion_and_more','2023-11-04 23:13:59.343820'),(52,'core','0004_tallermecanico_atencion_tallermecanico_direction','2023-11-04 23:13:59.363853'),(53,'core','0005_remove_tallermecanico_atencion','2023-11-04 23:13:59.373661'),(54,'core','0006_remove_tallermecanico_direction_and_more','2023-11-04 23:13:59.396908'),(55,'core','0007_tallermecanico_usuario','2023-11-04 23:13:59.443913'),(56,'sessions','0001_initial','2023-11-04 23:13:59.473656'),(57,'user','0002_añadir','2023-11-04 23:13:59.483979'),(58,'user','0003_alter_añadir_table','2023-11-04 23:13:59.494932'),(59,'user','0004_delete_añadir','2023-11-04 23:13:59.503950'),(60,'user','0005_alter_car_linea_alter_car_marca_alter_car_tipo','2023-11-04 23:13:59.518911'),(61,'user','0006_alter_car_linea_alter_car_marca','2023-11-04 23:13:59.534014'),(62,'user','0007_alter_car_marca','2023-11-04 23:13:59.534014'),(63,'user','0008_alter_car_marca','2023-11-04 23:13:59.544106'),(64,'user','0009_diagnostico','2023-11-13 16:28:41.953740'),(65,'user','0010_alter_diagnostico_options_alter_diagnostico_table','2023-11-13 16:31:26.289386'),(66,'user','0011_servicio','2023-11-13 17:41:06.427341'),(67,'user','0012_alter_servicio_options_alter_servicio_table','2023-11-13 17:51:18.969357'),(68,'user','0013_remove_diagnostico_car','2023-11-17 13:19:09.770250'),(69,'user','0014_servicio_category_alter_diagnostico_car_part_and_more','2023-12-03 22:31:01.150320'),(70,'user','0015_factura','2023-12-07 04:17:18.033045'),(71,'user','0016_alter_factura_modo_pago','2023-12-07 04:17:18.083197'),(72,'user','0017_rename_referencia_factura_nombre','2023-12-07 04:17:18.100196'),(73,'user','0018_alter_factura_modo_pago','2023-12-07 04:17:18.114108'),(74,'core','0008_cita_usuario','2023-12-12 06:58:44.664640'),(75,'user','0019_alter_car_linea_alter_car_marca','2023-12-12 06:58:44.685641');
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
INSERT INTO `django_session` VALUES ('bi8o2cfyeiuvopd5ajy3ml8llql44vc4','.eJxVjEsKwzAMBe-idQmSbZyoy0LPYWRLxqGfRd2sQu9eDFm0y3nDvB2SbO-Wtm6vtCqcgeD0u2UpN3sOMXA6sE_Xh6z3yyH_iia9jR9lM8bqdVHKpMI5oxQMWFxVC67Y7KqLSFJnE-8DS8TInJdAXhE-X3LpMo8:1rD4S1:3nQL83fx--NlNfxuU-a0vJMDCHnYKhdQM8KHYw2TMjE','2023-12-26 15:13:37.460959');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Revision General','Revisión visual y preventiva de 87 puntos en los 9 sistemas más importantes del vehículo.',49500.00,NULL),(2,'Falla en el motor','Diagnóstico Fallos de Motor',110000.00,'Problema con el tensor de la cadena de distribución.'),(3,'Cambio de aceite','Aceite de Motor',286000.00,'Falla en los taqués del motor.'),(4,'Revision por kilometraje','También conocido como mantenimiento por kilometraje',450000.00,'Problema con el convertidor de par.'),(5,'Revisión de frenos','Mano de obra',35000.00,'Pastillas de freno desgastadas.'),(6,'Revisión de suspensión','Mano de obra',35000.00,'Amortiguadores defectuosos.'),(7,'Servicio de peritaje compra segura','Los reportes son digitales e incluyen una calificación del vehículo, diagramas y pruebas fotográficas.',110000.00,'Falla en los taqués del motor.'),(8,'Cambio de pastillas de frenos','Cambio de Pastillas Delanteras y Traseras',332000.00,'Pastillas de freno desgastadas.'),(9,'Alineación y balanceo','Mano de obra',95000.00,'Desgaste en los soportes de la transmisión.');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (1,'Autollantas','carrera 115 # 149b - 10','1236547899','8:00am - 6:00pm','ambio de aceite,Inspección de vehículos,Reparación de motores,Reparación de dirección y suspensión',1),(2,'Juan mecanicos','carrera 115 # 149b - 10','1236547899','8:00am - 6:00pm','ambio de aceite,Inspección de vehículos,Reparación de motores,Reparación de dirección y suspensión',1),(3,'Carlos automoviles','carrera 115 # 149b - 10','1236547899','8:00am - 6:00pm','ambio de aceite,Inspección de vehículos,Reparación de motores,Reparación de dirección y suspensión',1);
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_factura`
--

DROP TABLE IF EXISTS `user_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_factura` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `modo_pago` varchar(50) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_factura_user_id_39369247_fk_user_usercustom_id` (`user_id`),
  CONSTRAINT `user_factura_user_id_39369247_fk_user_usercustom_id` FOREIGN KEY (`user_id`) REFERENCES `user_usercustom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_factura`
--

LOCK TABLES `user_factura` WRITE;
/*!40000 ALTER TABLE `user_factura` DISABLE KEYS */;
INSERT INTO `user_factura` VALUES (1,'Eric','nequi','2023-12-07 04:18:27.833864',1),(2,'Eric','tarjeta_debito','2023-12-07 04:41:27.842062',1),(3,'Eric','nequi','2023-12-07 04:42:03.729498',1),(4,'Eric','nequi','2023-12-07 04:49:26.539911',3),(5,'Eric','nequi','2023-12-12 06:56:44.054924',1),(6,'Eric','nequi','2023-12-12 06:59:17.818519',1),(7,'Eric','nequi','2023-12-12 07:01:55.486117',1),(8,'Eric','nequi','2023-12-12 07:17:04.886179',1),(9,'eric15casas@gmail.com','tarjeta_debito','2023-12-12 14:48:39.742283',3),(10,'eric15casas@gmail.com','nequi','2023-12-12 15:00:10.805182',4),(11,'eric15casas@gmail.com','nequi','2023-12-12 15:07:50.863177',4),(12,'eric15casas@gmail.com','nequi','2023-12-12 15:13:37.454685',1);
/*!40000 ALTER TABLE `user_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_factura_servicios`
--

DROP TABLE IF EXISTS `user_factura_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_factura_servicios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `factura_id` bigint(20) NOT NULL,
  `servicio_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_factura_servicios_factura_id_servicio_id_114e822a_uniq` (`factura_id`,`servicio_id`),
  KEY `user_factura_servicios_servicio_id_85f411fb_fk_servicio_id` (`servicio_id`),
  CONSTRAINT `user_factura_servicios_factura_id_adcb0b55_fk_user_factura_id` FOREIGN KEY (`factura_id`) REFERENCES `user_factura` (`id`),
  CONSTRAINT `user_factura_servicios_servicio_id_85f411fb_fk_servicio_id` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_factura_servicios`
--

LOCK TABLES `user_factura_servicios` WRITE;
/*!40000 ALTER TABLE `user_factura_servicios` DISABLE KEYS */;
INSERT INTO `user_factura_servicios` VALUES (1,1,2),(2,2,1),(3,2,3),(4,3,2),(5,3,3),(6,4,1),(7,4,3),(8,5,2),(9,5,3),(10,6,2),(11,6,3),(12,7,2),(13,7,3),(14,8,1),(15,8,2),(16,9,2),(17,9,7),(19,10,1),(18,10,8),(20,11,2),(21,11,3),(22,12,2),(23,12,3),(24,12,7);
/*!40000 ALTER TABLE `user_factura_servicios` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_usercustom`
--

LOCK TABLES `user_usercustom` WRITE;
/*!40000 ALTER TABLE `user_usercustom` DISABLE KEYS */;
INSERT INTO `user_usercustom` VALUES (1,'pbkdf2_sha256$600000$qma2oIj78SbBKsgoKxkqTj$1u5KjSZdUUuQjm5n3KOrXlEarBTjEEMDJGn8kUgY3kw=','2023-12-12 15:12:39.698586',0,'EricCasas','','','escasas37@soy.sena.edu.co',0,1,'2023-11-04 23:14:28.465972',NULL),(2,'pbkdf2_sha256$600000$4ZSBfERTFBZoz8HfiusiOO$2o6yJtHOOy88JEyL2S7WmaFAjBHQcACQuJZLpjLc6tY=','2023-11-24 22:29:39.171230',0,'Eric','','','eric123@gmail.com',0,1,'2023-11-24 22:01:16.052230',NULL),(3,'pbkdf2_sha256$600000$fMOFYQ6Ff8KA6aRFH60WfC$4qpJ4//eWrQ+IiG6rD+QEmZskt5i665t7nvEhouNhdI=','2023-12-12 14:47:02.804411',0,'Eri','','','eric15casas@gmail.com',0,1,'2023-12-07 04:47:53.542413',NULL),(4,'pbkdf2_sha256$600000$1cOlptw621eyo7s47Z35HJ$YZ7zTYIxWdVhUNl/CGdZKoHKkZCoOI4vAeAQ1/+qyYA=','2023-12-12 14:53:54.642880',0,'JuanitoPerez','','','andresfelipecasasmontes11@gmail.com',0,1,'2023-12-12 14:53:42.546296',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,'RayoMcQueen','Toyota','Corolla',2020,'HDC200','gasolina',54000,0,1),(2,'sandero','Toyota','Prius',2014,'HXS495','gasolina',75000,0,1),(3,'RayoMcQueen','Ford','Mustang',2021,'HCK002','gasolina',56000,0,1),(4,'RayoMcQueen','Ford','Mustang',2023,'HCK002','gasolina',45000,0,3),(5,'RayoMcQueen','Chevrolet','Malibu',2014,'HCK002','gasolina',80000,1,4);
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

-- Dump completed on 2023-12-13  9:31:51
