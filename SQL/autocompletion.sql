-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 mai 2022 à 11:04
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `fruits_et_legumes`
--

CREATE TABLE `fruits_et_legumes` (
  `id` int(10) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fruits_et_legumes`
--

INSERT INTO `fruits_et_legumes` (`id`, `nom`, `type`, `description`, `image`) VALUES
(1, 'artichaut', 'legume', 'L’artichaut (Cynara cardunculus var. scolymus (L.) Benth.) est une plante dicotylédone de la famille des Astéracées (ou Composées) appartenant au genre Cynara.\r\nL\'artichaut lui-même est un chardon domestiqué et cultivé.', 'Artichaut.jpg'),
(2, 'chou-fleur', 'legume', 'Le chou-fleur est une plante herbacée bisannuelle qui produit une boule blanche tendre et compacte. Cette boule est un méristème, un organe pré-floral comestible', 'Chou-fleur.jpg'),
(3, 'épinard', 'legume', 'L\'épinard (Spinacia oleracea) est une plante potagère, annuelle ou bisannuelle, de la famille des Chenopodiaceae ou des Amaranthaceae selon les classifications. Originaire d\'Iran, il est aujourd\'hui cultivé dans toutes les régions tempérées.', 'Epinard.jpg'),
(4, 'concombre', 'legume', 'Le concombre (Cucumis sativus) est une plante potagère herbacée, rampante, de la même famille que la calebasse africaine, le melon ou la courge (famille des Cucurbitacées). C\'est botaniquement un fruit qui est consommé comme un légume. ', 'Concombre.jpg'),
(5, 'aubergine', 'legume', 'L’aubergine (Solanum melongena L.) est une plante dicotylédone de la famille des Solanaceae, cultivée pour son légume-fruit. Le terme aubergine désigne la plante et le fruit.', 'Aubergine.jfif'),
(6, 'courgette', 'legume', 'La courgette est une plante herbacée de la famille des Cucurbitaceae, c\'est aussi le fruit comestible de la plante du même nom.\r\nLa courgette est un fruit courant en été, la fleur de courgette est aussi utilisée en cuisine.', 'Courgette.jpg'),
(7, 'tomate', 'legume', 'La tomate (Solanum lycopersicum L.) est une espèce de plantes herbacées du genre Solanum de la famille des Solanacées, originaire du Nord-Ouest de l\'Amérique du Sud1, largement cultivée pour son fruit. Le terme désigne aussi ce fruit charnu.', 'Tomate.jpg'),
(8, 'oignon', 'legume', 'L\'oignon ou ognon(Allium cepa), est une espèce de plantes herbacées bisannuelles largement et depuis longtemps cultivée comme plante potagère pour ses bulbes de saveur et d\'odeur fortes ou pour ses feuilles.', 'Oignon.jpg'),
(9, 'échalote', 'legume', 'L\'échalote ( Allium cepa L. var. aggregatum G. Don.) est une plante bulbeuse de la famille des Amaryllidacées(précédemment Liliacées), cultivée comme plante condimentaire et potagère. Le terme désigne aussi le bulbe lui-même.', 'Échalote.jpg'),
(10, 'ail', 'legume', 'L\'ail (pluriel : ails ou aulx)(Allium sativum) est une espèce de plantes potagères vivaces monocotylédones dont les bulbes, à l\'odeur et au goût forts, sont employés comme condiment en cuisine. La tête d\'ail se compose de plusieurs gousses.', 'Ail.jpg'),
(11, 'topinambour', 'legume', 'Le topinambour (bot. Helianthus tuberosus L.), aussi appelé artichaut de Jérusalem, truffe du Canada ou soleil vivace, est une plante vivace de la famille des astéracées, dont l\'espèce appartient au même genre que le tournesol (Helianthus annuus)', 'Topinambour.jpg'),
(12, 'pomme de terre', 'legume', 'La Pomme de terre ou patate est un tubercule comestible produit par l’espèce Solanum tuberosum, appartenant à la famille des solanacées. Le terme désigne également la plante elle-même.', 'Pomme_de_terre.jpg'),
(13, 'citron', 'fruit', 'Le citron (ou citron jaune) est un agrume, fruit du citronnier (Citrus limon). Il existe sous deux formes : le citron doux, fruit décoratif de cultivars à jus peu ou pas acide néanmoins classé Citrus limon (L.) ', 'Citron.jpg'),
(14, 'kiwi', 'fruit', 'Les kiwis sont des fruits de plusieurs espèces de lianes du genre Actinidia, famille des Actinidiaceae. Ils sont originaires de Chine, notamment de la province de Shaanxi. On en trouve par ailleurs dans des climats dits montagnards tropicaux. ', 'Kiwi.jpg'),
(15, 'poire', 'fruit', 'La poire est le fruit à pépins comestible au goût doux et sucré, produit par le poirier commun (Pyrus communis L.), arbre de la famille des Rosaceae.', 'Poire.jpg'),
(16, 'pomme', 'fruit', 'La pomme est un fruit comestible produit par un pommier. Les pommiers sont cultivés à travers le monde. L\'arbre est originaire d\'Asie centrale, le Malus sieversii peut encore être trouvé de nos jours.', 'Pomme.jpg'),
(17, 'orange', 'fruit', 'L’orange ou orange douce est le fruit de l\'oranger (Citrus sinensis L.) de la famille des Rutacées. Comme pour tous les agrumes, il s\'agit d\'une forme particulière de baie appelée hespéride.', 'Orange.jpg'),
(18, 'ananas', 'fruit', 'L\'ananas (Ananas comosus) est une espèce de plantes xérophytes, originaire d\'Amérique du Sud, il est connu principalement pour son fruit comestible, qui est en réalité un fruit composé.', 'Ananas.jpg'),
(19, 'abricot', 'fruit', 'L\'abricot est le fruit d\'un arbre généralement de petite taille appelé abricotier, de la famille des Rosaceae. Le nom scientifique de l\'abricotier est Prunus armeniaca (prune d\'Arménie).', 'Abricot.jpg'),
(20, 'fraise', 'fruit', 'La fraise est un fruit rouge issu des fraisiers, espèces de plantes herbacées appartenant au genre Fragaria (famille des Rosacées), dont plusieurs variétés sont cultivées.', 'Fraise.jpg'),
(21, 'framboise', 'fruit', 'La framboise est un fruit rouge issu du framboisier (Rubus idaeus), un arbre de la famille des rosacées. La framboise pèse de 4 à 10 g, mesure jusqu\'à 2,5 cm et compte de 40 à 80 drupéoles1.', 'Raspberry.jpg'),
(22, 'melon', 'fruit', 'Le melon (Cucumis melo) est une plante herbacée annuelle originaire d\'Afrique intertropicale, appartenant à la famille des Cucurbitacées et largement cultivée comme plante potagère pour son fruit comestible.', 'Melon.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fruits_et_legumes`
--
ALTER TABLE `fruits_et_legumes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fruits_et_legumes`
--
ALTER TABLE `fruits_et_legumes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
