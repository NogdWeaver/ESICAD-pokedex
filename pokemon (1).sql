-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 16 mars 2025 à 09:46
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokemon`
--
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `pokemon`;

-- --------------------------------------------------------

--
-- Structure de la table `data_raw`
--

DROP TABLE IF EXISTS `data_raw`;
CREATE TABLE IF NOT EXISTS `data_raw` (
  `Numero` int DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Nom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PV` int DEFAULT NULL,
  `Attaque` int DEFAULT NULL,
  `Defense` int DEFAULT NULL,
  `Vitesse` int DEFAULT NULL,
  `Special` int DEFAULT NULL,
  `Type 1` varchar(10) DEFAULT NULL,
  `Type 2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `data_raw`
--

INSERT INTO `data_raw` (`Numero`, `Image`, `Nom`, `PV`, `Attaque`, `Defense`, `Vitesse`, `Special`, `Type 1`, `Type 2`) VALUES
(1, 'https://www.pokepedia.fr/images/d/db/Miniature_0001_EV.png', 'Bulbizarre', 45, 49, 49, 45, 65, 'Plante', 'Poison'),
(2, 'https://www.pokepedia.fr/images/6/61/Miniature_0002_EV.png', 'Herbizarre', 60, 62, 63, 60, 80, 'Plante', 'Poison'),
(3, 'https://www.pokepedia.fr/images/2/21/Miniature_0003_EV.png', 'Florizarre', 80, 82, 83, 80, 100, 'Plante', 'Poison'),
(4, 'https://www.pokepedia.fr/images/c/c1/Miniature_0004_EV.png', 'Salamèche', 39, 52, 43, 65, 50, 'Feu', ''),
(5, 'https://www.pokepedia.fr/images/2/24/Miniature_0005_EV.png', 'Reptincel', 58, 64, 58, 80, 65, 'Feu', ''),
(6, 'https://www.pokepedia.fr/images/4/42/Miniature_0006_EV.png', 'Dracaufeu', 78, 84, 78, 100, 85, 'Feu', 'Vol'),
(7, 'https://www.pokepedia.fr/images/3/3a/Miniature_0007_EV.png', 'Carapuce', 44, 48, 65, 43, 50, 'Eau', ''),
(8, 'https://www.pokepedia.fr/images/3/3f/Miniature_0008_EV.png', 'Carabaffe', 59, 63, 80, 58, 65, 'Eau', ''),
(9, 'https://www.pokepedia.fr/images/c/c2/Miniature_0009_EV.png', 'Tortank', 79, 83, 100, 78, 85, 'Eau', ''),
(10, 'https://www.pokepedia.fr/images/a/a3/Miniature_0010_DEPS.png', 'Chenipan', 45, 30, 35, 45, 20, 'Insecte', ''),
(11, 'https://www.pokepedia.fr/images/2/29/Miniature_0011_DEPS.png', 'Chrysacier', 50, 20, 55, 30, 25, 'Insecte', ''),
(12, 'https://www.pokepedia.fr/images/c/c0/Miniature_0012_DEPS.png', 'Papilusion', 60, 45, 50, 70, 80, 'Insecte', 'Vol'),
(13, 'https://www.pokepedia.fr/images/e/ea/Miniature_0013_DEPS.png', 'Aspicot', 40, 35, 30, 50, 20, 'Insecte', 'Poison'),
(14, 'https://www.pokepedia.fr/images/2/29/Miniature_0014_DEPS.png', 'Coconfort', 45, 25, 50, 35, 25, 'Insecte', 'Poison'),
(15, 'https://www.pokepedia.fr/images/d/d9/Miniature_0015_DEPS.png', 'Dardargnan', 65, 80, 40, 75, 45, 'Insecte', 'Poison'),
(16, 'https://www.pokepedia.fr/images/c/c2/Miniature_0016_DEPS.png', 'Roucool', 40, 45, 40, 56, 35, 'Normal', 'Vol'),
(17, 'https://www.pokepedia.fr/images/0/07/Miniature_0017_DEPS.png', 'Roucoups', 63, 60, 55, 71, 50, 'Normal', 'Vol'),
(18, 'https://www.pokepedia.fr/images/d/d3/Miniature_0018_DEPS.png', 'Roucarnage', 83, 80, 75, 91, 70, 'Normal', 'Vol'),
(19, 'https://www.pokepedia.fr/images/b/b1/Miniature_0019_DEPS.png', 'Rattata', 30, 56, 35, 72, 25, 'Normal', ''),
(20, 'https://www.pokepedia.fr/images/c/c8/Miniature_0020_DEPS.png', 'Rattatac', 55, 81, 60, 97, 50, 'Normal', ''),
(21, 'https://www.pokepedia.fr/images/6/6c/Miniature_0021_DEPS.png', 'Piafabec', 40, 60, 30, 70, 31, 'Normal', 'Vol'),
(22, 'https://www.pokepedia.fr/images/e/ed/Miniature_0022_DEPS.png', 'Rapasdepic', 65, 90, 65, 100, 61, 'Normal', 'Vol'),
(23, 'https://www.pokepedia.fr/images/0/09/Miniature_0023_EV.png', 'Abo', 35, 60, 44, 55, 40, 'Poison', ''),
(24, 'https://www.pokepedia.fr/images/b/bf/Miniature_0024_EV.png', 'Arbok', 60, 85, 69, 80, 65, 'Poison', ''),
(25, 'https://www.pokepedia.fr/images/3/3d/Miniature_0025_EV.png', 'Pikachu', 35, 55, 30, 90, 50, 'Electrique', ''),
(26, 'https://www.pokepedia.fr/images/9/9f/Miniature_0026_EV.png', 'Raichu', 60, 90, 55, 100, 90, 'Electrique', ''),
(27, 'https://www.pokepedia.fr/images/5/55/Miniature_0027_EV.png', 'Sabelette', 50, 75, 85, 40, 30, 'Sol', ''),
(28, 'https://www.pokepedia.fr/images/c/c9/Miniature_0028_EV.png', 'Sablaireau', 75, 100, 110, 65, 55, 'Sol', ''),
(29, 'https://www.pokepedia.fr/images/0/07/Miniature_0029_DEPS.png', 'Nidoran ♀', 55, 47, 52, 41, 40, 'Poison', ''),
(30, 'https://www.pokepedia.fr/images/1/14/Miniature_0030_DEPS.png', 'Nidorina', 70, 62, 67, 56, 55, 'Poison', ''),
(31, 'https://www.pokepedia.fr/images/a/a5/Miniature_0031_DEPS.png', 'Nidoqueen', 90, 82, 87, 76, 75, 'Poison', ''),
(32, 'https://www.pokepedia.fr/images/8/85/Miniature_0032_DEPS.png', 'Nidoran ♂', 46, 57, 40, 50, 40, 'Poison', ''),
(33, 'https://www.pokepedia.fr/images/1/10/Miniature_0033_DEPS.png', 'Nidorino', 61, 72, 57, 65, 55, 'Poison', ''),
(34, 'https://www.pokepedia.fr/images/7/79/Miniature_0034_DEPS.png', 'Nidoking', 81, 92, 77, 85, 75, 'Poison', ''),
(35, 'https://www.pokepedia.fr/images/c/cf/Miniature_0035_EV.png', 'Mélofée', 70, 45, 48, 35, 60, 'Normal', ''),
(36, 'https://www.pokepedia.fr/images/d/d8/Miniature_0036_EV.png', 'Mélodelfe', 95, 70, 73, 60, 85, 'Normal', ''),
(37, 'https://www.pokepedia.fr/images/f/f6/Miniature_0037_EV.png', 'Goupix', 38, 41, 40, 65, 65, 'Feu', ''),
(38, 'https://www.pokepedia.fr/images/e/ed/Miniature_0038_EV.png', 'Feunard', 73, 76, 75, 100, 100, 'Feu', ''),
(39, 'https://www.pokepedia.fr/images/9/9e/Miniature_0039_EV.png', 'Rondoudou', 115, 45, 20, 20, 25, 'Normal', ''),
(40, 'https://www.pokepedia.fr/images/e/ed/Miniature_0040_EV.png', 'Grodoudou', 140, 70, 45, 45, 50, 'Normal', ''),
(41, 'https://www.pokepedia.fr/images/a/a9/Miniature_0041_DEPS.png', 'Nosferapti', 40, 45, 35, 55, 40, 'Vol', 'Poison'),
(42, 'https://www.pokepedia.fr/images/2/2e/Miniature_0042_DEPS.png', 'Nosferalto', 75, 80, 70, 90, 75, 'Vol', 'Poison'),
(43, 'https://www.pokepedia.fr/images/7/7c/Miniature_0043_EV.png', 'Mystherbe', 45, 50, 55, 30, 75, 'Plante', 'Poison'),
(44, 'https://www.pokepedia.fr/images/0/0f/Miniature_0044_EV.png', 'Ortide', 60, 65, 70, 40, 85, 'Plante', 'Poison'),
(45, 'https://www.pokepedia.fr/images/b/b1/Miniature_0045_EV.png', 'Rafflesia', 75, 80, 85, 50, 100, 'Plante', 'Poison'),
(46, 'https://www.pokepedia.fr/images/b/b2/Miniature_0046_DEPS.png', 'Paras', 35, 70, 55, 25, 55, 'Insecte', 'Plante'),
(47, 'https://www.pokepedia.fr/images/2/25/Miniature_0047_DEPS.png', 'Parasect', 60, 95, 80, 30, 80, 'Insecte', 'Plante'),
(48, 'https://www.pokepedia.fr/images/1/1d/Miniature_0048_EV.png', 'Mimitoss', 60, 55, 50, 45, 40, 'Insecte', 'Poison'),
(49, 'https://www.pokepedia.fr/images/7/73/Miniature_0049_EV.png', 'Aéromite', 70, 65, 60, 90, 90, 'Insecte', 'Poison'),
(50, 'https://www.pokepedia.fr/images/c/c4/Miniature_0050_EV.png', 'Taupiqueur', 10, 55, 25, 95, 45, 'Sol', ''),
(51, 'https://www.pokepedia.fr/images/d/d4/Miniature_0051_EV.png', 'Triopikeur', 35, 80, 50, 120, 70, 'Sol', ''),
(52, 'https://www.pokepedia.fr/images/3/38/Miniature_0052_EV.png', 'Miaouss', 40, 45, 35, 90, 40, 'Normal', ''),
(53, 'https://www.pokepedia.fr/images/6/6e/Miniature_0053_EV.png', 'Persian', 65, 70, 60, 115, 65, 'Normal', ''),
(54, 'https://www.pokepedia.fr/images/2/2e/Miniature_0054_EV.png', 'Psykokwak', 50, 52, 48, 55, 50, 'Eau', ''),
(55, 'https://www.pokepedia.fr/images/f/f1/Miniature_0055_EV.png', 'Akwakwak', 80, 82, 78, 85, 80, 'Eau', ''),
(56, 'https://www.pokepedia.fr/images/a/ab/Miniature_0056_EV.png', 'Férosinge', 40, 80, 35, 70, 35, 'Combat', ''),
(57, 'https://www.pokepedia.fr/images/9/91/Miniature_0057_EV.png', 'Colossinge', 65, 105, 60, 95, 60, 'Combat', ''),
(58, 'https://www.pokepedia.fr/images/6/6c/Miniature_0058_EV.png', 'Caninos', 55, 70, 45, 60, 50, 'Feu', ''),
(59, 'https://www.pokepedia.fr/images/9/9c/Miniature_0059_EV.png', 'Arcanin', 90, 110, 80, 95, 80, 'Feu', ''),
(60, 'https://www.pokepedia.fr/images/5/51/Miniature_0060_EV.png', 'Ptitard', 40, 50, 40, 90, 40, 'Eau', ''),
(61, 'https://www.pokepedia.fr/images/8/84/Miniature_0061_EV.png', 'Têtarte', 65, 65, 65, 90, 50, 'Eau', ''),
(62, 'https://www.pokepedia.fr/images/a/ab/Miniature_0062_EV.png', 'Tartard', 90, 85, 95, 70, 70, 'Eau', ''),
(63, 'https://www.pokepedia.fr/images/9/9b/Miniature_0063_DEPS.png', 'Abra', 25, 20, 15, 90, 105, 'Psy', ''),
(64, 'https://www.pokepedia.fr/images/d/d7/Miniature_0064_DEPS.png', 'Kadabra', 40, 35, 30, 105, 120, 'Psy', ''),
(65, 'https://www.pokepedia.fr/images/4/4f/Miniature_0065_DEPS.png', 'Alakazam', 55, 50, 45, 120, 135, 'Psy', ''),
(66, 'https://www.pokepedia.fr/images/9/92/Miniature_0066_DEPS.png', 'Machoc', 70, 80, 50, 35, 35, 'Combat', ''),
(67, 'https://www.pokepedia.fr/images/9/90/Miniature_0067_DEPS.png', 'Machopeur', 80, 100, 70, 45, 50, 'Combat', ''),
(68, 'https://www.pokepedia.fr/images/a/a6/Miniature_0068_DEPS.png', 'Mackogneur', 90, 130, 80, 55, 65, 'Combat', ''),
(69, 'https://www.pokepedia.fr/images/0/03/Miniature_0069_EV.png', 'Chétiflor', 50, 75, 35, 40, 70, 'Plante', ''),
(70, 'https://www.pokepedia.fr/images/e/ed/Miniature_0070_EV.png', 'Boustiflor', 65, 90, 50, 55, 85, 'Plante', ''),
(71, 'https://www.pokepedia.fr/images/a/a0/Miniature_0071_EV.png', 'Empiflor', 80, 105, 65, 70, 100, 'Plante', ''),
(72, 'https://www.pokepedia.fr/images/b/bc/Miniature_0072_EV.png', 'Tentacool', 40, 40, 35, 70, 100, 'Eau', 'Poison'),
(73, 'https://www.pokepedia.fr/images/3/31/Miniature_0073_EV.png', 'Tentacruel', 80, 70, 65, 100, 120, 'Eau', 'Poison'),
(74, 'https://www.pokepedia.fr/images/2/20/Miniature_0074_EV.png', 'Racaillou', 40, 80, 100, 20, 30, 'Sol', 'Roche'),
(75, 'https://www.pokepedia.fr/images/9/94/Miniature_0075_EV.png', 'Gravalanch', 55, 95, 115, 35, 45, 'Sol', 'Roche'),
(76, 'https://www.pokepedia.fr/images/a/a4/Miniature_0076_EV.png', 'Grolem', 80, 110, 130, 45, 55, 'Sol', 'Roche'),
(77, 'https://www.pokepedia.fr/images/f/f3/Miniature_0077_DEPS.png', 'Ponyta', 50, 85, 55, 90, 65, 'Feu', ''),
(78, 'https://www.pokepedia.fr/images/0/0c/Miniature_0078_DEPS.png', 'Galopa', 65, 100, 70, 105, 80, 'Feu', ''),
(79, 'https://www.pokepedia.fr/images/3/38/Miniature_0079_EV.png', 'Ramoloss', 90, 65, 65, 15, 40, 'Eau', 'Psy'),
(80, 'https://www.pokepedia.fr/images/4/4a/Miniature_0080_EV.png', 'Flagadoss', 95, 75, 110, 30, 80, 'Eau', 'Psy'),
(81, 'https://www.pokepedia.fr/images/c/c3/Miniature_0081_EV.png', 'Magnéti', 25, 35, 70, 45, 95, 'Electrique', 'Acier'),
(82, 'https://www.pokepedia.fr/images/a/a3/Miniature_0082_EV.png', 'Magnéton', 50, 60, 95, 70, 120, 'Electrique', 'Acier'),
(83, 'https://www.pokepedia.fr/images/e/e8/Miniature_0083_DEPS.png', 'Canarticho', 52, 65, 55, 60, 58, 'Normal', 'Vol'),
(84, 'https://www.pokepedia.fr/images/8/83/Miniature_0084_EV.png', 'Doduo', 35, 85, 45, 75, 35, 'Normal', 'Vol'),
(85, 'https://www.pokepedia.fr/images/5/5e/Miniature_0085_EV.png', 'Dodrio', 60, 110, 70, 100, 60, 'Normal', 'Vol'),
(86, 'https://www.pokepedia.fr/images/f/fe/Miniature_0086_EV.png', 'Otaria', 65, 45, 55, 45, 70, 'Eau', ''),
(87, 'https://www.pokepedia.fr/images/f/ff/Miniature_0087_EV.png', 'Lamantine', 90, 70, 80, 70, 95, 'Eau', ''),
(88, 'https://www.pokepedia.fr/images/f/f1/Miniature_0088_EV.png', 'Tadmorv', 80, 80, 50, 25, 40, 'Poison', ''),
(89, 'https://www.pokepedia.fr/images/a/a6/Miniature_0089_EV.png', 'Grotadmorv', 105, 105, 75, 50, 65, 'Poison', ''),
(90, 'https://www.pokepedia.fr/images/9/9c/Miniature_0090_EV.png', 'Kokiyas', 30, 65, 100, 40, 45, 'Eau', ''),
(91, 'https://www.pokepedia.fr/images/8/8a/Miniature_0091_EV.png', 'Crustabri', 50, 95, 180, 70, 85, 'Eau', 'Glace'),
(92, 'https://www.pokepedia.fr/images/c/cf/Miniature_0092_EV.png', 'Fantominus', 30, 35, 30, 80, 100, 'Spectre', 'Poison'),
(93, 'https://www.pokepedia.fr/images/9/95/Miniature_0093_EV.png', 'Spectrum', 45, 50, 45, 95, 115, 'Spectre', 'Poison'),
(94, 'https://www.pokepedia.fr/images/1/13/Miniature_0094_EV.png', 'Ectoplasma', 60, 65, 60, 110, 130, 'Spectre', 'Poison'),
(95, 'https://www.pokepedia.fr/images/4/4e/Miniature_0095_DEPS.png', 'Onix', 35, 45, 160, 70, 30, 'Sol', 'Roche'),
(96, 'https://www.pokepedia.fr/images/a/ac/Miniature_0096_EV.png', 'Soporifik', 60, 48, 45, 42, 90, 'Psy', ''),
(97, 'https://www.pokepedia.fr/images/1/10/Miniature_0097_EV.png', 'Hypnomade', 85, 73, 70, 67, 115, 'Psy', ''),
(98, 'https://www.pokepedia.fr/images/8/87/Miniature_0098_DEPS.png', 'Krabby', 30, 105, 90, 50, 25, 'Eau', ''),
(99, 'https://www.pokepedia.fr/images/6/67/Miniature_0099_DEPS.png', 'Krabboss', 55, 130, 115, 75, 50, 'Eau', ''),
(100, 'https://www.pokepedia.fr/images/b/bb/Miniature_0100_EV.png', 'Voltorbe', 40, 30, 50, 100, 55, 'Electrique', ''),
(101, 'https://www.pokepedia.fr/images/c/c4/Miniature_0101_EV.png', 'Electrode', 60, 50, 70, 140, 80, 'Electrique', ''),
(102, 'https://www.pokepedia.fr/images/2/26/Miniature_0102_EV.png', 'Noeunoeuf', 60, 40, 80, 40, 60, 'Plante', 'Psy'),
(103, 'https://www.pokepedia.fr/images/8/8d/Miniature_0103_EV.png', 'Noadkoko', 95, 95, 85, 55, 125, 'Plante', 'Psy'),
(104, 'https://www.pokepedia.fr/images/1/16/Miniature_0104_DEPS.png', 'Osselait', 50, 50, 95, 35, 40, 'Sol', ''),
(105, 'https://www.pokepedia.fr/images/3/35/Miniature_0105_DEPS.png', 'Ossatueur', 60, 80, 110, 45, 50, 'Sol', ''),
(106, 'https://www.pokepedia.fr/images/5/56/Miniature_0106_EV.png', 'Kicklee', 50, 120, 53, 87, 35, 'Combat', ''),
(107, 'https://www.pokepedia.fr/images/8/82/Miniature_0107_EV.png', 'Tygnon', 50, 105, 79, 76, 35, 'Combat', ''),
(108, 'https://www.pokepedia.fr/images/e/e6/Miniature_0108_DEPS.png', 'Excelangue', 90, 55, 75, 30, 60, 'Normal', ''),
(109, 'https://www.pokepedia.fr/images/7/72/Miniature_0109_EV.png', 'Smogo', 40, 65, 95, 35, 60, 'Poison', ''),
(110, 'https://www.pokepedia.fr/images/2/2a/Miniature_0110_EV.png', 'Smogogo', 65, 90, 120, 60, 85, 'Poison', ''),
(111, 'https://www.pokepedia.fr/images/7/71/Miniature_0111_EV.png', 'Rhinocorne', 80, 85, 95, 25, 30, 'Sol', 'Roche'),
(112, 'https://www.pokepedia.fr/images/e/e7/Miniature_0112_EV.png', 'Rhinoféros', 105, 130, 120, 40, 45, 'Sol', 'Roche'),
(113, 'https://www.pokepedia.fr/images/e/e0/Miniature_0113_EV.png', 'Leveinard', 250, 5, 5, 50, 105, 'Normal', ''),
(114, 'https://www.pokepedia.fr/images/2/28/Miniature_0114_DEPS.png', 'Saquedeneu', 65, 55, 115, 60, 100, 'Plante', ''),
(115, 'https://www.pokepedia.fr/images/2/25/Miniature_0115_DEPS.png', 'Kangourex', 105, 95, 80, 90, 40, 'Normal', ''),
(116, 'https://www.pokepedia.fr/images/d/da/Miniature_0116_EV.png', 'Hypotrempe', 30, 40, 70, 60, 70, 'Eau', ''),
(117, 'https://www.pokepedia.fr/images/2/2e/Miniature_0117_EV.png', 'Hypocéan', 55, 65, 95, 85, 95, 'Eau', ''),
(118, 'https://www.pokepedia.fr/images/5/5c/Miniature_0118_DEPS.png', 'Poissirène', 45, 67, 60, 63, 50, 'Eau', ''),
(119, 'https://www.pokepedia.fr/images/1/1a/Miniature_0119_DEPS.png', 'Poissoroy', 80, 92, 65, 68, 80, 'Eau', ''),
(120, 'https://www.pokepedia.fr/images/1/17/Miniature_0120_DEPS.png', 'Stari', 30, 45, 55, 85, 70, 'Eau', ''),
(121, 'https://www.pokepedia.fr/images/9/9f/Miniature_0121_DEPS.png', 'Staross', 60, 75, 85, 115, 100, 'Eau', 'Psy'),
(122, 'https://www.pokepedia.fr/images/e/ed/Miniature_0122_DEPS.png', 'M. Mime', 40, 45, 65, 90, 100, 'Psy', ''),
(123, 'https://www.pokepedia.fr/images/a/a7/Miniature_0123_EV.png', 'Insécateur', 70, 110, 80, 105, 55, 'Insecte', ''),
(124, 'https://www.pokepedia.fr/images/0/0c/Miniature_0124_DEPS.png', 'Lippoutou', 65, 50, 35, 95, 95, 'Glace', 'Psy'),
(125, 'https://www.pokepedia.fr/images/7/74/Miniature_0125_EV.png', 'Elektek', 65, 83, 57, 105, 85, 'Electrique', ''),
(126, 'https://www.pokepedia.fr/images/e/e9/Miniature_0126_EV.png', 'Magmar', 65, 95, 57, 93, 85, 'Feu', ''),
(127, 'https://www.pokepedia.fr/images/6/65/Miniature_0127_DEPS.png', 'Scarabrute', 65, 125, 100, 85, 55, 'Insecte', ''),
(128, 'https://www.pokepedia.fr/images/d/d8/Miniature_0128_EV.png', 'Tauros', 75, 100, 95, 110, 70, 'Normal', ''),
(129, 'https://www.pokepedia.fr/images/2/29/Miniature_0129_EV.png', 'Magicarpe', 20, 10, 55, 80, 20, 'Eau', ''),
(130, 'https://www.pokepedia.fr/images/4/43/Miniature_0130_EV.png', 'Léviator', 95, 125, 79, 81, 100, 'Eau', 'Vol'),
(131, 'https://www.pokepedia.fr/images/d/d8/Miniature_0131_EV.png', 'Lokhlass', 130, 85, 80, 60, 95, 'Eau', 'Glace'),
(132, 'https://www.pokepedia.fr/images/9/91/Miniature_0132_EV.png', 'Métamorph', 48, 48, 48, 48, 48, 'Normal', ''),
(133, 'https://www.pokepedia.fr/images/6/6f/Miniature_0133_EV.png', 'Evoli', 55, 55, 50, 55, 65, 'Normal', ''),
(134, 'https://www.pokepedia.fr/images/5/53/Miniature_0134_EV.png', 'Aquali', 130, 65, 60, 65, 110, 'Eau', ''),
(135, 'https://www.pokepedia.fr/images/4/40/Miniature_0135_EV.png', 'Voltali', 65, 65, 60, 130, 110, 'Electrique', ''),
(136, 'https://www.pokepedia.fr/images/6/6e/Miniature_0136_EV.png', 'Pyroli', 65, 130, 60, 65, 110, 'Feu', ''),
(137, 'https://www.pokepedia.fr/images/8/80/Miniature_0137_EV.png', 'Porygon', 65, 60, 70, 40, 75, 'Normal', ''),
(138, 'https://www.pokepedia.fr/images/8/84/Miniature_0138_DEPS.png', 'Amonita', 35, 40, 100, 35, 90, 'Roche', 'Eau'),
(139, 'https://www.pokepedia.fr/images/f/fe/Miniature_0139_DEPS.png', 'Amonistar', 70, 60, 125, 55, 115, 'Roche', 'Eau'),
(140, 'https://www.pokepedia.fr/images/8/83/Miniature_0140_DEPS.png', 'Kabuto', 30, 80, 90, 55, 45, 'Roche', 'Eau'),
(141, 'https://www.pokepedia.fr/images/0/0c/Miniature_0141_DEPS.png', 'Kabutops', 60, 115, 105, 80, 70, 'Roche', 'Eau'),
(142, 'https://www.pokepedia.fr/images/3/33/Miniature_0142_DEPS.png', 'Ptéra', 80, 105, 65, 130, 60, 'Roche', 'Vol'),
(143, 'https://www.pokepedia.fr/images/5/5e/Miniature_0143_EV.png', 'Ronflex', 160, 110, 65, 30, 65, 'Normal', ''),
(144, 'https://www.pokepedia.fr/images/6/6e/Miniature_0144_EV.png', 'Artikodin', 90, 85, 100, 85, 125, 'Glace', 'Vol'),
(145, 'https://www.pokepedia.fr/images/7/74/Miniature_0145_EV.png', 'Electhor', 90, 90, 85, 100, 125, 'Electrique', 'Vol'),
(146, 'https://www.pokepedia.fr/images/b/b0/Miniature_0146_EV.png', 'Sulfura', 90, 100, 90, 90, 125, 'Feu', 'Vol'),
(147, 'https://www.pokepedia.fr/images/7/75/Miniature_0147_EV.png', 'Minidraco', 41, 64, 45, 50, 50, 'Dragon', ''),
(148, 'https://www.pokepedia.fr/images/9/99/Miniature_0148_EV.png', 'Draco', 61, 84, 65, 70, 70, 'Dragon', ''),
(149, 'https://www.pokepedia.fr/images/4/43/Miniature_0149_EV.png', 'Dracolosse', 91, 134, 95, 80, 100, 'Dragon', 'Vol'),
(150, 'https://www.pokepedia.fr/images/2/22/Miniature_0150_EV.png', 'Mewtwo', 106, 110, 90, 130, 154, 'Psy', ''),
(151, 'https://www.pokepedia.fr/images/3/33/Miniature_0151_EV.png', 'Mew', 100, 100, 100, 100, 100, 'Psy', '');

-- --------------------------------------------------------

--
-- Structure de la table `enregistrements_utilisateurs`
--

DROP TABLE IF EXISTS `enregistrements_utilisateurs`;
CREATE TABLE IF NOT EXISTS `enregistrements_utilisateurs` (
  `IDPOKEMON` int NOT NULL,
  `IDutilisateur` int NOT NULL,
  PRIMARY KEY (`IDPOKEMON`,`IDutilisateur`),
  KEY `IDutilisateur` (`IDutilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `evolutions`
