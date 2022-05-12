-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple-mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `title`) VALUES
(1, 'Stuff'),
(2, 'Doodads');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `adresse` varchar(80) NOT NULL,
    `pseudo` varchar(80) NOT NULL,
  `ville` varchar(80) NOT NULL,
  `cp` int NOT NULL,
  `tel` int NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY(`id`)

CREATE TABLE `donation` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`brand` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`description` TEXT NOT NULL,
	`created_at` DATETIME,
	`is_functional` BIGINT,
  `user_id` INT DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE `donation` ADD CONSTRAINT `fk_donation_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of brands
-- ----------------------------
BEGIN;
INSERT INTO `brands` VALUES (1, 'Nokia', NULL, NULL, '2021-09-07 12:33:57', '2021-09-07 12:33:57');
INSERT INTO `brands` VALUES (2, 'alcatel', NULL, NULL, '2021-09-07 12:34:38', '2021-09-07 12:34:38');
INSERT INTO `brands` VALUES (3, 'Benefon', NULL, NULL, '2021-09-07 12:35:17', '2021-09-07 12:35:17');
INSERT INTO `brands` VALUES (4, 'Samsung', NULL, NULL, '2021-09-07 12:35:31', '2021-09-07 12:35:31');
INSERT INTO `brands` VALUES (5, 'Mitsubishi', NULL, NULL, '2021-09-07 12:35:53', '2021-09-07 12:35:53');
INSERT INTO `brands` VALUES (6, 'Motorola', NULL, NULL, '2021-09-07 12:36:16', '2021-09-07 12:36:16');
INSERT INTO `brands` VALUES (7, 'Siemens', NULL, NULL, '2021-09-07 12:37:02', '2021-09-07 12:37:02');
INSERT INTO `brands` VALUES (8, 'Ericsson', NULL, NULL, '2021-09-07 12:37:30', '2021-09-07 12:37:30');
INSERT INTO `brands` VALUES (9, 'Panasonic', NULL, NULL, '2021-09-07 12:38:32', '2021-09-07 12:38:32');
INSERT INTO `brands` VALUES (10, 'Sony', NULL, NULL, '2021-09-07 12:38:47', '2021-09-07 12:38:47');
INSERT INTO `brands` VALUES (11, 'Bosch', NULL, NULL, '2021-09-07 12:39:03', '2021-09-07 12:39:03');
INSERT INTO `brands` VALUES (12, 'Philips', NULL, NULL, '2021-09-07 12:39:25', '2021-09-07 12:39:25');
INSERT INTO `brands` VALUES (13, 'NEC', NULL, NULL, '2021-09-07 12:39:52', '2021-09-07 12:39:52');
INSERT INTO `brands` VALUES (14, 'Sagem', NULL, NULL, '2021-09-07 12:40:02', '2021-09-07 12:40:02');
INSERT INTO `brands` VALUES (15, 'Maxon', NULL, NULL, '2021-09-07 12:40:28', '2021-09-07 12:40:28');
INSERT INTO `brands` VALUES (16, 'Kyocera', NULL, NULL, '2021-09-07 12:41:04', '2021-09-07 12:41:04');
INSERT INTO `brands` VALUES (17, 'Telit', NULL, NULL, '2021-09-07 12:41:07', '2021-09-07 12:41:07');
INSERT INTO `brands` VALUES (18, 'Sendo', NULL, NULL, '2021-09-07 12:42:27', '2021-09-07 12:42:27');
INSERT INTO `brands` VALUES (19, 'LG', NULL, NULL, '2021-09-07 12:49:00', '2021-09-07 12:49:00');
INSERT INTO `brands` VALUES (20, 'Tel.Me.', NULL, NULL, '2021-09-07 12:49:07', '2021-09-07 12:49:07');
INSERT INTO `brands` VALUES (21, 'Neonode', NULL, NULL, '2021-09-07 12:49:19', '2021-09-07 12:49:19');
INSERT INTO `brands` VALUES (22, 'Sharp', NULL, NULL, '2021-09-08 06:24:58', '2021-09-08 06:24:58');
INSERT INTO `brands` VALUES (23, 'Chea', NULL, NULL, '2021-09-08 06:26:22', '2021-09-08 06:26:22');
INSERT INTO `brands` VALUES (24, 'Mitac', NULL, NULL, '2021-09-08 06:34:34', '2021-09-08 06:34:34');
INSERT INTO `brands` VALUES (25, 'Sewon', NULL, NULL, '2021-09-08 06:35:16', '2021-09-08 06:35:16');
INSERT INTO `brands` VALUES (26, 'Palm', NULL, NULL, '2021-09-08 06:35:39', '2021-09-08 06:35:39');
INSERT INTO `brands` VALUES (27, 'Amoi', NULL, NULL, '2021-09-08 06:36:08', '2021-09-08 06:36:08');
INSERT INTO `brands` VALUES (28, 'Innostream', NULL, NULL, '2021-09-08 06:37:15', '2021-09-08 06:37:15');
INSERT INTO `brands` VALUES (29, 'O2', NULL, NULL, '2021-09-08 06:38:36', '2021-09-08 06:38:36');
INSERT INTO `brands` VALUES (30, 'BenQ', NULL, NULL, '2021-09-08 06:40:45', '2021-09-08 06:40:45');
INSERT INTO `brands` VALUES (31, 'Pantech', NULL, NULL, '2021-09-08 06:41:20', '2021-09-08 06:41:20');
INSERT INTO `brands` VALUES (32, 'Haier', NULL, NULL, '2021-09-08 06:44:08', '2021-09-08 06:44:08');
INSERT INTO `brands` VALUES (33, 'Bird', NULL, NULL, '2021-09-08 06:48:37', '2021-09-08 06:48:37');
INSERT INTO `brands` VALUES (34, 'i-mate', NULL, NULL, '2021-09-08 06:48:56', '2021-09-08 06:48:56');
INSERT INTO `brands` VALUES (35, 'BlackBerry', NULL, NULL, '2021-09-08 06:50:51', '2021-09-08 06:50:51');
INSERT INTO `brands` VALUES (36, 'VK', NULL, NULL, '2021-09-08 06:51:35', '2021-09-08 06:51:35');
INSERT INTO `brands` VALUES (37, 'Qtek', NULL, NULL, '2021-09-08 06:57:25', '2021-09-08 06:57:25');
INSERT INTO `brands` VALUES (38, 'Vertu', NULL, NULL, '2021-09-08 06:59:49', '2021-09-08 06:59:49');
INSERT INTO `brands` VALUES (39, 'Eten', NULL, NULL, '2021-09-08 07:00:01', '2021-09-08 07:00:01');
INSERT INTO `brands` VALUES (40, 'HP', NULL, NULL, '2021-09-08 07:03:27', '2021-09-08 07:03:27');
INSERT INTO `brands` VALUES (41, 'BenQ-Siemens', NULL, NULL, '2021-09-08 07:07:56', '2021-09-08 07:07:56');
INSERT INTO `brands` VALUES (42, 'XCute', NULL, NULL, '2021-09-08 07:10:54', '2021-09-08 07:10:54');
INSERT INTO `brands` VALUES (43, 'Toshiba', NULL, NULL, '2021-09-08 07:12:58', '2021-09-08 07:12:58');
INSERT INTO `brands` VALUES (44, 'HTC', NULL, NULL, '2021-09-08 07:18:40', '2021-09-08 07:18:40');
INSERT INTO `brands` VALUES (45, 'Asus', NULL, NULL, '2021-09-08 07:21:42', '2021-09-08 07:21:42');
INSERT INTO `brands` VALUES (46, 'Gigabyte', NULL, NULL, '2021-09-08 07:22:27', '2021-09-08 07:22:27');
INSERT INTO `brands` VALUES (47, 'Apple', NULL, NULL, '2021-09-08 07:25:59', '2021-09-08 07:25:59');
INSERT INTO `brands` VALUES (48, 'Thuraya', NULL, NULL, '2021-09-08 07:30:31', '2021-09-08 07:30:31');
INSERT INTO `brands` VALUES (49, 'Fujitsu', NULL, NULL, '2021-09-08 07:31:45', '2021-09-08 07:31:45');
INSERT INTO `brands` VALUES (50, 'WND', NULL, NULL, '2021-09-08 07:46:19', '2021-09-08 07:46:19');
INSERT INTO `brands` VALUES (51, 'T-Mobile', NULL, NULL, '2021-09-08 07:47:55', '2021-09-08 07:47:55');
INSERT INTO `brands` VALUES (52, 'i-mobile', NULL, NULL, '2021-09-08 13:05:42', '2021-09-08 13:05:42');
INSERT INTO `brands` VALUES (53, 'Vodafone', NULL, NULL, '2021-09-08 13:07:35', '2021-09-08 13:07:35');
INSERT INTO `brands` VALUES (54, 'Sonim', NULL, NULL, '2021-09-08 13:08:27', '2021-09-08 13:08:27');
INSERT INTO `brands` VALUES (55, 'MWg', NULL, NULL, '2021-09-08 13:11:25', '2021-09-08 13:11:25');
INSERT INTO `brands` VALUES (56, 'AT&T', NULL, NULL, '2021-09-08 13:12:47', '2021-09-08 13:12:47');
INSERT INTO `brands` VALUES (57, 'Huawei', NULL, NULL, '2021-09-08 13:13:41', '2021-09-08 13:13:41');
INSERT INTO `brands` VALUES (58, 'Acer', NULL, NULL, '2021-09-08 13:16:57', '2021-09-08 13:16:57');
INSERT INTO `brands` VALUES (59, 'Garmin-Asus', NULL, NULL, '2021-09-08 13:17:11', '2021-09-08 13:17:11');
INSERT INTO `brands` VALUES (60, 'iNQ', NULL, NULL, '2021-09-08 13:41:43', '2021-09-08 13:41:43');
INSERT INTO `brands` VALUES (61, 'Dell', NULL, NULL, '2021-09-08 13:42:05', '2021-09-08 13:42:05');
INSERT INTO `brands` VALUES (62, 'ZTE', NULL, NULL, '2021-09-08 13:45:14', '2021-09-08 13:45:14');
INSERT INTO `brands` VALUES (63, 'Modu', NULL, NULL, '2021-09-08 13:49:47', '2021-09-08 13:49:47');
INSERT INTO `brands` VALUES (64, 'Microsoft', NULL, NULL, '2021-09-08 13:50:35', '2021-09-08 13:50:35');
INSERT INTO `brands` VALUES (65, 'Micromax', NULL, NULL, '2021-09-08 13:51:55', '2021-09-08 13:51:55');
INSERT INTO `brands` VALUES (66, 'BLU', NULL, NULL, '2021-09-08 14:00:12', '2021-09-08 14:00:12');
INSERT INTO `brands` VALUES (67, 'Spice', NULL, NULL, '2021-09-08 14:03:10', '2021-09-08 14:03:10');
INSERT INTO `brands` VALUES (68, 'Icemobile', NULL, NULL, '2021-09-09 06:25:43', '2021-09-09 06:25:43');
INSERT INTO `brands` VALUES (69, 'verykool', NULL, NULL, '2021-09-09 06:27:02', '2021-09-09 06:27:02');
INSERT INTO `brands` VALUES (70, 'Orange', NULL, NULL, '2021-09-09 12:52:44', '2021-09-09 12:52:44');
INSERT INTO `brands` VALUES (71, 'Plum', NULL, NULL, '2021-09-09 12:56:11', '2021-09-09 12:56:11');
INSERT INTO `brands` VALUES (72, 'Honor', NULL, NULL, '2021-09-09 12:58:13', '2021-09-09 12:58:13');
INSERT INTO `brands` VALUES (73, 'Meizu', NULL, NULL, '2021-09-09 13:42:32', '2021-09-09 13:42:32');
INSERT INTO `brands` VALUES (74, 'Lenovo', NULL, NULL, '2021-09-09 13:44:41', '2021-09-09 13:44:41');
INSERT INTO `brands` VALUES (75, 'Celkon', NULL, NULL, '2021-09-09 13:46:47', '2021-09-09 13:46:47');
INSERT INTO `brands` VALUES (76, 'Amazon', NULL, NULL, '2021-09-09 13:48:53', '2021-09-09 13:48:53');
INSERT INTO `brands` VALUES (77, 'Casio', NULL, NULL, '2021-09-09 13:50:04', '2021-09-09 13:50:04');
INSERT INTO `brands` VALUES (78, 'NIU', NULL, NULL, '2021-09-09 13:55:40', '2021-09-09 13:55:40');
INSERT INTO `brands` VALUES (79, 'Yezz', NULL, NULL, '2021-09-09 13:56:16', '2021-09-09 13:56:16');
INSERT INTO `brands` VALUES (80, 'Xiaomi', NULL, NULL, '2021-09-09 14:07:42', '2021-09-09 14:07:42');
INSERT INTO `brands` VALUES (81, 'Parla', NULL, NULL, '2021-09-09 14:11:51', '2021-09-09 14:11:51');
INSERT INTO `brands` VALUES (82, 'Oppo', NULL, NULL, '2021-09-09 14:18:40', '2021-09-09 14:18:40');
INSERT INTO `brands` VALUES (83, 'Karbonn', NULL, NULL, '2021-09-09 14:19:21', '2021-09-09 14:19:21');
INSERT INTO `brands` VALUES (84, 'Jolla', NULL, NULL, '2021-09-09 14:31:51', '2021-09-09 14:31:51');
INSERT INTO `brands` VALUES (85, 'XOLO', NULL, NULL, '2021-09-09 14:35:05', '2021-09-09 14:35:05');
INSERT INTO `brands` VALUES (86, 'Prestigio', NULL, NULL, '2021-09-09 14:36:33', '2021-09-09 14:36:33');
INSERT INTO `brands` VALUES (87, 'Maxwest', NULL, NULL, '2021-09-09 16:45:31', '2021-09-09 16:45:31');
INSERT INTO `brands` VALUES (88, 'Cat', NULL, NULL, '2021-09-09 21:45:59', '2021-09-09 21:45:59');
INSERT INTO `brands` VALUES (89, 'Allview', NULL, NULL, '2021-09-09 21:46:29', '2021-09-09 21:46:29');
INSERT INTO `brands` VALUES (90, 'Unnecto', NULL, NULL, '2021-09-09 21:46:40', '2021-09-09 21:46:40');
INSERT INTO `brands` VALUES (91, 'Archos', NULL, NULL, '2021-09-09 21:48:50', '2021-09-09 21:48:50');
INSERT INTO `brands` VALUES (92, 'Gionee', NULL, NULL, '2021-09-09 21:50:01', '2021-09-09 21:50:01');
INSERT INTO `brands` VALUES (93, 'Emporia', NULL, NULL, '2021-09-09 21:55:52', '2021-09-09 21:55:52');
INSERT INTO `brands` VALUES (94, 'Lava', NULL, NULL, '2021-09-09 21:57:09', '2021-09-09 21:57:09');
INSERT INTO `brands` VALUES (95, 'OnePlus', NULL, NULL, '2021-09-09 22:00:03', '2021-09-09 22:00:03');
INSERT INTO `brands` VALUES (96, 'Wiko', NULL, NULL, '2021-09-09 22:05:45', '2021-09-09 22:05:45');
INSERT INTO `brands` VALUES (97, 'Nvidia', NULL, NULL, '2021-09-09 22:11:23', '2021-09-09 22:11:23');
INSERT INTO `brands` VALUES (98, 'vivo', NULL, NULL, '2021-09-09 22:19:51', '2021-09-09 22:19:51');
INSERT INTO `brands` VALUES (99, 'Yota', NULL, NULL, '2021-09-09 22:27:06', '2021-09-09 22:27:06');
INSERT INTO `brands` VALUES (100, 'YU', NULL, NULL, '2021-09-09 22:28:14', '2021-09-09 22:28:14');
INSERT INTO `brands` VALUES (101, 'Posh', NULL, NULL, '2021-09-09 22:36:12', '2021-09-09 22:36:12');
INSERT INTO `brands` VALUES (102, 'Intex', NULL, NULL, '2021-09-09 22:41:57', '2021-09-09 22:41:57');
INSERT INTO `brands` VALUES (103, 'QMobile', NULL, NULL, '2021-09-09 22:42:36', '2021-09-09 22:42:36');
INSERT INTO `brands` VALUES (104, 'Coolpad', NULL, NULL, '2021-09-09 22:52:29', '2021-09-09 22:52:29');
INSERT INTO `brands` VALUES (105, 'Energizer', NULL, NULL, '2021-09-09 22:59:31', '2021-09-09 22:59:31');
INSERT INTO `brands` VALUES (106, 'Google', NULL, NULL, '2021-09-09 23:04:55', '2021-09-09 23:04:55');
INSERT INTO `brands` VALUES (107, 'BQ', NULL, NULL, '2021-09-09 23:05:21', '2021-09-09 23:05:21');
INSERT INTO `brands` VALUES (108, 'LeEco', NULL, NULL, '2021-09-09 23:14:44', '2021-09-09 23:14:44');
INSERT INTO `brands` VALUES (109, 'Razer', NULL, NULL, '2021-09-09 23:52:40', '2021-09-09 23:52:40');
INSERT INTO `brands` VALUES (110, 'Blackview', NULL, NULL, '2021-09-09 23:57:37', '2021-09-09 23:57:37');
INSERT INTO `brands` VALUES (111, 'Ulefone', NULL, NULL, '2021-09-10 00:00:19', '2021-09-10 00:00:19');
INSERT INTO `brands` VALUES (112, 'Realme', NULL, NULL, '2021-09-10 00:04:37', '2021-09-10 00:04:37');
INSERT INTO `brands` VALUES (113, 'Infinix', NULL, NULL, '2021-09-10 00:14:16', '2021-09-10 00:14:16');
INSERT INTO `brands` VALUES (114, 'Tecno', NULL, NULL, '2021-09-10 00:15:14', '2021-09-10 00:15:14');
INSERT INTO `brands` VALUES (115, 'TCL', NULL, NULL, '2021-09-10 00:33:05', '2021-09-10 00:33:05');
INSERT INTO `brands` VALUES (116, 'Fairphone', NULL, NULL, '2021-09-10 00:42:41', '2021-09-10 00:42:41');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for models
-- ----------------------------
DROP TABLE IF EXISTS `models`;
CREATE TABLE `models`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `brand_id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9929 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

