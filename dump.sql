/*
 Navicat Premium Data Transfer

 Source Server         : localhost MAMP
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:8889
 Source Schema         : marcas_modelos

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 22/06/2022 16:42:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for marcas
-- ----------------------------
DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria tabla ',
  `name_marca` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of marcas
-- ----------------------------
BEGIN;
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (1, 'ALFA ROMERO', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (2, 'ASIA MOTORS', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (3, 'Josephine Kim', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (4, 'Katherine Marshall', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (5, 'Joan Green', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (6, 'Julia Kennedy', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (7, 'Willie Chavez', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (8, 'Melvin Campbell', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (9, 'Angela Rose', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (10, 'Cynthia Gutierrez', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (11, 'Micheal Alvarez', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (12, 'Diane Kim', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (13, 'Karen Stone', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (14, 'Wendy Dunn', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (15, 'Ethel Stewart', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (16, 'Michelle Spencer', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (17, 'Danny Ramirez', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (18, 'Cynthia Evans', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (19, 'Ethel Murray', 1);
INSERT INTO `marcas` (`id`, `name_marca`, `estado`) VALUES (20, 'Elaine Thompson', 1);
COMMIT;

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `id_marca` int(10) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_marca_fk` (`id_marca`),
  CONSTRAINT `id_marca_fk` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of modelo
-- ----------------------------
BEGIN;
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (1, '145', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (2, '146', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (103, 'George Bell', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (104, 'Margaret Wagner', 3, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (105, 'Paula Reynolds', 3, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (106, 'Andrea Marshall', 3, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (107, 'Kevin Turner', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (108, 'Ann Henry', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (109, 'Bruce Meyer', 5, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (110, 'Amy Lewis', 5, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (111, 'Dorothy Ellis', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (112, 'Amy Garcia', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (113, 'Clifford Carter', 7, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (114, 'Larry Vasquez', 9, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (115, 'Judith Aguilar', 10, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (116, 'Stanley Castro', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (117, 'Jamie King', 5, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (118, 'Marvin Castro', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (119, 'Cynthia Marshall', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (120, 'Glenn Gonzalez', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (121, 'Earl Martin', 6, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (122, 'Edward Myers', 7, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (123, 'Joseph Robinson', 18, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (124, 'David Rogers', 2, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (125, 'Jessica Anderson', 17, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (126, 'Stephen Carter', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (127, 'Lawrence Jones', 19, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (128, 'Micheal Wood', 10, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (129, 'Nicholas Lewis', 7, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (130, 'Alice Cook', 3, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (131, 'Travis Kelley', 11, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (132, 'Anna Murray', 8, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (133, 'Justin Flores', 7, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (134, 'David Thompson', 20, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (135, 'Teresa Griffin', 20, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (136, 'Kimberly Salazar', 18, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (137, 'Michael Bryant', 12, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (138, 'David Gordon', 9, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (139, 'Benjamin Herrera', 1, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (140, 'Margaret Mason', 5, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (141, 'Jesus Gutierrez', 10, 1);
INSERT INTO `modelo` (`id`, `name_modelo`, `id_marca`, `estado`) VALUES (142, 'Earl Jimenez', 10, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
