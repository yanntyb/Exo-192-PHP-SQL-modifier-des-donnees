-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 22 fév. 2021 à 05:23
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_cours`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prenom` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rue` varchar(70) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numero` smallint(5) UNSIGNED NOT NULL,
  `code_postal` smallint(5) UNSIGNED NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pays` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `rue`, `numero`, `code_postal`, `ville`, `pays`, `mail`) VALUES
(1, 'Doe', 'John', 'Rue de chez pas quoi', 5, 59610, 'Fourmies', 'France', 'j.doe@fondationface.org'),
(2, 'Honor', 'Sarah', 'Rue de la Mairie', 2, 59610, 'Fourmies', 'France', 'conor.s@gmail.com'),
(3, 'Doe', 'Jane', 'Rue de la haut', 9, 59610, 'Fourmies', 'France', 'doe@example.fr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