ALTER TABLE `models` ADD CONSTRAINT `fk_models_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ----------------------------
-- Records of models
-- ----------------------------
INSERT INTO `models` VALUES (1, 1, 'C1');



SET FOREIGN_KEY_CHECKS = 1;


SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `released_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_resolution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `camera_pixels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_pixels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `battery_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `battery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url_hash` (`url_hash`),
  KEY `brand_id` (`brand_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10634 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `devices` ADD CONSTRAINT `fk_devices_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Records of devices
-- ----------------------------

INSERT INTO `devices` VALUES (1, '9ff118f1352e19ee1d356e5af65662a7', 1, 'Nokia 3210', 'https://fdn2.gsmarena.com/vv/bigpic/no3210b.gif', 'Released 1999', '151g, 22.5mm thickness', 'Feature phone', 'No card slot', '&nbsp;', '5 lines', 'NO         ', 'No video recorder', '&nbsp; ', '', '&nbsp;', 'Li-Ion', '{\"Technology\":\"GSM\",\"2G bands\":\"GSM 900 \\/ 1800 \",\"GPRS\":\"No\",\"EDGE\":\"No\",\"Announced\":\"1999\",\"Status\":\"Discontinued\",\"Dimensions\":\"123.8 x 50.5 x 16.7-22.5 mm\",\"Weight\":\"151 g (5.33 oz)\",\"SIM\":\"Mini-SIM\",\"Type\":\"Removable Li-Ion battery\",\"Size\":\"\",\"Resolution\":\"5 lines\",\"&nbsp;\":\"Predictive text input\\r\\n  Smart messaging (Over the Air SMS) \\r\\n  Calculator\",\"Card slot\":\"No\",\"Phonebook\":\"SIM only\",\"Call records\":\"8 dialed, 8 received, 8 missed calls\",\"Loudspeaker \":\"No\",\"Alert types\":\"Downloadable monophonic ringtones, composer\",\"3.5mm jack \":\"No\",\"WLAN\":\"No\",\"Bluetooth\":\"No\",\"GPS\":\"No\",\"Radio\":\"No\",\"USB\":\"\",\"Sensors\":\"\",\"Messaging\":\"SMS\",\"Browser\":\"\",\"Clock\":\"Yes\",\"Alarm\":\"Yes\",\"Games\":\"Rotation, Snake, and Memory\",\"Languages\":\"11 from 35 total\",\"Java\":\"No\",\"Colors\":\"User exchangeable front and back covers\"}');


SET FOREIGN_KEY_CHECKS = 1;
