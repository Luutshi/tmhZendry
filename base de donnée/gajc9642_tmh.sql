-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2022 at 10:17 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gajc9642_tmh`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(9, 'Salon'),
(10, 'Cuisine'),
(11, 'Salle de bain'),
(13, 'Chambre'),
(17, 'Ammeublements');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `commandDate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `nightPrice` int(11) NOT NULL,
  `sqrtMeters` int(11) NOT NULL,
  `description` text NOT NULL,
  `dpe` varchar(1) NOT NULL,
  `ges` varchar(1) NOT NULL,
  `nbOfRooms` int(11) NOT NULL,
  `nbOfChambers` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `city`, `nightPrice`, `sqrtMeters`, `description`, `dpe`, `ges`, `nbOfRooms`, `nbOfChambers`, `image1`, `image2`, `image3`) VALUES
(1, 'Paris - Charron', 225, 120, 'Cette belle maison de ville, adapt??e aux terrains ??troits, se distingue par son architecture ??lanc??e!\nD??clinable de 120m??\n3 chambres dont suite parentale\nAvec un garage accol??\nTous nos partenaires ont am??nag??s les maisons t??moins. Venez d??couvrir et testez', 'B', 'B', 5, 2, 'paris1.jpg', 'paris2.jpg', 'paris3.jpg'),
(2, 'Bordeaux - Audace', 180, 110, 'Aventurez-vous avec la s??rie AUDACE !\nSa silhouette m??lange habilement mat??riaux contemporains et chaleur du bois. Au rez-de-chauss??e, de g??n??reuses baies vitr??es brouillent la fronti??re entre l???int??rieur et l???ext??rieur???  Ainsi, l???espace de vie est vaste, lumineux et extensible!\nTous nos partenaires ont am??nag??s les maisons t??moins. Venez d??couvrir et testez', 'B', 'A', 6, 2, 'bordeaux1.jpg', 'bordeaux2.jpg', 'paris3.jpg'),
(3, 'Clermont-Ferrand - Exception K2', 165, 120, 'La maison K2, c???est un dialogue entre l???espace ?? intime ?? des chambres et l???espace ?? public ?? de la maison avec de vastes espaces ?? vivre, qui s?????tale en longueur suivant vos souhaits.\nDans votre maison K2, la lumi??re p??n??tre de tous c??t??s pour sublimer un int??rieur spacieux ?? la personnalit?? affirm??e.\nTous nos partenaires ont am??nag??s les maisons t??moins. Venez d??couvrir et testez', 'A', 'B', 6, 2, 'clermont1.jpg', 'clermont2.jpg', 'paris3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `description`, `price`, `image1`, `image2`, `image3`) VALUES
(31, 'Radio Thomson Vintage 50???S', 'Salon', 'T??moins de notre histoire, nos radios des ann??es 30 ?? 60 trouveront leur place dans un salon chic, moderne ou vintage.\r\nElles repr??sentent le savoir-faire d\'Absolument, les enceintes connect??es les plus uniques au monde alliant design et qualit?? de son audiophile gr??ce ?? la performance des haut-parleurs Focal et son amplificateur analogique 50W permettant de retranscrire la sonorit?? des amplis ?? lampes en profitant d???un dynamisme moderne\r\nAfin de garder le charme de ces vieux postes, nous int??grons des ampoules de r??tro-??clairage du cadran, et nous conservons le bouton de volume d???origine, vous permettant de voyager dans le temps ?? chaque musique.\r\nAmplificateur analogique de 50w (class A/B) :\r\nToutes nos radios sont ??quip??es d???un amplificateur analogique de 50 W permettant de retranscrire la sonorit?? des amplis ?? lampes en profitant d???une dynamique moderne.\r\nHaut-parleur Focal :\r\nToutes nos radios sont ??quip??es de haut-parleurs Focal Performance Coaxial 120W, r??f??rence mondiale dans le secteur de la haute fid??lit??.\r\nBluetooth 5.0 aptX : \r\nNous installons un syst??me Bluetooth 5.0 afin que vous puissiez ??couter librement toutes vos musiques pr??f??r??es depuis votre t??l??phone, ordinateur ou tablette sur votre radio vintage A.bsolument !\r\nEntr??e Jack 3.5mm : \r\nLa prise Jack vous permet de brancher n???importe quel appareil compatible (platine vinyle, lecteur CD, ipod..) ?? votre radio. Vous pourrez ainsi diffuser votre musique via votre radio A.bsolument.\r\nR??tro-??clairage de l\'??cran : \r\nEn restaurant votre poste nous veillons ?? installer des ampoules de r??tro-??clairage sur votre cadran afin que votre radio s?????claire lorsque vous l???allumez !\r\nBouton On/Off d\'origine fonctionnel : \r\nAfin de garder le charme de l???ancien nous veillons ?? garder le maximum d?????l??ment d???origine. De ce fait, le bouton d???origine est configur?? pour allumer et ??teindre la radio et aussi pour r??gler le volume sonore !', 750, 'enceinte1.png', 'enceinte2.png', 'enceinte3.png'),
(32, 'Matelas Prestige - ferme', 'Chambre', 'La composition :\r\nProfitez du confort exceptionnel des plus belles mati??res naturelles : cachemire, duvet de chameau, latex naturel, fibre de coco.\r\nLe latex naturel et la fibre de coco s\'unissent pour offrir un soutien ferme de votre dos. Les faces ??t?? et hiver se compl??tent pour un confort tr??s agr??able et adapt?? toute l\'ann??e : chaud l\'hiver avec le cachemire et frais l\'??t?? gr??ce au duvet de chameau. Con??u dans notre atelier ?? La Fert?? Bernard, votre matelas prestige ferme b??n??ficie d\'une dur??e de vie tr??s cons??quente.\r\n \r\nOrigine du latex naturel :\r\nSri-Lanka / 97 % de puret?? (certifi?? GOLS, meilleur taux)\r\nDensit?? du latex :\r\n75-85 kg/m3, en fonction des zones de confort\r\nDensit?? de la fibre de coco :\r\n4000 gr/m??\r\nComposition de la face ??t?? :\r\n900 gr/m?? : chameau (500 gr/m??) + base naturelle laine (500gr/m??)\r\nComposition de la face hiver :\r\n900 gr/m?? : cachemire (500 gr/m??) + base naturelle laine (500gr/m??)\r\nTissu :\r\nCoton bio - certifi?? GOTS (320 gr/m??)\r\nPoign??es :\r\n4 poign??es par matelas\r\nCertifications :\r\nBIO EU, GOLS, Oeko-tex, GOTS\r\nAdapt?? au sommier relevable :\r\nOui, si l\'utilisation est occasionnelle\r\n \r\nL???entretien :\r\nAfin d\'entretenir votre matelas Cosme, nous vous conseillons simplement d\'a??rer votre chambre 15 minutes par jour. Au contact de l\'air pur, les fibres naturelles se vident de l\'humidit?? capt??e pendant la nuit et deviennent ainsi naturellement anti-acarien. \r\nPour conserver une tr??s bonne dur??e de vie au matelas, nous vous recommandons de le retourner tous les 6 mois. Ainsi, le garnissage peut ??vacuer compl??tement l\'humidit?? et reprendre son gonflant initial.', 1270, 'matelas1.png', 'matelas2.png', 'matelas3.png'),
(33, 'HORTENSE CANAP??', 'Salon', 'Le petit canap?? bridge Hortense s???est vu d??cern?? Label VIA (Valorisation de l???Innovation dans l???Ameublement) pour l???innovation et la qualit?? de son design.\r\nLa structure tr??s fine du ch??ssis donne toute son ??l??gance au mod??le et lui conf??re modernit?? et fonctionnalit??.\r\nEl??gant, ce petit canap??, de faible encombrement, trouvera sa place aussi bien dans une pi??ce ?? vivre que dans une entr??e ou un bureau.\r\nLe soin apport?? par les artisans selliers ?? la confection du canap?? Hortense vous s??duiront sans aucun doute et souligne tout le raffinement de ce petit canap?? style bridge.\r\nLe canap?? Hortense se d??cline ??galement dans une version tr??s confortable de fauteuil bridge.\r\n\r\nTaille du canape :\r\nLongueur : 143cm\r\nProfondeur : 72 cm\r\nHauteur : 70 cm', 3840, 'canape1.png', 'canape2.png', 'canape3.png'),
(34, 'Biblioth??que Etag??re Ch??ne blanchi et laqu??', 'Salon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue ex nunc, a efficitur justo porttitor ut. Sed feugiat, ipsum ac malesuada volutpat, est nibh vulputate ipsum, et varius ipsum felis sed dui. Praesent pellentesque consectetur enim. Nullam fringilla gravida nulla, et auctor nibh rhoncus a. Vestibulum vestibulum lacus urna, non porta erat interdum nec. Aliquam molestie, urna a venenatis imperdiet, diam felis consectetur sem, in bibendum tellus erat eu odio. Nullam in enim at sapien porta fringilla vel nec quam. Pellentesque eget molestie justo, ut feugiat tellus. Sed arcu urna, mollis ac urna quis, porta pretium ex. Cras nec lacinia mauris, nec laoreet lacus. Quisque non lacus eu nisi euismod porttitor. Fusce feugiat mattis volutpat. Cras vel dignissim lacus. Vestibulum scelerisque lorem vel augue venenatis sodales. ', 1240, 'biblio.png', '', ''),
(35, 'Sommier tapissier ', 'Chambre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue ex nunc, a efficitur justo porttitor ut. Sed feugiat, ipsum ac malesuada volutpat, est nibh vulputate ipsum, et varius ipsum felis sed dui. Praesent pellentesque consectetur enim. Nullam fringilla gravida nulla, et auctor nibh rhoncus a. Vestibulum vestibulum lacus urna, non porta erat interdum nec. Aliquam molestie, urna a venenatis imperdiet, diam felis consectetur sem, in bibendum tellus erat eu odio. Nullam in enim at sapien porta fringilla vel nec quam. Pellentesque eget molestie justo, ut feugiat tellus. Sed arcu urna, mollis ac urna quis, porta pretium ex. Cras nec lacinia mauris, nec laoreet lacus. Quisque non lacus eu nisi euismod porttitor. Fusce feugiat mattis volutpat. Cras vel dignissim lacus. Vestibulum scelerisque lorem vel augue venenatis sodales. ', 520, 'sommier.png', '', ''),
(36, 'Buffet TV Ch??ne weng?? noir,  laqu?? et m??tal', 'Ammeublements', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue ex nunc, a efficitur justo porttitor ut. Sed feugiat, ipsum ac malesuada volutpat, est nibh vulputate ipsum, et varius ipsum felis sed dui. Praesent pellentesque consectetur enim. Nullam fringilla gravida nulla, et auctor nibh rhoncus a. Vestibulum vestibulum lacus urna, non porta erat interdum nec. Aliquam molestie, urna a venenatis imperdiet, diam felis consectetur sem, in bibendum tellus erat eu odio. Nullam in enim at sapien porta fringilla vel nec quam. Pellentesque eget molestie justo, ut feugiat tellus. Sed arcu urna, mollis ac urna quis, porta pretium ex. Cras nec lacinia mauris, nec laoreet lacus. Quisque non lacus eu nisi euismod porttitor. Fusce feugiat mattis volutpat. Cras vel dignissim lacus. Vestibulum scelerisque lorem vel augue venenatis sodales. ', 450, 'meuble1.png', '', ''),
(37, 'Table basse rectangulaire Ch??ne blanchi et laqu??', 'Ammeublements', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue ex nunc, a efficitur justo porttitor ut. Sed feugiat, ipsum ac malesuada volutpat, est nibh vulputate ipsum, et varius ipsum felis sed dui. Praesent pellentesque consectetur enim. Nullam fringilla gravida nulla, et auctor nibh rhoncus a. Vestibulum vestibulum lacus urna, non porta erat interdum nec. Aliquam molestie, urna a venenatis imperdiet, diam felis consectetur sem, in bibendum tellus erat eu odio. Nullam in enim at sapien porta fringilla vel nec quam. Pellentesque eget molestie justo, ut feugiat tellus. Sed arcu urna, mollis ac urna quis, porta pretium ex. Cras nec lacinia mauris, nec laoreet lacus. Quisque non lacus eu nisi euismod porttitor. Fusce feugiat mattis volutpat. Cras vel dignissim lacus. Vestibulum scelerisque lorem vel augue venenatis sodales. ', 400, 'meuble2.png', '', ''),
(38, 'Vaisselier Noyer naturel et laqu?? , pied m??tal', 'Ammeublements', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue ex nunc, a efficitur justo porttitor ut. Sed feugiat, ipsum ac malesuada volutpat, est nibh vulputate ipsum, et varius ipsum felis sed dui. Praesent pellentesque consectetur enim. Nullam fringilla gravida nulla, et auctor nibh rhoncus a. Vestibulum vestibulum lacus urna, non porta erat interdum nec. Aliquam molestie, urna a venenatis imperdiet, diam felis consectetur sem, in bibendum tellus erat eu odio. Nullam in enim at sapien porta fringilla vel nec quam. Pellentesque eget molestie justo, ut feugiat tellus. Sed arcu urna, mollis ac urna quis, porta pretium ex. Cras nec lacinia mauris, nec laoreet lacus. Quisque non lacus eu nisi euismod porttitor. Fusce feugiat mattis volutpat. Cras vel dignissim lacus. Vestibulum scelerisque lorem vel augue venenatis sodales. ', 560, 'meuble3.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reason`
--

CREATE TABLE `reason` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `administrator` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `phoneNumber`, `reason_id`, `administrator`) VALUES
(4, 'Luis', 'Teixeira Lima', 'luis.teixeira-lima@epitech.digital', '$2y$10$P8zLNR2zj4j7A.OHdCNOi.EI4rWj8pij/bTNR17AePWBV6Z5gLewe', 767472227, 0, 1),
(9, 'Remi', 'Lemoust', 'remi@outlook.fr', '$2y$10$Pecw./GwkTgF4Crrg9RtgO3hn5p8XT.yTooVk25RazgAaPfLIE/k2', 783374192, 0, 1),
(10, 'larze', 'larze', 'larze@outlook.fr', '$2y$10$N8uPahinnI0MmiRcUL.ZIO0W92Ucv8I0y40zuPNaUf2XA92qHzkAO', 9765456, 0, 0),
(11, 'Ko,ioij', 'ojiojioj', 'aeae@gm.com', '$2y$10$.vxasR1vMnFOeUW/Meu6ROiNlE25MA7AG0Xf9tHp9qxpvfqwGHPdG', 980809, 0, 0),
(12, 'Luis', 'Teixeira Lima', 'luislima003.ll@gmail.com', '$2y$10$q41GzUkmjJ4ig4Ncol4r5Oro2s7ztRtYtoRGYj6rqL0Hh8m1QKQ4G', 767472227, 0, 0),
(13, 'dezdzedz', 'dzdzdzd', 'remidede@outlook.fr', '$2y$10$3QJr8cdm.AgcKYQ26aJYtO7mPggyAK.fik5W7ErgYucURjj13QX9G', 0, 0, 0),
(14, 'myriam', 'myriam', 'myriam@outlook.fr', '$2y$10$IQW1qqGrASdLTBbo0zRILODGUjctz2kDTjHXF74vbXxmvRpLgFLP2', 98765678, 0, 0),
(15, 'luis', 'oiuoi', 'aqwxszedcvf@gmail.com', '$2y$10$0kjFYXVub.HyiqkNmXuxjeR9J.Z/JGCnDG0w2Csj7WFOHJ6tZh/Q2', 798789789, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