--

DROP TABLE IF EXISTS `evolutions`;
CREATE TABLE IF NOT EXISTS `evolutions` (
  `idAncetre` int NOT NULL,
  `idEvolution` int NOT NULL,
  PRIMARY KEY (`idAncetre`,`idEvolution`),
  KEY `idEvolution` (`idEvolution`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `evolutions`
--

INSERT INTO `evolutions` (`idAncetre`, `idEvolution`) VALUES
(1, 2),
(2, 3),
(4, 5),
(5, 6),
(7, 8),
(8, 9),
(10, 11),
(11, 12),
(13, 14),
(14, 15),
(16, 17),
(17, 18),
(19, 20),
(21, 22),
(23, 24),
(25, 26),
(27, 28),
(29, 30),
(30, 31),
(32, 33),
(33, 34),
(35, 36),
(37, 38),
(39, 40),
(41, 42),
(43, 44),
(44, 45),
(46, 47),
(48, 49),
(50, 51),
(52, 53),
(54, 55),
(56, 57),
(58, 59),
(60, 61),
(61, 62),
(63, 64),
(64, 65),
(66, 67),
(67, 68),
(69, 70),
(70, 71),
(72, 73),
(74, 75),
(75, 76),
(77, 78),
(79, 80),
(81, 82),
(83, 84),
(84, 85),
(86, 87),
(88, 89),
(90, 91),
(92, 93),
(93, 94),
(96, 97),
(98, 99),
(100, 101),
(102, 103),
(104, 105),
(109, 110),
(111, 112),
(116, 117),
(118, 119),
(120, 121),
(129, 130),
(133, 134),
(133, 135),
(133, 136);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `IDPOKEMON` int NOT NULL AUTO_INCREMENT,
  `NOMPOKEMON` varchar(50) NOT NULL,
  `PV` int NOT NULL,
  `PA` int NOT NULL,
  `PD` int NOT NULL,
  `PVIT` int NOT NULL,
  `PCS` int NOT NULL,
  `URL_PHOTO` varchar(250) DEFAULT NULL,
  `DATE_AJOUT` date NOT NULL,
  `idType2` int DEFAULT NULL,
  `idType1` int NOT NULL,
  PRIMARY KEY (`IDPOKEMON`),
  KEY `idType2` (`idType2`),
  KEY `idType1` (`idType1`)
) ENGINE=MyISAM AUTO_INCREMENT=756 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`IDPOKEMON`, `NOMPOKEMON`, `PV`, `PA`, `PD`, `PVIT`, `PCS`, `URL_PHOTO`, `DATE_AJOUT`, `idType2`, `idType1`) VALUES
(1, 'Bulbizarre', 45, 49, 49, 45, 65, 'https://www.pokepedia.fr/images/d/db/Miniature_0001_EV.png', '2025-02-21', 6, 1),
(2, 'Herbizarre', 60, 62, 63, 60, 80, 'https://www.pokepedia.fr/images/6/61/Miniature_0002_EV.png', '2025-02-21', 6, 1),
(3, 'Florizarre', 80, 82, 83, 80, 100, 'https://www.pokepedia.fr/images/2/21/Miniature_0003_EV.png', '2025-02-21', 6, 1),
(4, 'Salamèche', 39, 52, 43, 65, 50, 'https://www.pokepedia.fr/images/c/c1/Miniature_0004_EV.png', '2025-02-21', NULL, 2),
(5, 'Reptincel', 58, 64, 58, 80, 65, 'https://www.pokepedia.fr/images/2/24/Miniature_0005_EV.png', '2025-02-21', NULL, 2),
(6, 'Dracaufeu', 78, 84, 78, 100, 85, 'https://www.pokepedia.fr/images/4/42/Miniature_0006_EV.png', '2025-02-21', 9, 2),
(7, 'Carapuce', 44, 48, 65, 43, 50, 'https://www.pokepedia.fr/images/3/3a/Miniature_0007_EV.png', '2025-02-21', NULL, 3),
(8, 'Carabaffe', 59, 63, 80, 58, 65, 'https://www.pokepedia.fr/images/3/3f/Miniature_0008_EV.png', '2025-02-21', NULL, 3),
(9, 'Tortank', 79, 83, 100, 78, 85, 'https://www.pokepedia.fr/images/c/c2/Miniature_0009_EV.png', '2025-02-21', NULL, 3),
(10, 'Chenipan', 45, 30, 35, 45, 20, 'https://www.pokepedia.fr/images/a/a3/Miniature_0010_DEPS.png', '2025-02-21', NULL, 4),
(11, 'Chrysacier', 50, 20, 55, 30, 25, 'https://www.pokepedia.fr/images/2/29/Miniature_0011_DEPS.png', '2025-02-21', NULL, 4),
(12, 'Papilusion', 60, 45, 50, 70, 80, 'https://www.pokepedia.fr/images/c/c0/Miniature_0012_DEPS.png', '2025-02-21', 9, 4),
(13, 'Aspicot', 40, 35, 30, 50, 20, 'https://www.pokepedia.fr/images/e/ea/Miniature_0013_DEPS.png', '2025-02-21', 6, 4),
(14, 'Coconfort', 45, 25, 50, 35, 25, 'https://www.pokepedia.fr/images/2/29/Miniature_0014_DEPS.png', '2025-02-21', 6, 4),
(15, 'Dardargnan', 65, 80, 40, 75, 45, 'https://www.pokepedia.fr/images/d/d9/Miniature_0015_DEPS.png', '2025-02-21', 6, 4),
(16, 'Roucool', 40, 45, 40, 56, 35, 'https://www.pokepedia.fr/images/c/c2/Miniature_0016_DEPS.png', '2025-02-21', 9, 5),
(17, 'Roucoups', 63, 60, 55, 71, 50, 'https://www.pokepedia.fr/images/0/07/Miniature_0017_DEPS.png', '2025-02-21', 9, 5),
(18, 'Roucarnage', 83, 80, 75, 91, 70, 'https://www.pokepedia.fr/images/d/d3/Miniature_0018_DEPS.png', '2025-02-21', 9, 5),
(19, 'Rattata', 30, 56, 35, 72, 25, 'https://www.pokepedia.fr/images/b/b1/Miniature_0019_DEPS.png', '2025-02-21', NULL, 5),
(20, 'Rattatac', 55, 81, 60, 97, 50, 'https://www.pokepedia.fr/images/c/c8/Miniature_0020_DEPS.png', '2025-02-21', NULL, 5),
(21, 'Piafabec', 40, 60, 30, 70, 31, 'https://www.pokepedia.fr/images/6/6c/Miniature_0021_DEPS.png', '2025-02-21', 9, 5),
(22, 'Rapasdepic', 65, 90, 65, 100, 61, 'https://www.pokepedia.fr/images/e/ed/Miniature_0022_DEPS.png', '2025-02-21', 9, 5),
(23, 'Abo', 35, 60, 44, 55, 40, 'https://www.pokepedia.fr/images/0/09/Miniature_0023_EV.png', '2025-02-21', NULL, 6),
(24, 'Arbok', 60, 85, 69, 80, 65, 'https://www.pokepedia.fr/images/b/bf/Miniature_0024_EV.png', '2025-02-21', NULL, 6),
(25, 'Pikachu', 35, 55, 30, 90, 50, 'https://www.pokepedia.fr/images/3/3d/Miniature_0025_EV.png', '2025-02-21', NULL, 7),
(26, 'Raichu', 60, 90, 55, 100, 90, 'https://www.pokepedia.fr/images/9/9f/Miniature_0026_EV.png', '2025-02-21', NULL, 7),
(27, 'Sabelette', 50, 75, 85, 40, 30, 'https://www.pokepedia.fr/images/5/55/Miniature_0027_EV.png', '2025-02-21', NULL, 8),
(28, 'Sablaireau', 75, 100, 110, 65, 55, 'https://www.pokepedia.fr/images/c/c9/Miniature_0028_EV.png', '2025-02-21', NULL, 8),
(29, 'Nidoran ♀', 55, 47, 52, 41, 40, 'https://www.pokepedia.fr/images/0/07/Miniature_0029_DEPS.png', '2025-02-21', NULL, 6),
(30, 'Nidorina', 70, 62, 67, 56, 55, 'https://www.pokepedia.fr/images/1/14/Miniature_0030_DEPS.png', '2025-02-21', NULL, 6),
(31, 'Nidoqueen', 90, 82, 87, 76, 75, 'https://www.pokepedia.fr/images/a/a5/Miniature_0031_DEPS.png', '2025-02-21', NULL, 6),
(32, 'Nidoran ♂', 46, 57, 40, 50, 40, 'https://www.pokepedia.fr/images/8/85/Miniature_0032_DEPS.png', '2025-02-21', NULL, 6),
(33, 'Nidorino', 61, 72, 57, 65, 55, 'https://www.pokepedia.fr/images/1/10/Miniature_0033_DEPS.png', '2025-02-21', NULL, 6),
(34, 'Nidoking', 81, 92, 77, 85, 75, 'https://www.pokepedia.fr/images/7/79/Miniature_0034_DEPS.png', '2025-02-21', NULL, 6),
(35, 'Mélofée', 70, 45, 48, 35, 60, 'https://www.pokepedia.fr/images/c/cf/Miniature_0035_EV.png', '2025-02-21', NULL, 5),
(36, 'Mélodelfe', 95, 70, 73, 60, 85, 'https://www.pokepedia.fr/images/d/d8/Miniature_0036_EV.png', '2025-02-21', NULL, 5),
(37, 'Goupix', 38, 41, 40, 65, 65, 'https://www.pokepedia.fr/images/f/f6/Miniature_0037_EV.png', '2025-02-21', NULL, 2),
(38, 'Feunard', 73, 76, 75, 100, 100, 'https://www.pokepedia.fr/images/e/ed/Miniature_0038_EV.png', '2025-02-21', NULL, 2),
(39, 'Rondoudou', 115, 45, 20, 20, 25, 'https://www.pokepedia.fr/images/9/9e/Miniature_0039_EV.png', '2025-02-21', NULL, 5),
(40, 'Grodoudou', 140, 70, 45, 45, 50, 'https://www.pokepedia.fr/images/e/ed/Miniature_0040_EV.png', '2025-02-21', NULL, 5),
(41, 'Nosferapti', 40, 45, 35, 55, 40, 'https://www.pokepedia.fr/images/a/a9/Miniature_0041_DEPS.png', '2025-02-21', 6, 9),
(42, 'Nosferalto', 75, 80, 70, 90, 75, 'https://www.pokepedia.fr/images/2/2e/Miniature_0042_DEPS.png', '2025-02-21', 6, 9),
(43, 'Mystherbe', 45, 50, 55, 30, 75, 'https://www.pokepedia.fr/images/7/7c/Miniature_0043_EV.png', '2025-02-21', 6, 1),
(44, 'Ortide', 60, 65, 70, 40, 85, 'https://www.pokepedia.fr/images/0/0f/Miniature_0044_EV.png', '2025-02-21', 6, 1),
(45, 'Rafflesia', 75, 80, 85, 50, 100, 'https://www.pokepedia.fr/images/b/b1/Miniature_0045_EV.png', '2025-02-21', 6, 1),
(46, 'Paras', 35, 70, 55, 25, 55, 'https://www.pokepedia.fr/images/b/b2/Miniature_0046_DEPS.png', '2025-02-21', 1, 4),
(47, 'Parasect', 60, 95, 80, 30, 80, 'https://www.pokepedia.fr/images/2/25/Miniature_0047_DEPS.png', '2025-02-21', 1, 4),
(48, 'Mimitoss', 60, 55, 50, 45, 40, 'https://www.pokepedia.fr/images/1/1d/Miniature_0048_EV.png', '2025-02-21', 6, 4),
(49, 'Aéromite', 70, 65, 60, 90, 90, 'https://www.pokepedia.fr/images/7/73/Miniature_0049_EV.png', '2025-02-21', 6, 4),
(50, 'Taupiqueur', 10, 55, 25, 95, 45, 'https://www.pokepedia.fr/images/c/c4/Miniature_0050_EV.png', '2025-02-21', NULL, 8),
(51, 'Triopikeur', 35, 80, 50, 120, 70, 'https://www.pokepedia.fr/images/d/d4/Miniature_0051_EV.png', '2025-02-21', NULL, 8),
(52, 'Miaouss', 40, 45, 35, 90, 40, 'https://www.pokepedia.fr/images/3/38/Miniature_0052_EV.png', '2025-02-21', NULL, 5),
(53, 'Persian', 65, 70, 60, 115, 65, 'https://www.pokepedia.fr/images/6/6e/Miniature_0053_EV.png', '2025-02-21', NULL, 5),
(54, 'Psykokwak', 50, 52, 48, 55, 50, 'https://www.pokepedia.fr/images/2/2e/Miniature_0054_EV.png', '2025-02-21', NULL, 3),
(55, 'Akwakwak', 80, 82, 78, 85, 80, 'https://www.pokepedia.fr/images/f/f1/Miniature_0055_EV.png', '2025-02-21', NULL, 3),
(56, 'Férosinge', 40, 80, 35, 70, 35, 'https://www.pokepedia.fr/images/a/ab/Miniature_0056_EV.png', '2025-02-21', NULL, 10),
(57, 'Colossinge', 65, 105, 60, 95, 60, 'https://www.pokepedia.fr/images/9/91/Miniature_0057_EV.png', '2025-02-21', NULL, 10),
(58, 'Caninos', 55, 70, 45, 60, 50, 'https://www.pokepedia.fr/images/6/6c/Miniature_0058_EV.png', '2025-02-21', NULL, 2),
(59, 'Arcanin', 90, 110, 80, 95, 80, 'https://www.pokepedia.fr/images/9/9c/Miniature_0059_EV.png', '2025-02-21', NULL, 2),
(60, 'Ptitard', 40, 50, 40, 90, 40, 'https://www.pokepedia.fr/images/5/51/Miniature_0060_EV.png', '2025-02-21', NULL, 3),
(61, 'Têtarte', 65, 65, 65, 90, 50, 'https://www.pokepedia.fr/images/8/84/Miniature_0061_EV.png', '2025-02-21', NULL, 3),
(62, 'Tartard', 90, 85, 95, 70, 70, 'https://www.pokepedia.fr/images/a/ab/Miniature_0062_EV.png', '2025-02-21', NULL, 3),
(63, 'Abra', 25, 20, 15, 90, 105, 'https://www.pokepedia.fr/images/9/9b/Miniature_0063_DEPS.png', '2025-02-21', NULL, 11),
(64, 'Kadabra', 40, 35, 30, 105, 120, 'https://www.pokepedia.fr/images/d/d7/Miniature_0064_DEPS.png', '2025-02-21', NULL, 11),
(65, 'Alakazam', 55, 50, 45, 120, 135, 'https://www.pokepedia.fr/images/4/4f/Miniature_0065_DEPS.png', '2025-02-21', NULL, 11),
(66, 'Machoc', 70, 80, 50, 35, 35, 'https://www.pokepedia.fr/images/9/92/Miniature_0066_DEPS.png', '2025-02-21', NULL, 10),
(67, 'Machopeur', 80, 100, 70, 45, 50, 'https://www.pokepedia.fr/images/9/90/Miniature_0067_DEPS.png', '2025-02-21', NULL, 10),
(68, 'Mackogneur', 90, 130, 80, 55, 65, 'https://www.pokepedia.fr/images/a/a6/Miniature_0068_DEPS.png', '2025-02-21', NULL, 10),
(69, 'Chétiflor', 50, 75, 35, 40, 70, 'https://www.pokepedia.fr/images/0/03/Miniature_0069_EV.png', '2025-02-21', NULL, 1),
(70, 'Boustiflor', 65, 90, 50, 55, 85, 'https://www.pokepedia.fr/images/e/ed/Miniature_0070_EV.png', '2025-02-21', NULL, 1),
(71, 'Empiflor', 80, 105, 65, 70, 100, 'https://www.pokepedia.fr/images/a/a0/Miniature_0071_EV.png', '2025-02-21', NULL, 1),
(72, 'Tentacool', 40, 40, 35, 70, 100, 'https://www.pokepedia.fr/images/b/bc/Miniature_0072_EV.png', '2025-02-21', 6, 3),
(73, 'Tentacruel', 80, 70, 65, 100, 120, 'https://www.pokepedia.fr/images/3/31/Miniature_0073_EV.png', '2025-02-21', 6, 3),
(74, 'Racaillou', 40, 80, 100, 20, 30, 'https://www.pokepedia.fr/images/2/20/Miniature_0074_EV.png', '2025-02-21', 14, 8),
(75, 'Gravalanch', 55, 95, 115, 35, 45, 'https://www.pokepedia.fr/images/9/94/Miniature_0075_EV.png', '2025-02-21', 14, 8),
(76, 'Grolem', 80, 110, 130, 45, 55, 'https://www.pokepedia.fr/images/a/a4/Miniature_0076_EV.png', '2025-02-21', 14, 8),
(77, 'Ponyta', 50, 85, 55, 90, 65, 'https://www.pokepedia.fr/images/f/f3/Miniature_0077_DEPS.png', '2025-02-21', NULL, 2),
(78, 'Galopa', 65, 100, 70, 105, 80, 'https://www.pokepedia.fr/images/0/0c/Miniature_0078_DEPS.png', '2025-02-21', NULL, 2),
(79, 'Ramoloss', 90, 65, 65, 15, 40, 'https://www.pokepedia.fr/images/3/38/Miniature_0079_EV.png', '2025-02-21', 11, 3),
(80, 'Flagadoss', 95, 75, 110, 30, 80, 'https://www.pokepedia.fr/images/4/4a/Miniature_0080_EV.png', '2025-02-21', 11, 3),
(81, 'Magnéti', 25, 35, 70, 45, 95, 'https://www.pokepedia.fr/images/c/c3/Miniature_0081_EV.png', '2025-02-21', NULL, 7),
(82, 'Magnéton', 50, 60, 95, 70, 120, 'https://www.pokepedia.fr/images/a/a3/Miniature_0082_EV.png', '2025-02-21', NULL, 7),
(83, 'Canarticho', 52, 65, 55, 60, 58, 'https://www.pokepedia.fr/images/e/e8/Miniature_0083_DEPS.png', '2025-02-21', 9, 5),
(84, 'Doduo', 35, 85, 45, 75, 35, 'https://www.pokepedia.fr/images/8/83/Miniature_0084_EV.png', '2025-02-21', 9, 5),
(85, 'Dodrio', 60, 110, 70, 100, 60, 'https://www.pokepedia.fr/images/5/5e/Miniature_0085_EV.png', '2025-02-21', 9, 5),
(86, 'Otaria', 65, 45, 55, 45, 70, 'https://www.pokepedia.fr/images/f/fe/Miniature_0086_EV.png', '2025-02-21', NULL, 3),
(87, 'Lamantine', 90, 70, 80, 70, 95, 'https://www.pokepedia.fr/images/f/ff/Miniature_0087_EV.png', '2025-02-21', NULL, 3),
(88, 'Tadmorv', 80, 80, 50, 25, 40, 'https://www.pokepedia.fr/images/f/f1/Miniature_0088_EV.png', '2025-02-21', NULL, 6),
(89, 'Grotadmorv', 105, 105, 75, 50, 65, 'https://www.pokepedia.fr/images/a/a6/Miniature_0089_EV.png', '2025-02-21', NULL, 6),
(90, 'Kokiyas', 30, 65, 100, 40, 45, 'https://www.pokepedia.fr/images/9/9c/Miniature_0090_EV.png', '2025-02-21', NULL, 3),
(91, 'Crustabri', 50, 95, 180, 70, 85, 'https://www.pokepedia.fr/images/8/8a/Miniature_0091_EV.png', '2025-02-21', 13, 3),
(92, 'Fantominus', 30, 35, 30, 80, 100, 'https://www.pokepedia.fr/images/c/cf/Miniature_0092_EV.png', '2025-02-21', 6, 12),
(93, 'Spectrum', 45, 50, 45, 95, 115, 'https://www.pokepedia.fr/images/9/95/Miniature_0093_EV.png', '2025-02-21', 6, 12),
(94, 'Ectoplasma', 60, 65, 60, 110, 130, 'https://www.pokepedia.fr/images/1/13/Miniature_0094_EV.png', '2025-02-21', 6, 12),
(95, 'Onix', 35, 45, 160, 70, 30, 'https://www.pokepedia.fr/images/4/4e/Miniature_0095_DEPS.png', '2025-02-21', 14, 8),
(96, 'Soporifik', 60, 48, 45, 42, 90, 'https://www.pokepedia.fr/images/a/ac/Miniature_0096_EV.png', '2025-02-21', NULL, 11),
(97, 'Hypnomade', 85, 73, 70, 67, 115, 'https://www.pokepedia.fr/images/1/10/Miniature_0097_EV.png', '2025-02-21', NULL, 11),
(98, 'Krabby', 30, 105, 90, 50, 25, 'https://www.pokepedia.fr/images/8/87/Miniature_0098_DEPS.png', '2025-02-21', NULL, 3),
(99, 'Krabboss', 55, 130, 115, 75, 50, 'https://www.pokepedia.fr/images/6/67/Miniature_0099_DEPS.png', '2025-02-21', NULL, 3),
(100, 'Voltorbe', 40, 30, 50, 100, 55, 'https://www.pokepedia.fr/images/b/bb/Miniature_0100_EV.png', '2025-02-21', NULL, 7),
(101, 'Electrode', 60, 50, 70, 140, 80, 'https://www.pokepedia.fr/images/c/c4/Miniature_0101_EV.png', '2025-02-21', NULL, 7),
(102, 'Noeunoeuf', 60, 40, 80, 40, 60, 'https://www.pokepedia.fr/images/2/26/Miniature_0102_EV.png', '2025-02-21', 11, 1),
(103, 'Noadkoko', 95, 95, 85, 55, 125, 'https://www.pokepedia.fr/images/8/8d/Miniature_0103_EV.png', '2025-02-21', 11, 1),
(104, 'Osselait', 50, 50, 95, 35, 40, 'https://www.pokepedia.fr/images/1/16/Miniature_0104_DEPS.png', '2025-02-21', NULL, 8),
(105, 'Ossatueur', 60, 80, 110, 45, 50, 'https://www.pokepedia.fr/images/3/35/Miniature_0105_DEPS.png', '2025-02-21', NULL, 8),
(106, 'Kicklee', 50, 120, 53, 87, 35, 'https://www.pokepedia.fr/images/5/56/Miniature_0106_EV.png', '2025-02-21', NULL, 10),
(107, 'Tygnon', 50, 105, 79, 76, 35, 'https://www.pokepedia.fr/images/8/82/Miniature_0107_EV.png', '2025-02-21', NULL, 10),
(108, 'Excelangue', 90, 55, 75, 30, 60, 'https://www.pokepedia.fr/images/e/e6/Miniature_0108_DEPS.png', '2025-02-21', NULL, 5),
(109, 'Smogo', 40, 65, 95, 35, 60, 'https://www.pokepedia.fr/images/7/72/Miniature_0109_EV.png', '2025-02-21', NULL, 6),
(110, 'Smogogo', 65, 90, 120, 60, 85, 'https://www.pokepedia.fr/images/2/2a/Miniature_0110_EV.png', '2025-02-21', NULL, 6),
(111, 'Rhinocorne', 80, 85, 95, 25, 30, 'https://www.pokepedia.fr/images/7/71/Miniature_0111_EV.png', '2025-02-21', 14, 8),
(112, 'Rhinoféros', 105, 130, 120, 40, 45, 'https://www.pokepedia.fr/images/e/e7/Miniature_0112_EV.png', '2025-02-21', 14, 8),
(113, 'Leveinard', 250, 5, 5, 50, 105, 'https://www.pokepedia.fr/images/e/e0/Miniature_0113_EV.png', '2025-02-21', NULL, 5),
(114, 'Saquedeneu', 65, 55, 115, 60, 100, 'https://www.pokepedia.fr/images/2/28/Miniature_0114_DEPS.png', '2025-02-21', NULL, 1),
(115, 'Kangourex', 105, 95, 80, 90, 40, 'https://www.pokepedia.fr/images/2/25/Miniature_0115_DEPS.png', '2025-02-21', NULL, 5),
(116, 'Hypotrempe', 30, 40, 70, 60, 70, 'https://www.pokepedia.fr/images/d/da/Miniature_0116_EV.png', '2025-02-21', NULL, 3),
(117, 'Hypocéan', 55, 65, 95, 85, 95, 'https://www.pokepedia.fr/images/2/2e/Miniature_0117_EV.png', '2025-02-21', NULL, 3),
(118, 'Poissirène', 45, 67, 60, 63, 50, 'https://www.pokepedia.fr/images/5/5c/Miniature_0118_DEPS.png', '2025-02-21', NULL, 3),
(119, 'Poissoroy', 80, 92, 65, 68, 80, 'https://www.pokepedia.fr/images/1/1a/Miniature_0119_DEPS.png', '2025-02-21', NULL, 3),
(120, 'Stari', 30, 45, 55, 85, 70, 'https://www.pokepedia.fr/images/1/17/Miniature_0120_DEPS.png', '2025-02-21', NULL, 3),
(121, 'Staross', 60, 75, 85, 115, 100, 'https://www.pokepedia.fr/images/9/9f/Miniature_0121_DEPS.png', '2025-02-21', 11, 3),
(122, 'M. Mime', 40, 45, 65, 90, 100, 'https://www.pokepedia.fr/images/e/ed/Miniature_0122_DEPS.png', '2025-02-21', NULL, 11),
(123, 'Insécateur', 70, 110, 80, 105, 55, 'https://www.pokepedia.fr/images/a/a7/Miniature_0123_EV.png', '2025-02-21', NULL, 4),
(124, 'Lippoutou', 65, 50, 35, 95, 95, 'https://www.pokepedia.fr/images/0/0c/Miniature_0124_DEPS.png', '2025-02-21', 11, 13),
(125, 'Elektek', 65, 83, 57, 105, 85, 'https://www.pokepedia.fr/images/7/74/Miniature_0125_EV.png', '2025-02-21', NULL, 7),
(126, 'Magmar', 65, 95, 57, 93, 85, 'https://www.pokepedia.fr/images/e/e9/Miniature_0126_EV.png', '2025-02-21', NULL, 2),
(127, 'Scarabrute', 65, 125, 100, 85, 55, 'https://www.pokepedia.fr/images/6/65/Miniature_0127_DEPS.png', '2025-02-21', NULL, 4),
(128, 'Tauros', 75, 100, 95, 110, 70, 'https://www.pokepedia.fr/images/d/d8/Miniature_0128_EV.png', '2025-02-21', NULL, 5),
(129, 'Magicarpe', 20, 10, 55, 80, 20, 'https://www.pokepedia.fr/images/2/29/Miniature_0129_EV.png', '2025-02-21', NULL, 3),
(130, 'Léviator', 95, 125, 79, 81, 100, 'https://www.pokepedia.fr/images/4/43/Miniature_0130_EV.png', '2025-02-21', 9, 3),
(131, 'Lokhlass', 130, 85, 80, 60, 95, 'https://www.pokepedia.fr/images/d/d8/Miniature_0131_EV.png', '2025-02-21', 13, 3),
(132, 'Métamorph', 48, 48, 48, 48, 48, 'https://www.pokepedia.fr/images/9/91/Miniature_0132_EV.png', '2025-02-21', NULL, 5),
(133, 'Evoli', 55, 55, 50, 55, 65, 'https://www.pokepedia.fr/images/6/6f/Miniature_0133_EV.png', '2025-02-21', NULL, 5),
(134, 'Aquali', 130, 65, 60, 65, 110, 'https://www.pokepedia.fr/images/5/53/Miniature_0134_EV.png', '2025-02-21', NULL, 3),
(135, 'Voltali', 65, 65, 60, 130, 110, 'https://www.pokepedia.fr/images/4/40/Miniature_0135_EV.png', '2025-02-21', NULL, 7),
(136, 'Pyroli', 65, 130, 60, 65, 110, 'https://www.pokepedia.fr/images/6/6e/Miniature_0136_EV.png', '2025-02-21', NULL, 2),
(137, 'Porygon', 65, 60, 70, 40, 75, 'https://www.pokepedia.fr/images/8/80/Miniature_0137_EV.png', '2025-02-21', NULL, 5),
(138, 'Amonita', 35, 40, 100, 35, 90, 'https://www.pokepedia.fr/images/8/84/Miniature_0138_DEPS.png', '2025-02-21', 3, 14),
(139, 'Amonistar', 70, 60, 125, 55, 115, 'https://www.pokepedia.fr/images/f/fe/Miniature_0139_DEPS.png', '2025-02-21', 3, 14),
(140, 'Kabuto', 30, 80, 90, 55, 45, 'https://www.pokepedia.fr/images/8/83/Miniature_0140_DEPS.png', '2025-02-21', 3, 14),
(141, 'Kabutops', 60, 115, 105, 80, 70, 'https://www.pokepedia.fr/images/0/0c/Miniature_0141_DEPS.png', '2025-02-21', 3, 14),
(142, 'Ptéra', 80, 105, 65, 130, 60, 'https://www.pokepedia.fr/images/3/33/Miniature_0142_DEPS.png', '2025-02-21', 9, 14),
(143, 'Ronflex', 160, 110, 65, 30, 65, 'https://www.pokepedia.fr/images/5/5e/Miniature_0143_EV.png', '2025-02-21', NULL, 5),
(144, 'Artikodin', 90, 85, 100, 85, 125, 'https://www.pokepedia.fr/images/6/6e/Miniature_0144_EV.png', '2025-02-21', 9, 13),
(145, 'Electhor', 90, 90, 85, 100, 125, 'https://www.pokepedia.fr/images/7/74/Miniature_0145_EV.png', '2025-02-21', 9, 7),
(146, 'Sulfura', 90, 100, 90, 90, 125, 'https://www.pokepedia.fr/images/b/b0/Miniature_0146_EV.png', '2025-02-21', 9, 2),
(147, 'Minidraco', 41, 64, 45, 50, 50, 'https://www.pokepedia.fr/images/7/75/Miniature_0147_EV.png', '2025-02-21', NULL, 15),
(148, 'Draco', 61, 84, 65, 70, 70, 'https://www.pokepedia.fr/images/9/99/Miniature_0148_EV.png', '2025-02-21', NULL, 15),
(149, 'Dracolosse', 91, 134, 95, 80, 100, 'https://www.pokepedia.fr/images/4/43/Miniature_0149_EV.png', '2025-02-21', 9, 15),
(150, 'Mewtwo', 106, 110, 90, 130, 154, 'https://www.pokepedia.fr/images/2/22/Miniature_0150_EV.png', '2025-02-21', NULL, 11),
(151, 'Mew', 100, 100, 100, 100, 100, 'https://www.pokepedia.fr/images/3/33/Miniature_0151_EV.png', '2025-02-21', NULL, 11);

