-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: blogdb
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add categoria',6,'add_categoria'),(22,'Can change categoria',6,'change_categoria'),(23,'Can delete categoria',6,'delete_categoria'),(24,'Can view categoria',6,'view_categoria'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add contacto',8,'add_contacto'),(30,'Can change contacto',8,'change_contacto'),(31,'Can delete contacto',8,'delete_contacto'),(32,'Can view contacto',8,'view_contacto'),(33,'Can add user',9,'add_usuario'),(34,'Can change user',9,'change_usuario'),(35,'Can delete user',9,'delete_usuario'),(36,'Can view user',9,'view_usuario'),(37,'Can add perfil',10,'add_perfil'),(38,'Can change perfil',10,'change_perfil'),(39,'Can delete perfil',10,'delete_perfil'),(40,'Can view perfil',10,'view_perfil'),(41,'Can add comentario',11,'add_comentario'),(42,'Can change comentario',11,'change_comentario'),(43,'Can delete comentario',11,'delete_comentario'),(44,'Can view comentario',11,'view_comentario');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto_contacto`
--

DROP TABLE IF EXISTS `contacto_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto_contacto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(120) NOT NULL,
  `email` varchar(254) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_contacto`
--

LOCK TABLES `contacto_contacto` WRITE;
/*!40000 ALTER TABLE `contacto_contacto` DISABLE KEYS */;
INSERT INTO `contacto_contacto` VALUES (1,'elias','eliasvnoguera@gmail.com','Promociones','fghfghfgh','2024-10-13 02:01:00.706605');
/*!40000 ALTER TABLE `contacto_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_usuario_usuario_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usuario_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `usuario_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-10 01:39:05.903024','1','Finanzas personales',1,'[{\"added\": {}}]',6,1),(2,'2024-10-10 01:40:36.071636','1','¿Cómo gestionar mejor tus finanzas personales?',1,'[{\"added\": {}}]',7,1),(3,'2024-10-10 01:41:23.174025','2','Educación financiera',1,'[{\"added\": {}}]',6,1),(4,'2024-10-10 01:41:59.592523','2','La importancia de la educación financiera desde te',1,'[{\"added\": {}}]',7,1),(5,'2024-10-10 01:42:44.477115','3','Inversiones',1,'[{\"added\": {}}]',6,1),(6,'2024-10-10 01:44:17.094596','3','Inversiones: cómo empezar en la bolsa sin riesgos',1,'[{\"added\": {}}]',7,1),(7,'2024-10-10 01:44:49.542027','4','Economía',1,'[{\"added\": {}}]',6,1),(8,'2024-10-10 01:45:52.063494','4','La inflación: ¿cómo afecta tu bolsillo y qué puede',1,'[{\"added\": {}}]',7,1),(9,'2024-10-10 03:09:52.265682','6','Comentario de opa en La inflación: ¿cómo afecta tu bolsillo y qué puede',3,'',11,1),(10,'2024-10-10 03:09:52.265682','5','Comentario de opa en ¿Cómo gestionar mejor tus finanzas personales?',3,'',11,1),(11,'2024-10-10 03:09:52.265682','4','Comentario de opa en La inflación: ¿cómo afecta tu bolsillo y qué puede',3,'',11,1),(12,'2024-10-10 03:09:52.265682','3','Comentario de opa en La importancia de la educación financiera desde te',3,'',11,1),(13,'2024-10-10 03:09:52.265682','2','Comentario de opa en Inversiones: cómo empezar en la bolsa sin riesgos',3,'',11,1),(14,'2024-10-10 03:09:52.265682','1','Comentario de opa en La inflación: ¿cómo afecta tu bolsillo y qué puede',3,'',11,1),(15,'2024-10-12 17:48:30.521403','2','elias',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(8,'contacto','contacto'),(4,'contenttypes','contenttype'),(6,'posts','categoria'),(11,'posts','comentario'),(7,'posts','post'),(5,'sessions','session'),(10,'usuario','perfil'),(9,'usuario','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-07 14:22:17.309457'),(2,'contenttypes','0002_remove_content_type_name','2024-10-07 14:22:17.333276'),(3,'auth','0001_initial','2024-10-07 14:22:17.410771'),(4,'auth','0002_alter_permission_name_max_length','2024-10-07 14:22:17.420956'),(5,'auth','0003_alter_user_email_max_length','2024-10-07 14:22:17.434757'),(6,'auth','0004_alter_user_username_opts','2024-10-07 14:22:17.437573'),(7,'auth','0005_alter_user_last_login_null','2024-10-07 14:22:17.440581'),(8,'auth','0006_require_contenttypes_0002','2024-10-07 14:22:17.441585'),(9,'auth','0007_alter_validators_add_error_messages','2024-10-07 14:22:17.443666'),(10,'auth','0008_alter_user_username_max_length','2024-10-07 14:22:17.447420'),(11,'auth','0009_alter_user_last_name_max_length','2024-10-07 14:22:17.449682'),(12,'auth','0010_alter_group_name_max_length','2024-10-07 14:22:17.458936'),(13,'auth','0011_update_proxy_permissions','2024-10-07 14:22:17.462181'),(14,'auth','0012_alter_user_first_name_max_length','2024-10-07 14:22:17.465379'),(15,'usuario','0001_initial','2024-10-07 14:22:17.548718'),(16,'admin','0001_initial','2024-10-07 14:22:17.584487'),(17,'admin','0002_logentry_remove_auto_add','2024-10-07 14:22:17.589626'),(18,'admin','0003_logentry_add_action_flag_choices','2024-10-07 14:22:17.592638'),(19,'contacto','0001_initial','2024-10-07 14:22:17.598006'),(20,'posts','0001_initial','2024-10-07 14:22:17.623079'),(21,'sessions','0001_initial','2024-10-07 14:22:17.638248'),(22,'usuario','0002_perfil','2024-10-09 19:12:53.950254'),(23,'posts','0002_comentario','2024-10-10 01:31:56.896727');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('azigo78ytv9ym271jm85tcnysc2m0zx1','e30:1syew8:Euyjq_123qWiNTR-b2oWiGrpbG1C3aOExEPSIMwFzVU','2024-10-23 22:13:40.235784'),('mfzetuclfl4tbx1lvd549034s5cshm36','e30:1syc4U:LrqrNuQ8gCqrEQ8S7tyjdzjvWD0VD1jVidtTFSFvgdI','2024-10-23 19:10:06.503347'),('pbdpjb5uvlpy8vavbjtoqdp4b8sk3or8','e30:1syc7k:dc6CvxCTQvsDSb5CKAg7asSYC-M87-uYFOdXPs_n1FA','2024-10-23 19:13:28.355405');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_categoria`
--

