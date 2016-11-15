-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 14 Novembre 2016 à 15:28
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `polylectures`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `IDAUTEUR` int(11) NOT NULL,
  `CODENATION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `NOMAUTEUR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRENOMAUTEUR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATENAISSANCE` date DEFAULT NULL,
  `DATEMORT` date DEFAULT NULL,
  `IMAGEAUTEUR` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`IDAUTEUR`, `CODENATION`, `NOMAUTEUR`, `PRENOMAUTEUR`, `DATENAISSANCE`, `DATEMORT`, `IMAGEAUTEUR`) VALUES
(1, 'ANG', 'Orwell', 'George', '1903-06-25', '1950-01-21', ''),
(2, 'FRA', 'De Maupassant', 'Guy', '1850-08-05', '1893-07-06', ''),
(3, 'ANG', 'Tolkien', 'J.R.R.', '1892-01-03', '1973-09-02', '');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `CODECATEGORIE` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `LIBELLECATEGORIE` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`CODECATEGORIE`, `LIBELLECATEGORIE`) VALUES
('FAN', 'Fantasy'),
('FDY', 'Fiction Dystopique'),
('FHI', 'Fiction Historique');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `IDLIVRE` int(11) NOT NULL,
  `CODECATEGORIE` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `IDAUTEUR` int(11) NOT NULL,
  `TITRE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESUME` text COLLATE utf8_unicode_ci,
  `NBPAGES` int(11) DEFAULT NULL,
  `ANNEEPARUTION` int(4) DEFAULT NULL,
  `COUVERTURE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`IDLIVRE`, `CODECATEGORIE`, `IDAUTEUR`, `TITRE`, `RESUME`, `NBPAGES`, `ANNEEPARUTION`, `COUVERTURE`) VALUES
(1, 'FAN', 3, 'Le Hobbit', 'Le hobbit Bilbo Bessac mène une vie tranquille, sans grande ambition, s''aventurant rarement au-delà de son logis, à Cul-de-Sac. Son existence se trouve soudainement perturbée par l''arrivée du magicien Gandalf qui, accompagné de treize nains, l''entraîne dans un long et improbable périple en direction de la Montagne Solitaire. Ils ont en effet pour dessein d''aller dérober le trésor de Smaug le Puissant, un énorme et très dangereux dragon...', 380, 1937, NULL),
(2, 'FDY', 1, '1984', 'De tous les carrefours importants, le visage à la moustache noire vous fixait du regard. Il y en avait un sur le mur d''en face. BIG BROTHER VOUS REGARDE, répétait la légende, tandis que le regard des yeux noirs pénétrait les yeux de Winston... Au loin, un hélicoptère glissa entre les toits, plana un moment, telle une mouche bleue, puis repartit comme une flèche, dans un vol courbe. C''était une patrouille qui venait mettre le nez aux fenêtres des gens. Mais les patrouilles n''avaient pas d''importance. Seule comptait la Police de la Pensée.', 438, 1949, NULL),
(3, 'FHI', 2, 'Bel-Ami', 'Georges Duroy, dit Bel-Ami, est un jeune homme au physique avantageux. Le hasard d''une rencontre le met sur la voie de l''ascension sociale. Malgré sa vulgarité et son ignorance, cet arriviste parvient au sommet par l''intermédiaire de ses maîtresses et du journalisme. Cinq héroïnes vont tour à tour l''initier aux mystères du métier, aux secrets de la mondanité et lui assurer la réussite qu''il espère. Dans cette société parisienne en pleine expansion capitaliste et coloniale, que Maupassant dénonce avec force parce qu''il la connaît bien, les femmes éduquent, conseillent, oeuvrent dans l''ombre. La presse, la politique, la finance s''entremêlent. Mais derrière les combines politiques et financières, l''érotisme intéressé, la mort est là qui veille, et avec elle, l''angoisse que chacun porte au fond de lui-même.', 448, 1885, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `nationnalite`
--

CREATE TABLE `nationnalite` (
  `CODENATION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `LIBELLENATION` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `nationnalite`
--

INSERT INTO `nationnalite` (`CODENATION`, `LIBELLENATION`) VALUES
('ANG', 'Anglaise'),
('FRA', 'Française');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IDUSER` int(11) NOT NULL,
  `PSEUDO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MDP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMUSER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRENOMUSER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAILUSER` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IDUSER`, `PSEUDO`, `MDP`, `NOMUSER`, `PRENOMUSER`, `MAILUSER`, `IMAGE`) VALUES
(1, 'admin', 'jesaispas', 'administrateur', 'administrateur', NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`IDAUTEUR`),
  ADD KEY `FK_ASSOCIATION_3` (`CODENATION`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`CODECATEGORIE`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`IDLIVRE`),
  ADD KEY `FK_APPARTIENT` (`CODECATEGORIE`),
  ADD KEY `FK_ASSOCIATION_2` (`IDAUTEUR`);

--
-- Index pour la table `nationnalite`
--
ALTER TABLE `nationnalite`
  ADD PRIMARY KEY (`CODENATION`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IDUSER`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `IDLIVRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD CONSTRAINT `FK_ASSOCIATION_3` FOREIGN KEY (`CODENATION`) REFERENCES `nationnalite` (`CODENATION`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK_APPARTIENT` FOREIGN KEY (`CODECATEGORIE`) REFERENCES `categorie` (`CODECATEGORIE`),
  ADD CONSTRAINT `FK_ASSOCIATION_2` FOREIGN KEY (`IDAUTEUR`) REFERENCES `auteur` (`IDAUTEUR`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