-- --------------------------------------------------------

--
-- Structure de la table `typespokemon`
--

DROP TABLE IF EXISTS `typespokemon`;
CREATE TABLE IF NOT EXISTS `typespokemon` (
  `IDType` int NOT NULL AUTO_INCREMENT,
  `NOMTYPES` char(50) NOT NULL,
  PRIMARY KEY (`IDType`),
  UNIQUE KEY `NOMTYPES` (`NOMTYPES`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `typespokemon`
--

INSERT INTO `typespokemon` (`IDType`, `NOMTYPES`) VALUES
(1, 'Plante'),
(2, 'Feu'),
(3, 'Eau'),
(4, 'Insecte'),
(5, 'Normal'),
(6, 'Poison'),
(7, 'Electrique'),
(8, 'Sol'),
(9, 'Vol'),
(10, 'Combat'),
(11, 'Psy'),
(12, 'Spectre'),
(13, 'Glace'),
(14, 'Roche'),
(15, 'Dragon');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `IDutilisateur` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDutilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`IDutilisateur`, `pseudo`, `pswd`, `NOM`, `PRENOM`) VALUES
(2, 'test', 'mdp', 'nom', 'prenom'),
(3, 'NogD', 'd2f2297d6e829cd3493aa7de4416a18f', 'R', 'Evan'),
(5, 'UNIQUE', '9facbf452def2d7efc5b5c48cdb837fa', 'Doe', 'Jhon'),
(6, 'tes\" or 1=1 --', '5d41402abc4b2a76b9719d911017c592', 'Doe', 'Jhon'),
(7, 'ada450', 'ab4f63f9ac65152575886860dde480a1', 'Belegaud', 'Adrien'),
(8, 'Wawa', '9d25305725a1d48236e03a6ff69f7c38', 'OUI', 'OUI'),
(9, 'Last_Quincy', '9022a153e6190f10d9b57aa4232b8aea', 'Uryu', 'Ishida');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
