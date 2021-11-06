-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 06 Novembre 2021 à 02:00
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `eligible_projet_php`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`nom`, `prenom`, `mail`, `mdp`, `id`) VALUES
('sbh', 'karim', 'km@mail.com', 'karim123', 1),
('Boultier', 'Franck', 'franck@mail.com', 'frnce', 2),
('Le Pelletier', 'Nathalie', 'nat@mail.com', 'nathy', 3),
('Bouadou', 'Mohamed', 'moha@mail.com', 'mohab', 4),
('Lion', 'Eric', 'ric@mail.com', 'lion12', 5),
('Hio', 'Li', 'lihio@mail.com', 'lilili', 6),
('Khalo', 'Khadiatou', 'khad@mail.com', 'khalo123', 7),
('MUMARIKA', 'Rajaa', 'raja@mail.com', 'raja123', 8),
('Le proF', 'web', 'prof@mail.com', 'prof123', 9);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
