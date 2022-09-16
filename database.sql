CREATE DATABASE eshop;

USE eshop;

CREATE TABLE `chaussures` (
  `id_Chaussures` int(11) NOT NULL,
  `id_marque` int(9) NOT NULL,
  `pointure` int(2) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `nom_chaussure` varchar(25) NOT NULL,
  `images` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chaussures`
--

INSERT INTO `chaussures` (`id_Chaussures`, `id_marque`, `pointure`, `couleur`, `prix`, `nom_chaussure`, `images`) VALUES
(1, 5, 39, 'Violet', 85000, 'Gel-Lyte 3 OG Barely', 'https://media2.fenom.com/81044-product_large/xasics-gel-lyte-3-og-awake-black.jpg.pagespeed.ic.3vKb8upoOk.jpg'),
(2, 2, 40, 'Rose', 30000, 'Air Max Flyknit Race', 'https://media1.fenom.com/81519/nike-air-max-flyknit-racer-multi.jpg'),
(3, 1, 41, 'Marron', 45000, 'State Series Ohio', 'https://media3.fenom.com/81164-product_large/xadidas-state-series-ohio-buckeye-.jpg.pagespeed.ic.kqKRES3LKg.jpg'),
(4, 6, 45, 'Rose', 90000, 'Chuck 70 High Stussy', 'https://media3.fenom.com/81231-product_large/xconverse-chuck-70-high-stussy-surfman.jpg.pagespeed.ic.K1xEeXRyrH.jpg'),
(5, 1, 42, 'Blanc', 80000, 'Skateboarding Puig', 'https://media3.fenom.com/80844/adidas-skateboarding-puig-indoor-white.jpg'),
(6, 6, 40, 'Bleu', 50000, 'One Star Pro OX ', 'https://media3.fenom.com/81050/converse-one-star-pro-ox-sean-pablo-rapid-teal.jpg'),
(7, 2, 42, 'Rose', 25000, 'W Dunk High 1985', 'https://media1.fenom.com/81186/nike-w-dunk-high-1985-arctic-orange.jpg'),
(8, 1, 43, 'Noir', 60000, 'Retropy P9 Ash', 'https://media2.fenom.com/80879-product_large/adidas-retropy-p9-ash-pearl.jpg'),
(9, 2, 41, 'Blanc', 75000, 'ACG Mountain Fly Low', 'https://media1.fenom.com/80619-product_large/xnike-acg-mountain-fly-low-se-white.jpg.pagespeed.ic.UVcvN7qUOG.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_Client` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(75) NOT NULL,
  `adresse` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_Commande` int(11) NOT NULL,
  `id_Client` int(9) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `liste_commandes`
--

CREATE TABLE `liste_commandes` (
  `id_Commande` int(11) NOT NULL,
  `id_Chaussures` int(9) NOT NULL,
  `quantité` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `marque` varchar(25) NOT NULL,
  `logo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `marque`, `logo`) VALUES
(1, 'Adidas', 'LogoAdidas'),
(2, 'Nike', 'LogoNike'),
(3, 'Puma', 'LogoPuma'),
(4, 'Vans', 'LogoVans'),
(5, 'Asics', 'LogoAsics'),
(6, 'Converse', 'LogoConver');

-- --------------------------------------------------------

--
-- Structure de la table `pointure`
--

CREATE TABLE `pointure` (
  `id_pointure` int(11) NOT NULL,
  `pointure` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pointure`
--

INSERT INTO `pointure` (`id_pointure`, `pointure`) VALUES
(1, 39),
(2, 40),
(3, 41),
(4, 42),
(5, 43),
(6, 45);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chaussures`
--
ALTER TABLE `chaussures`
  ADD PRIMARY KEY (`id_Chaussures`),
  ADD KEY `id_marque` (`id_marque`),
  ADD KEY `pointure` (`pointure`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_Client`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_Commande`),
  ADD KEY `id_Client` (`id_Client`);

--
-- Index pour la table `liste_commandes`
--
ALTER TABLE `liste_commandes`
  ADD PRIMARY KEY (`id_Commande`),
  ADD KEY `id_Chaussures` (`id_Chaussures`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `pointure`
--
ALTER TABLE `pointure`
  ADD PRIMARY KEY (`id_pointure`),
  ADD KEY `pointure` (`pointure`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chaussures`
--
ALTER TABLE `chaussures`
  MODIFY `id_Chaussures` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_Client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_Commande` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `liste_commandes`
--
ALTER TABLE `liste_commandes`
  MODIFY `id_Commande` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `pointure`
--
ALTER TABLE `pointure`
  MODIFY `id_pointure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chaussures`
--
ALTER TABLE `chaussures`
  ADD CONSTRAINT `chaussures_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_Client`) REFERENCES `clients` (`id_Client`);

--
-- Contraintes pour la table `liste_commandes`
--
ALTER TABLE `liste_commandes`
  ADD CONSTRAINT `liste_commandes_ibfk_1` FOREIGN KEY (`id_Chaussures`) REFERENCES `chaussures` (`id_Chaussures`);

--
-- Contraintes pour la table `pointure`
--
ALTER TABLE `pointure`
  ADD CONSTRAINT `pointure_ibfk_1` FOREIGN KEY (`pointure`) REFERENCES `chaussures` (`pointure`);
COMMIT;
