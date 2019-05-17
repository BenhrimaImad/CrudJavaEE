-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 17 mai 2019 à 11:53
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  `detail` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `discription`, `detail`, `category`, `image`) VALUES
(3, 'hello im getting edited', '2019-05-10 00:00:00', 'mnbmnb', 'i will be deleted', 'sport', 'khjkjh'),
(4, 'bkhbmnb', '2019-05-10 00:00:00', 'mnbmnb', 'mnbmnbmnbkjbkjbk', 'sport', 'khjkjh'),
(7, 'sdfsfdsFDS', '2019-05-10 00:00:00', 'fdsfds', 'fdsfds', 'tech', 'hgfhgfhgf'),
(35, 'new Post', '2019-05-16 00:00:00', 'this post will be edited', 'just more details uslesss', 'sport', 'the image will be added soon'),
(36, 'test i dont know ', '2019-05-16 00:00:00', 'test will be edited', 'it will be delete after', 'tech', 'hi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