DROP TABLE IF EXISTS `posts_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categoria`
--

LOCK TABLES `posts_categoria` WRITE;
/*!40000 ALTER TABLE `posts_categoria` DISABLE KEYS */;
INSERT INTO `posts_categoria` VALUES (1,'Finanzas personales'),(2,'Educación financiera'),(3,'Inversiones'),(4,'Economía');
/*!40000 ALTER TABLE `posts_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_comentario`
--

DROP TABLE IF EXISTS `posts_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_comentario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contenido` longtext NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_comentario_post_id_71493713_fk_posts_post_id` (`post_id`),
  KEY `posts_comentario_usuario_id_4109e7c7_fk_usuario_usuario_id` (`usuario_id`),
  CONSTRAINT `posts_comentario_post_id_71493713_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`),
  CONSTRAINT `posts_comentario_usuario_id_4109e7c7_fk_usuario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_comentario`
--

LOCK TABLES `posts_comentario` WRITE;
/*!40000 ALTER TABLE `posts_comentario` DISABLE KEYS */;
INSERT INTO `posts_comentario` VALUES (8,'hola','2024-10-10 03:18:54.313647',3,3),(9,'dfgdfgdf','2024-10-10 03:24:58.480677',2,3),(10,'dfgdfgdfg','2024-10-10 03:28:40.913074',1,3),(14,'dfgdfg','2024-10-10 03:45:17.081474',1,3),(16,'sdfsdfsd','2024-10-10 03:46:16.468826',2,3),(17,'hola','2024-10-12 17:16:05.991265',4,3);
/*!40000 ALTER TABLE `posts_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_post`
--

DROP TABLE IF EXISTS `posts_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(100) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `texto` longtext NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `publicado` datetime(6) NOT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_post_categoria_id_0e6fe4e1_fk_posts_categoria_id` (`categoria_id`),
  CONSTRAINT `posts_post_categoria_id_0e6fe4e1_fk_posts_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `posts_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_post`
--

LOCK TABLES `posts_post` WRITE;
/*!40000 ALTER TABLE `posts_post` DISABLE KEYS */;
INSERT INTO `posts_post` VALUES (1,'¿Cómo gestionar mejor tus finanzas personales?','Estrategias simples para optimizar tu presupuesto mensual','2024-10-09 01:40:36.068882','Administrar tus ingresos y gastos puede parecer abrumador, pero con algunos consejos prácticos puedes tener un mejor control de tu dinero. Aprende a crear un presupuesto, reducir deudas y aumentar tus ahorros de manera eficiente.',1,'media/Finanzas_personales.jpg','2024-10-10 01:33:58.000000',1),(2,'La importancia de la educación financiera desde te','Cómo preparar a los jóvenes para un futuro financiero estable','2024-10-10 01:41:59.591491','La educación financiera debería ser parte fundamental de la formación escolar. Enseñar a los niños y adolescentes a manejar el dinero puede prevenir problemas financieros en su vida adulta y fomentar hábitos saludables desde el principio.',1,'media/EducacionFinanciera.jpg','2024-10-10 01:40:36.000000',2),(3,'Inversiones: cómo empezar en la bolsa sin riesgos','Guía básica para principiantes en el mercado bursátil','2024-10-08 01:44:17.093596','La inversión en acciones puede parecer compleja y arriesgada para quienes recién comienzan. En este artículo te contamos los primeros pasos para invertir de forma segura, diversificando tu cartera y entendiendo los riesgos asociados.',1,'media/Inversiones.png','2024-10-10 01:41:59.000000',3),(4,'La inflación: ¿cómo afecta tu bolsillo y qué puede','Consejos para proteger tus finanzas en tiempos de inflación','2024-10-06 01:45:52.061177','La inflación reduce el poder adquisitivo de tu dinero. Descubre estrategias para mitigar su impacto en tus finanzas personales, como invertir en activos seguros y ajustar tu presupuesto de manera inteligente.',1,'media/inflacion.jpg','2024-10-10 01:44:17.000000',4),(14,'Los Fondos de Inversión','Ventajas y desventajas de invertir en fondos de inversión','2024-10-12 21:15:25.804422','Los fondos de inversión se han convertido en una opción popular para quienes buscan diversificar sus ahorros sin la necesidad de gestionar activamente sus inversiones. Este artículo explora qué son los fondos de inversión, sus tipos, y cómo pueden ayudarte a alcanzar tus metas financieras a largo plazo.',1,'media/Inversiones_0Om3Kwk.png','2024-10-12 21:15:25.766582',3);
/*!40000 ALTER TABLE `posts_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_perfil`
--

DROP TABLE IF EXISTS `usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_perfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `perfil_tipo` varchar(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `usuario_perfil_user_id_8bc186fc_fk_usuario_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `usuario_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_perfil`
--

LOCK TABLES `usuario_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_perfil` DISABLE KEYS */;
INSERT INTO `usuario_perfil` VALUES (2,'visitante',1),(3,'miembro',3),(4,'colaborador',4);
/*!40000 ALTER TABLE `usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_usuario`
--

DROP TABLE IF EXISTS `usuario_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_usuario` (
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
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_usuario`
--

LOCK TABLES `usuario_usuario` WRITE;
/*!40000 ALTER TABLE `usuario_usuario` DISABLE KEYS */;
INSERT INTO `usuario_usuario` VALUES (1,'pbkdf2_sha256$870000$Ny7pVH6uTIP4s1VRUpGZkk$xZ3uZOa83vAVvguO9yyLH68b7bnhgVS+9q7R0eb5ogI=','2024-10-19 22:33:03.785728',1,'root','','','root@root.com',1,1,'2024-10-08 00:39:51.568456','usuario/user-default.jpg'),(3,'pbkdf2_sha256$870000$DWBALozLWSssQetM2TfDbt$9GrBW7zmAsg8wB11vQULKuIOCTGSfRJiI8AXxjVBzO0=','2024-10-15 00:24:32.715887',0,'brenda','','','',0,1,'2024-10-09 22:31:47.559842','usuario/user-default.jpg'),(4,'pbkdf2_sha256$870000$tV3WR2fQbIuION1XQ6hyBg$lNSqFYcJ8V1lk3MgZZbfLXXkOjVfFWD/pgOsMV9CP14=','2024-10-15 00:26:21.872207',0,'elias','elias','noguera','eliasvnoguera@gmail.com',0,1,'2024-10-12 17:50:06.836338','usuario/user-default.jpg');
/*!40000 ALTER TABLE `usuario_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_usuario_groups`
--

DROP TABLE IF EXISTS `usuario_usuario_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_usuario_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq` (`usuario_id`,`group_id`),
  KEY `usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id` (`group_id`),
  CONSTRAINT `usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `usuario_usuario_groups_usuario_id_62de76a1_fk_usuario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_usuario_groups`
--

LOCK TABLES `usuario_usuario_groups` WRITE;
/*!40000 ALTER TABLE `usuario_usuario_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_usuario_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_usuario_user_permissions`
--

DROP TABLE IF EXISTS `usuario_usuario_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_usuario_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq` (`usuario_id`,`permission_id`),
  KEY `usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm` (`permission_id`),
  CONSTRAINT `usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `usuario_usuario_user_usuario_id_5969a193_fk_usuario_u` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_usuario_user_permissions`
--

LOCK TABLES `usuario_usuario_user_permissions` WRITE;
/*!40000 ALTER TABLE `usuario_usuario_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_usuario_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 22:50:37
