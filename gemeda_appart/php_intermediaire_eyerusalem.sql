-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 14 mai 2024 à 13:47
-- Version du serveur : 8.0.30
-- Version de PHP : 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `php_intermediaire_eyerusalem`
--
CREATE DATABASE IF NOT EXISTS `php_intermediaire_eyerusalem` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin;
USE `php_intermediaire_eyerusalem`;

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id_advert` int NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `postal_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` enum('''achat''','''location''') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` float NOT NULL,
  `reservation_message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id_advert`, `photo`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(1, 'https://cdn.pixabay.com/photo/2024/04/23/11/55/building-8714863_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris dans le 14e arrondissement de Paris. Bienvenue dans un environnement où l\'élégance rencontre modernité, offrant une vie urbaine raffinée.', '75010', 'Paris', '\'achat\'', 12000, ''),
(2, 'https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris dans le 14e arrondissement de Paris. Bienvenue dans un environnement où l\'élégance rencontre modernité, offrant une vie urbaine raffinée.', '93100', 'Montrueil', '\'achat\'', 30000, ''),
(3, 'https://cdn.pixabay.com/photo/2020/06/25/10/21/architecture-5339245_640.jpg', 'Lorem', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris dans le 14e arrondissement de Paris. Bienvenue dans un environnement où l\'élégance rencontre modernité, offrant une vie urbaine raffinée.', '75018', 'Paris', '\'location\'', 33000, ''),
(4, 'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris dans le 14e arrondissement de Paris. Bienvenue dans un environnement où l\'élégance rencontre modernité, offrant une vie urbaine raffinée.', '94300', 'Vincennes', '\'location\'', 2000, ''),
(5, 'https://img.freepik.com/photos-gratuite/modele-maison-villa-cle-dessin-retro-bureau-concept-vente-immobilier_1387-310.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris dans le 14e arrondissement de Paris. Bienvenue dans un environnement où l\'élégance rencontre modernité, offrant une vie urbaine raffinée.', '78200', 'Versailles', '\'achat\'', 3000000, ''),
(6, 'https://cdn.pixabay.com/photo/2024/04/23/11/55/building-8714871_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle...Nous sommes ravis de vous présenter notre nouvelle...Nous sommes ravis de vous présenter notre nouvelle...', '77544', 'Tournan', '\'location\'', 1500, ''),
(7, 'https://cdn.pixabay.com/photo/2018/07/15/13/04/living-room-3539587_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris', '75019', 'Paris', '\'location\'', 30000, ''),
(8, 'https://cdn.pixabay.com/photo/2017/06/16/15/58/luxury-home-2409518_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris', '91200', 'Sartrouville', '\'achat\'', 3000000, 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris'),
(9, 'https://cdn.pixabay.com/photo/2017/07/08/02/16/house-2483336_640.jpg', 'Lorem', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '94300', 'Vincennes', '\'achat\'', 12000000, ''),
(10, 'https://cdn.pixabay.com/photo/2024/03/16/04/43/real-estate-8636268_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '93200', 'Montreuil', '\'location\'', 2000, ''),
(11, 'https://cdn.pixabay.com/photo/2020/03/21/20/03/real-estate-4955086_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '94200', 'St Mandé', '\'achat\'', 13000000, ''),
(12, 'https://cdn.pixabay.com/photo/2016/09/20/11/26/home-1682316_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '75011', 'Paris', '\'location\'', 20000, ''),
(13, 'https://cdn.pixabay.com/photo/2016/07/25/17/02/new-home-1540871_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '78500', 'Versailles', '\'achat\'', 30000000, ''),
(14, 'https://cdn.pixabay.com/photo/2018/04/30/13/33/house-3362676_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '78200', 'Versailles', '\'achat\'', 25000000, ''),
(15, 'https://cdn.pixabay.com/photo/2019/12/09/12/59/architecture-4683476_640.jpg', 'LOREM-15', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '78500', 'Versailles', '\'location\'', 13000, ''),
(16, 'https://cdn.pixabay.com/photo/2023/10/18/11/20/building-8323954_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '93200', 'Vincennes', '\'location\'', 15000, ''),
(17, 'https://cdn.pixabay.com/photo/2018/08/09/03/59/home-3593732_640.jpg', 'LOREM', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '94300', 'Vincennes', '\'achat\'', 14000000, ''),
(18, 'https://cdn.pixabay.com/photo/2021/12/05/02/33/real-estate-6846355_640.jpg', 'LOREM-18', 'Nous sommes ravis de vous présenter notre nouvelle résidence de prestige « Villa Montsouris » située à deux pas du magnifique parc de Montsouris ', '91200', 'St Denis', '\'achat\'', 1200000, ''),
(21, 'immoblie-5.jpg', 'LOREM', 'kljhhhhjgjklfhjlfhjkfhjhjk', '75110', 'Paris', NULL, 4000000, NULL),
(22, 'immoblie-5.jpg', 'LOREM', 'kljhhhhjgjklfhjlfhjkfhjhjk', '75110', 'Paris', NULL, 4000000, NULL),
(23, 'immoblie-1.jpg', 'LEORME', 'dfqsjdfjqsdkfj', '45448', 'Vincennes', NULL, 22222, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id_advert`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id_advert` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
