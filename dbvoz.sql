-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2021 a las 01:28:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbvoz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idclientes`, `codigo`, `nombre`, `apellidos`, `direccion`, `telefono`) VALUES
(1, '101.0', 'ESTEFANIA', 'AROCAS PASADAS', 'PADR , 109', '938205580'),
(2, '102.0', 'QUERALT', 'VISO GILABERT', 'CASA CORDELLAS , ', '936545115'),
(3, '103.0', 'JOAN', 'AYALA FERRERAS', 'DOCTOR FLEMING , 11', '938202768'),
(4, '104.0', 'JOAN', 'BAEZ TEJADO', 'BERTRAND I SERRA , 11, 3R.', '938727844'),
(5, '105.0', 'MARC', 'BASTARDES SOTO', 'CARRI , 12, 5 A', '938350521'),
(6, '106.0', 'JOSEP', 'ANGUERA VILAFRANCA', 'PIRINEUS , 10', '938755645'),
(7, '107.0', 'ESTHER', 'PASCUAL ALOY', 'JACINT VERDAGUER , 43', '936520547'),
(8, '108.0', 'LAURA', 'VALLS GIRVENT', 'NOU , 9, 2N.', '936565656'),
(9, '109.0', 'RAQUEL', 'RAYA GARCIA', 'JACINT VERDAGUER , 52, 3R, 1A.', '936752156'),
(10, '110.0', 'JOAN', 'ANDREU CRUZ', 'JOAN MIR , 10', '938300025'),
(11, '111.0', 'MARIA ISABEL', 'BARALDS COMAS', 'JAUME GALOBART , 12', '938385567'),
(12, '112.0', 'ADRI', 'BERENGUERAS CULLERS', 'PINTOR SERT , 12, 1R., 1A.', '937809812'),
(13, '113.0', 'GERARD', 'LPEZ DE PABLO GARCIA UCEDA', 'BELLAVISTA , 30', '936520741'),
(14, '114.0', 'ELIOT', 'ARNAU MORENO', 'MONTURIOL , 10, 1R.', '938202456'),
(15, '115.0', 'JORDI', 'RAYA GAVILAN', 'JACINT VERDAGUER , 52, 2N., 4A.', '938754554'),
(16, '116.0', 'LLUS', 'ZAMBUDIO FIGULS', 'CASA NOVA , ', '936875544'),
(17, '117.0', 'LAURA', 'BIDAULT CULLERS', 'DE LA CAA , 12, 1R., C', '935880712'),
(18, '118.0', 'JORDI', 'BIOSCA FONTANET', 'PINTOR SERT , 12, 2N., 1A.', '936875255'),
(19, '119.0', 'DOUNYA', 'ZAFRA FIGULS', 'CASA SARA , ', '936542775'),
(20, '120.0', 'JULIO', 'ALEU ICART', 'ARTS , 1, 1R, 1A.', '938773545'),
(21, '121.0', 'ANDREU', 'BADIA TORN', 'GENERAL PRIM , 11, 2N.', '938200022'),
(22, '122.0', 'RAMON', 'MORALES GESE', 'CAU DE LA GUINEU , 4', '936512545'),
(23, '123.0', 'DAVID-JESE', 'BLANCO FONTANET', 'JOAN SANMART , 12, 2N., 2A.', '937785655'),
(24, '124.0', 'ARAN', 'ALVAREZ FERNNDEZ', 'PROL. PADR , 1, 3R. 1A.', '938300385'),
(25, '125.0', 'GEMMA', 'GARCIA ALMOGUERA', 'SALLENT , 22, 2N.', '936520471'),
(26, '126.0', 'IVAN', 'LIBORI FIGUERAS', 'JOAN MIR , 3', '936012445'),
(27, '127.0', 'DAVID', 'BIDAULT PUEYO', 'LLUS CASTELLS , 12, 2N.', '934500611'),
(28, '128.0', 'XAVIER', 'BENITEZ JOSE', 'SANT VALENT , 12, 1R.', '937885544'),
(29, '129.0', 'MARIO', 'PASCUAL FLORES', 'NGEL GUIMER , 43, 2N', '936512105'),
(30, '130.0', 'JESUS', 'AYALA TORN', 'JAUME GALOBART , 11', '938202200'),
(31, '131.0', 'GEMMA', 'LISTAN FIGUERAS', 'AVINGUDA TRES , 3, 1R., 1A.', '939965585'),
(32, '132.0', 'SILVIA', 'RASERO GAVILAN', 'JACINT VERDAGUER , 52, 2N., 1A.', '936541235'),
(33, '133.0', 'ALBERT', 'ARNALOT PUIG', 'DIPUTACI , 10', '938204054'),
(34, '134.0', 'MARIA', 'MOLINER GARRIDO', 'VIC , 39, 1R., 2A.', '936584541'),
(35, '135.0', 'BERTA', 'GALOBART GARCIA', 'GERMAN DURAN , 21', '934111475'),
(36, '136.0', 'BERTA', 'LPEZ GARRIGASSAIT', 'BELLAVISTA , 30', '935687444'),
(37, '137.0', 'MIREIA', 'SNCHEZ GMEZ', 'NOU , 7, 2N.', '936658711'),
(38, '138.0', 'GEMMA', 'ALAVEDRA SUNY', 'MANELIC , 1', '938773941'),
(39, '139.0', 'MARIA ISABEL', 'ALIGU BONVEH', 'DE LA PESCA , 1, 1R., 1A.', '938305295'),
(40, '140.0', 'TONI', 'MAS FRANCH', 'PIRINEUS , 34', '936524446'),
(41, '141.0', 'ALEJANDRO', 'ALOY COMPTE', 'PROL. JACINT VERDAGUER , 1, 2N., 2A.', '938305551'),
(42, '142.0', 'JOAN MART', 'ASENSIO VEGA', 'MALLORCA , 11', '938206097'),
(43, '143.0', 'INGRID', 'BIDAULT PREZ', 'SANT BENET , 12, 2N.', '934500644'),
(44, '144.0', 'OLIVER', 'ALOY CODINACHS', 'PROL. PADR , 1, 2N., 2A.', '938305594'),
(45, '145.0', 'SANDRA', 'ALTIMIRAS ARMENTEROS', 'ARTS , 1, 2N., 2A.', '938300422'),
(46, '146.0', 'JORDI', 'BELMONTE SNCHEZ', 'JOAN XXIII , 12, 1R, 2A.', '938350511'),
(47, '147.0', 'MARC', 'BAJONA GARCIA', 'BERTRAND I SERRA , 11, 3R.', '938727589'),
(48, '148.0', 'JORDINA', 'AGUILAR RODRIGUEZ', 'LA SARDANA , 1', '938208488'),
(49, '149.0', 'MARIA JOS', 'BARRIGA SOTO', 'GALILEU , 12', '938320587'),
(50, '150.0', 'RAQUEL', 'AVILA MASJUAN', 'SANT VALENT , 11', '938203095'),
(51, '151.0', 'ENRIC', 'PARRAMON FLORES', 'JOAN XXIII , 43', '934555455'),
(52, '152.0', 'MARTA', 'AGUILAR RAMOS', 'DE LA PAU , 1', '938208502'),
(53, '153.0', 'CARLA', 'AYALA ALSINA', 'SANT ANTONI MARIA CLARET , 11', '938205245'),
(54, '154.0', 'MARIA NOELIA', 'ALVAREZ TROYANO', 'AVINGUDA TRES , 1, 3R., 1A.', '938300374'),
(55, '155.0', 'CRISTINA', 'ALINS GONZLEZ', 'PROL. PADR , 1, 2N., 1A.', '938305576'),
(56, '156.0', 'CARLOS', 'ACUA TORT', 'SANT JOAN , 0, C, 3R. A', '938208614'),
(57, '157.0', 'DAVID', 'ALGU TRANCHO', 'PROL. JACINT VERDAGUER , 1, 1R., 1A.', '938770077'),
(58, '158.0', 'CRISTIAN', 'BADIA CASTILLO', 'JOAN XXIII , 11, 1R., 1A.', '938200713'),
(59, '159.0', 'JULIO ALBERTO', 'BENITEZ FLORES', 'LLUS CASTELLS , 12, 1R.', '938270685'),
(60, '160.0', 'SERGI', 'TORRUELLA GARCIA', 'PADR , 83', '936021048'),
(61, '161.0', 'ALEIX', 'ALBERICH RODRIGUEZ', 'SANT ISCLE , 1', '938773933'),
(62, '162.0', 'VERNICA', 'ARMENCOT PUIG', 'MONTSERRAT , 10', '938206766'),
(63, '163.0', 'MARIONA', 'ALIGU RIVERA', 'PROL. JACINT VERDAGUER , 1, 1R., 2A.', '938305223'),
(64, '164.0', 'MARC', 'BARRIGA RIU', 'TRABUCAIRES , 12', '938325565'),
(65, '165.0', 'GEMMA', 'PORTELLA GISPETS', 'JACINT VERDAGUER , 49, 4T., 2A.', '936565448'),
(66, '166.0', 'RICARD', 'AGUILERA BAENA', 'MANELIC , 1', '938208360'),
(67, '167.0', 'JUAN', 'RODRIGUEZ GARCA', 'VERGE DE FTIMA , 6, BX., 2A.', '936549889'),
(68, '168.0', 'MARTA', 'AGUILAR SUNY', 'SANT JOAN , 0, D, 3R. A', '938208677'),
(69, '169.0', 'NATLIA', 'BARRIGA TARD', 'GALILEU , 12', '938325558'),
(70, '170.0', 'MARTA', 'BARCONS LARA', 'ESPORTS , 12', '938360281'),
(71, '171.0', 'LAURA', 'AGUILERA TATJ', 'JOSEP BOIXADERAS , 1', '938208380'),
(72, '172.0', 'JOAN', 'ALEU PRAT', 'CERVANTES , 1, 1R.', '938770878'),
(73, '173.0', 'ALEXIA', 'VALLS GIRVENT', 'CERVANTES , 9, 1R.', '936874511'),
(74, '174.0', 'FERRAN', 'MOLINA GARRIDO', 'JOAN XXIII , 39', '936548745'),
(75, '175.0', 'CRISTINA', 'ARISSA HERMOSO', 'DOCTOR BARNARD , 10', '938755512'),
(76, '176.0', 'JOS ANTONIO', 'BARALDS PARDO', 'ESPORTS , 12', '938722096'),
(77, '177.0', 'JORDI', 'SUAREZ GARZN', 'DE LA PAU , 8', '934512544'),
(78, '178.0', 'BEGONYA', 'ARPA MORENO', 'SANT VALENT , 11', '938205011'),
(79, '179.0', 'INGRID', 'ALOY FARRANDO', 'PROL. PADR , 1, 2N., 2A.', '938300864'),
(80, '180.0', 'MIQUEL', 'LUQUE GARRIGASAIT', 'VIC , 30 (TORROELLA)', '933256844'),
(81, '181.0', 'AGUST', 'RID GMEZ', 'SANT ISCLE , 6', '936528779'),
(82, '182.0', 'ANTONI', 'SANTAMARIA FLOTATS', 'JAUME BALMES , 70, 3R, 1A.', '931021886'),
(83, '183.0', 'JOAN', 'HERMS GMEZ', 'GERMAN DURAN , 27, 3R., 1A.', '936201457'),
(84, '184.0', 'MNICA', 'ARTIGAS MATURANO', 'SANT JOAN , 11', '938207515'),
(85, '185.0', 'GERARD', 'AGUILAR MASANA', 'PUIG , 1', '938208558'),
(86, '186.0', 'GEMMA', 'ALTIMIRAS SERAROLS', 'PROL. JACINT VERDAGUER , 1, 2N., 2A.', '938300496'),
(87, '187.0', 'MARIA', 'TORRESCASANA GARCIA', 'RAMON I CAJAL , 81, 2N.', '930120545'),
(88, '188.0', 'ORIOL', 'ARIZA PUIGB', 'MORAGUES , 10', '938207095'),
(89, '189.0', 'VIRGINIA', 'ALVAREZ ARMENTEROS', 'PROL. PADR , 1, 3R., 2A.', '938300214'),
(90, '190.0', 'DAMI', 'BARALDS TARRAG', 'FRANCESC DE VITRIA , 11, 4T 2A', '938727244'),
(91, '191.0', 'VALENT', 'GARCIA GARCA', 'ALBNIZ , 22, 2N.', '936565874'),
(92, '192.0', 'AINA', 'AROCA GMEZ', 'TRES ROURES , 10, 4T 2A', '938205782'),
(93, '193.0', 'DAVID', 'ALONSO RODRIGUEZ', 'PROL. PADR , 1, 2N., 1A.', '938305551'),
(94, '194.0', 'GERARD', 'CANO GMEZ', 'ALBNIZ , 13, 2N., 1A.', '936577225'),
(95, '195.0', 'MARTA', 'ALCAIDE MOLINA', 'FONT DEL GAT , 1', '938773647'),
(96, '196.0', 'MIREIA', 'AGUILERA PRAT', 'MONTCAU , 1', '938208054'),
(97, '197.0', 'ELOI', 'ALAPONT ICART', 'MONTURIOL , 1', '938208054'),
(98, '198.0', 'ANNA', 'RIVERO FLORIDO', 'VILATORRADA , 6', '930712563'),
(99, '199.0', 'ALBA', 'AVILA MASJUAN', 'JAUME GALOBART , 11', '938204078'),
(100, '200.0', 'SANDRA', 'GRANADOS ANDRS', 'SANT GENS , 25', '936871045'),
(101, '201.0', 'ERIC', 'FERRER GASSET', 'VERGE DE FTIMA , 2, 3R., 1A.', '938745211'),
(102, '202.0', 'LLUS', 'AMIGO MODREGO', 'JAUME I , 10', '938300065'),
(103, '203.0', 'CRISTIAN', 'ABDIN TATJ', 'SANT JOAN , 0, C, 1R., B', '938208674'),
(104, '204.0', 'GUILLEM', 'CANELLAS GOMEZ', 'JACINT VERDAGUER , 13', '930214054'),
(105, '205.0', 'DIMAS', 'HIDALGO ALTIMIRAS', 'SANT BENET , 28, 2N., 2A.', '936521404'),
(106, '206.0', 'ANA INS', 'BASTARDAS FRANCH', 'FONERIA , 12', '938350593'),
(107, '207.0', 'IVET', 'ABADIAS MASANA', 'ALFONS XII , 9, 4T 1A', '939962045'),
(108, '208.0', 'JLIA', 'AREVALO SANCHEZ', 'JAUME I , 10', '938755603'),
(109, '209.0', 'DANIEL', 'ALINS MULET', 'DE LA PESCA , 1, 1R., 2A.', '938305524'),
(110, '210.0', 'ABEL', 'GARCIA GONZLEZ', 'PIRINEUS , 22', '936571974'),
(111, '211.0', 'IRENE', 'ALVAREZ PARCERISA', 'PROL. JACINT VERDAGUER , 1, 3R., 2A.', '938300036'),
(112, '212.0', 'ADRI', 'CASAS ANDRS', 'JAUME GALOBART , 14', '936505455'),
(113, '213.0', 'JAIRO', 'MORALES GESE', 'SANT JOAN, EDIFICI D , 3R A', '936587454'),
(114, '214.0', 'CRISTINA', 'BARALDS MARTORELL', 'VIC , 119, 3R., 2A.', '938725845'),
(115, '215.0', 'DAVID', 'AROCA GMEZ', 'CARLES BUGAS , 10, 1R., 1A.', '938205730'),
(116, '216.0', 'ADRI', 'RUEDA ALVAREZ', 'JAUME BALMES , 67, 2N.', '936828258'),
(117, '217.0', 'LUCIA', 'ALVAREZ DOMENECH', 'PROL. PADR , 1, 3R., 2A.', '938300045'),
(118, '218.0', 'CARLA', 'BOIX GONZLEZ', 'DE LA CAA , 12, 2N., C', '936521452'),
(119, '219.0', 'ADRI', 'BARALDS MONRS', 'VIC , 119, 2N., 1A.', '938725885'),
(120, '220.0', 'MARTA', 'AGUILERA MERINO', 'MORAGUES , 1', '938208303'),
(121, '221.0', 'MARC', 'BAREA D\'HAENE', 'TRABUCAIRES , 12', '938360213'),
(122, '222.0', 'ALEX', 'BARROSO D\'HAENE', 'FONERIA , 12', '938320537'),
(123, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idmarcas` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idmarcas`, `codigo`, `nombre`) VALUES
(1, '1,0', 'Anastacia Beverly Hills'),
(2, '2,0', 'Juvias'),
(3, '3,0', 'Jeffree Star'),
(4, '4,0', 'Urban Decay'),
(5, '5,0', 'Wet n Wild'),
(6, '6,0', 'Anastacia Beverly Hills'),
(7, '7,0', 'Bh Cosmetics'),
(8, '8,0', 'Morphe B'),
(9, '9,0', 'Anastacia Beverly Hills'),
(10, '10,0', 'NYX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `idlinea` int(11) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `codigo`, `producto`, `idlinea`, `idmarca`, `descripcion`) VALUES
(16, '2001.0', 'ULTRY EYE SHADOW PALETTE', 1, 1, 'Sultry Eye Shadow es una paleta esencial de sombras de ojos ahumados con catorce tonos que van del mate dorado al bronce metlico. '),
(17, '2102.0', 'NORVINA', 1, 1, 'Una esencial paleta de sombras de 14 tonos, desde mattes a brillosos.   Lo que hace:   - Alta pigmentacin de fcil aplicacin  - Pigmentos metlicos y cromados  - Empaquetado de lujo, con espejo y aplicador '),
(18, '2203.0', 'SOFT GLAM EYE SHADOW PALETTE', 1, 1, 'Presentando catorce tonos esenciales, la paleta de sombra de ojos Anastasia Beverly Hills Soft Glam es la coleccin perfecta de sombras de pigmento completo fciles de mezclar. '),
(19, '2304.0', 'MODERN RENAISSANCE', 1, 1, 'Una coleccin esencial de sombras de ojos con 14 tonos que van desde los neutros hasta un rojo berry.'),
(20, '2405.0', 'SUBCULTURE EYESHADOW PALETTE', 1, 1, 'Una coleccin esencial de sombras para ojos con catorce tonos que van desde mates hasta metlicos con un estilo underground. '),
(21, '2506.0', 'The Zulu', 1, 2, 'Una brillante paleta de sombra de ojos de 9 colores.  Con 6 sombras brillantes mate y 3 metlicas, la Paleta de sombras de ojos de Zulu combina una seleccin de colores llamativos y brillantes que crean un aspecto excitante y altamente pigmentado. Perfect'),
(22, '2607.0', 'The Saharan II', 1, 2, 'La paleta clida de Bebella Shimmery es tu nica parada para un look trmulo natural. Ilumina tus oj'),
(23, '2708.0', 'THE MAGIC MINI', 1, 2, 'Juvia\'s Place The Magic Mini paleta de sombras con 16 colores su creacin esta inspirada en la luna y la diosa del sol es una combinacin de tonos fros y neutros perfecta para el da o la noche.   '),
(24, '2809.0', 'The Masquerade Grande', 1, 2, 'The Masquerade By Juvias paleta de sombras con 16 colores altamente pigmentados la creacion de esta paleta viene de las fiestas africanas, los colores fuertes representan sus costumbres y tradiciones y los nude representan el ambiente.'),
(25, '2910.0', 'The Warrior', 1, 2, 'Juvia\'s Place The Warrior EyeShadow paleta de sombras con 9 colores altamente pigmentados es una combinacin de colores atrevidos y audaces.'),
(26, '3011.0', 'THE DOUCE', 1, 2, 'Juvia\'s Place The Douce by Juvias paleta de sombras con 9 colores altamente pigmentados es una mezcla de tonos matte y metlicos con una excelente pigmentacin.'),
(27, '3112.0', 'The Nubian', 1, 2, 'Una paleta de sombras de ojos con 12 colores, contiene tonos metlicos, do cromado y mate. Extremadamente pigmentada, cada sombra est diseada para una fcil mezcla, acabados de alto impacto'),
(28, '3213.0', 'SUMMER LIQUID LIP COLLECTION', 2, 3, 'Las sombras van desde desnudos y rojos cotidianos hasta metlicos atrevidos! Disponible en un paque'),
(29, '3314.0', 'MINI RAINBOW BUNDLE', 2, 3, 'Este conjunto de cajas presenta un arcoris de 8 de nuestros tonos ms vendidos, incluido un nuevo '),
(30, '3415.0', 'SKIN FROST: ECLIPSE', 2, 3, 'Presentamos el rotulador \"Eclipse\" de la colaboracin Manny MUA x Jeffree Star Cosmetics! Este Ski'),
(31, '3516.0', 'MINI NUDES BUNDLE: VOLUME 1 PREVIOUS PRODUCTNEXT PRODUCT', 2, 3, 'Nuestro paquete Mini Velor Liquid Lipstick viene con 7 de nuestros ms vendidos nudes + Skin Tight '),
(32, '3617.0', 'VELOUR LIP SCRUB CANDY CANE', 2, 3, 'Use el exfoliante labial a base de azcar de Jeffree Star para preparar sus labios antes de aplicar cualquier lpiz labial lquido. Toma una cucharada y frota tu boca con movimientos circulares. Lamer el exceso (s, es comestible!) O limpiar con un paue'),
(33, '3718.0', 'Mini Nudes Bundle', 2, 3, 'Es un kit de labiales en tono mate que no reseca los labios y de larga duracin. Puedes personalizar tus tonos haciendo combinaciones con diferentes labiales.'),
(34, '3819.0', 'Vice Special Effects Regulate', 2, 4, 'Quieres un look de labios que no sea nada bsico? Cambia tu look del trabajo a un look de fiesta con un solo toque: Vice Special Effects, un Top Coat de larga duracin a prueba de agua transforma cualquier tono de cool a increble.'),
(35, '3920.0', 'Vice Specil Effects Reverb', 2, 4, 'Quieres un look de labios que no sea nada bsico? Cambia tu look del trabajo a un look de fiesta con un solo toque: Vice Special Effects, un Top Coat de larga duracin a prueba de agua transforma cualquier tono de cool a increble.'),
(36, '4021.0', 'Photo Focus Foundation Porcelain', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano '),
(37, '4122.0', 'Photo Focus Foundation Shell Ivory', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano'),
(38, '4223.0', 'Photo Focus Foundation Soft Ivory', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano f'),
(39, '4324.0', 'Photo Focus Foundation Nude Ivory', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano f'),
(40, '4425.0', 'Photo Focus Foundation Rose Ivory', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano '),
(41, '4526.0', 'Photo Focus Foundation Soft Beige', 3, 4, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano '),
(42, '4627.0', 'Photo Focus Foundation Peach Natural', 3, 5, 'Hecho especialmente con un complejo mate, difusor de luz para darle a su piel la perfeccin de nano '),
(43, '4728.0', 'MEGAGLO ILLUMINATING POWDER', 3, 5, 'Vamos a brillar! Con este polvo compacto de 4 tonos brillantes y luminosos; se puede usar solo o so'),
(44, '4829.0', 'COLOR ICON BLUSH PEARLESCENT', 3, 5, 'Este sedoso rubor en polvo nos brinda el equilibrio perfecto entre un brillo transparente y a la vez'),
(45, '4930.0', 'PHOTO FOCUS CORRECTING PALETTE', 3, 5, 'Este crculo de correctoras contiene todo lo que necesita para equilibrar cualquier imperfeccin en '),
(46, '5031.0', 'DREAM GLOW KIT', 3, 6, 'Un kit de iluminacin en polvo con seis tonos ultrareflectivos con destellos multidimensionales.'),
(47, '5132.0', 'SUGAR GLOW KIT', 3, 6, 'El kit Sugar Glow es una paleta favorita de los fanticos con cuatro marcadores metlicos en polvo '),
(48, '5233.0', 'BLUSH KIT', 3, 6, 'Un compacto compacto con cuatro tonos de rubor completo con una frmula finamente molida para una in'),
(49, '5334.0', 'AURORA GLOW KIT', 3, 6, 'Una coleccin de seis iluminadores en polvo para una luminosidad intensa. Seis tonos para resaltar l'),
(50, '5435.0', 'MOONCHILD GLOW KIT', 3, 6, 'Iluminadores mgicos-metlicos que ofrecen un acabado de piel celestial. -Blue Ice  -Star  - Purple '),
(51, '5536.0', 'Sculpt And Blend 2 10 Piezas Brush Set', 4, 7, 'Los maquilladores profesionales y los expertos en belleza apreciarn nuestro Sculpt and Blend 2 - 10 Piece Makeup Brush Set. Con brochas para la cara y los ojos, la coleccin verstil fue diseada para usar con lquidos, cremas y polvos. La gama completa '),
(52, '5637.0', 'Marble Luxe', 4, 7, 'Agregue un toque elegante a su tocador con nuestro Marble Luxe - Juego de brochas de 10 piezas, una coleccin decadente de cepillos para rostro y ojos que ofrece una aplicacin perfecta, una cobertura perfecta y una definicin impecable. Con asas de mrmo'),
(53, '5738.0', 'Weekend Festival', 4, 7, 'Mejora tu glamour en esta temporada de festivales con nuestro Juego de Cepillos de 10 piezas de Weekend Festival. Esta coleccin esencial de cepillos faciales y para los ojos con lujosas cerdas sintticas y elegantes mangos suaves al tacto ofrece una gama'),
(54, '5839.0', 'PINK PERFECTION 10 PIEZAS BRUSH SET', 4, 7, 'Asegrese de tener el pincel adecuado para cada tarea de maquillaje con nuestro Juego de pinceles PINK PERFECTION de 10 piezas, una coleccin completa de cepillos esenciales para la cara y los ojos que facilitan el barrido, suavizado, difuminado y resalta'),
(55, '5940.0', 'Rose Romance Brushes', 4, 7, 'Rose Romance, una mezcla verstil de brochas sintticas para rostro y ojos de primera calidad, listas para usar con lquidos, cremas y polvos. Con el mango de oro rosa, el set vienen en una elegante bolsa de cuero blanca con cierre.'),
(56, '6041.0', 'Bh Chic', 4, 7, 'Set de Brochas de maquillaje de 14 piezas, calidad profesional para la cara, los ojos y los labios. Los cepillos cosmticos sintticos de dos tonos se pueden utilizar con lquidos, cremas y polvos para lograr una aplicacin de maquillaje precisa.'),
(57, '6142.0', 'Bh Rose Gold Set', 4, 8, 'Lindo y cmodo, este set de 15 piezas viene en un cilindro para un mejor cuidado y un fcil desplazamiento. Sus brochas son de cerdas ultra suaves y cada mango tiene un diseo personalizado que llamar la atencin de cualquiera.'),
(58, '6243.0', 'kabuki brush 34 Angled', 4, 8, 'Brocha de maquilaje para countoring Angled Kabuki Brush de Bh Cosmetic.'),
(59, '6344.0', 'Morphe SET LTC', 4, 8, 'Set de cepillos de contorno MORPHE de edicin limitada.  El conjunto incluye:  Cepillo de contorno p'),
(60, '6445.0', '706 Black and White Bruhes', 4, 8, 'set de 12 brochas de rostros y ojos con un toque de elegancia en blanco y negro; capaces de realizacualquier lookr '),
(61, '6546.0', 'DIPBROW POMADE BLONDE', 4, 8, 'La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(62, '6647.0', 'DIPBROW POMADE SOFT BROWN', 5, 8, ' La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar'),
(63, '6748.0', 'DIPBROW POMADE CARAMEL', 5, 8, ' La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(64, '6849.0', 'DIPBROW POMADE AUBURN', 5, 8, 'La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(65, '6950.0', 'DIPBROW POMADE CHOCOLATE', 5, 9, 'La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(66, '7051.0', 'DIPBROW POMADE DARK BROWN', 5, 9, 'La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(67, '7152.0', 'DIPBROW POMADE EBONY', 5, 9, 'La Pomada DIPBROW de Anastasia Beverly Hills es una frmula a prueba de agua que se puede utilizar '),
(68, '7253.0', 'EYEBROW GEL CHOCOLATE', 5, 10, 'Define tus cejas y controla las ms rebeldes con este gel, es discreto y fcil de usar. Su frmula ligera y resistencia al agua te servir para crear un diseo de aspecto natural. Disponible en cinco diferentes colores.'),
(69, '7354.0', 'EYEBROW GEL BRUNETTE', 5, 10, 'Define tus cejas y controla las ms rebeldes con este gel, es discreto y fcil de usar. Su frmula ligera y resistencia al agua te servir para crear un diseo de aspecto natural. Disponible en cinco diferentes colores.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idsucursal`, `nombre`, `ciudad`, `estado`, `pais`) VALUES
(1, 'NORTE', 'Cuernavaca', 'Morelos', 'Mexico'),
(2, 'NORTE', 'Hermosillo', 'Sonora', 'Mexico'),
(3, 'NORTE', 'Guadalajara', 'Jalisco', 'Mexico'),
(4, 'NORTE', 'Merida ', 'Yucatan', 'Mexico'),
(5, 'NORTE', 'Los Mochis', 'Sinaloa', 'Mexico'),
(6, 'NORTE', 'Culiacan ', 'Sinaloa', 'Mexico'),
(7, 'NORTE', 'Mexico', 'Mexico', 'Mexico'),
(8, 'NORTE', 'Monterrey', 'Nuevo Leon', 'Mexico '),
(9, 'SUR', 'Cuernavaca', 'Morelos', 'Mexico'),
(10, 'SUR', 'Hermosillo', 'Sonora', 'Mexico'),
(11, 'SUR', 'Guadalajara', 'Jalisco', 'Mexico'),
(12, 'SUR', 'Merida ', 'Yucatan', 'Mexico'),
(13, 'SUR', 'Los Mochis', 'Sinaloa', 'Mexico'),
(14, 'SUR', 'Culiacan ', 'Sinaloa', 'Mexico'),
(15, 'SUR', 'Mexico', 'Mexico', 'Mexico'),
(16, 'SUR', 'Monterrey', 'Nuevo Leon', 'Mexico '),
(17, 'CENTRO', 'Cuernavaca', 'Morelos', 'Mexico'),
(18, 'CENTRO', 'Hermosillo', 'Sonora', 'Mexico'),
(19, 'CENTRO', 'Guadalajara', 'Jalisco', 'Mexico'),
(20, 'CENTRO', 'Merida ', 'Yucatan', 'Mexico'),
(21, 'CENTRO', 'Los Mochis', 'Sinaloa', 'Mexico'),
(22, 'CENTRO', 'Culiacan ', 'Sinaloa', 'Mexico'),
(23, 'CENTRO', 'Mexico', 'Mexico', 'Mexico'),
(24, 'CENTRO', 'Monterrey', 'Nuevo Leon', 'Mexico '),
(25, 'PONIENTE', 'Monterrey', 'Nuevo Leon', 'Mexico '),
(26, 'PONIENTE', 'Cuernavaca', 'Morelos', 'Mexico'),
(27, 'PONIENTE', 'Hermosillo', 'Sonora', 'Mexico'),
(28, 'PONIENTE', 'Guadalajara', 'Jalisco', 'Mexico'),
(29, 'PONIENTE', 'Merida ', 'Yucatan', 'Mexico'),
(30, 'PONIENTE', 'Los Mochis', 'Sinaloa', 'Mexico'),
(31, 'PONIENTE', 'Culiacan ', 'Sinaloa', 'Mexico'),
(32, 'PONIENTE', 'Mexico', 'Mexico', 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `idvendedor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`idvendedor`, `nombre`, `apellidos`, `sexo`) VALUES
(1, 'Carmen', 'Lopez Acost', 'f'),
(2, 'Emma', 'Diaz Salazar', 'f'),
(3, 'Raul', 'Garcia Camacho', 'm'),
(4, 'Ricardo', 'Ibarra Duran', 'm'),
(5, 'Rosa', 'Paez Peralta', 'f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventas` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fechaventa` date DEFAULT NULL,
  `idvendedor` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `tipo`, `precioVenta`, `cantidad`, `fechaventa`, `idvendedor`, `idcliente`, `idproducto`, `idsucursal`) VALUES
(1, '1', 300, 20, '2020-03-01', 1, 3, 30, 1),
(2, '1', 300, 20, '2020-03-01', 1, 59, 30, 1),
(3, '1', 300, 20, '2020-03-01', 1, 86, 30, 1),
(4, '1', 300, 20, '2020-03-01', 1, 113, 30, 1),
(5, '1', 300, 20, '2020-03-01', 1, 140, 30, 9),
(6, '1', 300, 20, '2020-03-01', 1, 167, 30, 9),
(7, '1', 300, 20, '2020-03-01', 1, 194, 30, 26),
(8, '1', 300, 20, '2020-03-01', 1, 221, 30, 26),
(9, '1', 300, 20, '2020-03-01', 1, 248, 30, 26),
(10, '1', 300, 20, '2020-03-01', 1, 275, 30, 26),
(11, '1', 300, 20, '2020-03-01', 1, 302, 30, 26),
(12, '1', 300, 20, '2020-03-01', 1, 329, 30, 26),
(13, '1', 300, 20, '2020-03-01', 1, 356, 30, 26),
(14, '1', 300, 20, '2020-03-01', 1, 383, 30, 26),
(15, '1', 300, 20, '2020-03-01', 1, 410, 30, 1),
(16, '1', 300, 20, '2020-03-01', 1, 437, 30, 9),
(17, '1', 300, 20, '2020-03-01', 1, 464, 30, 9),
(18, '1', 300, 20, '2020-03-01', 1, 490, 30, 9),
(19, '1', 300, 20, '2020-03-01', 1, 516, 30, 9),
(20, '1', 300, 20, '2020-03-01', 1, 523, 30, 9),
(21, '1', 300, 20, '2020-03-01', 2, 528, 10, 6),
(22, '1', 300, 20, '2020-03-01', 2, 531, 54, 6),
(23, '1', 300, 20, '2020-03-01', 2, 532, 56, 6),
(24, '1', 300, 20, '2020-03-01', 2, 531, 58, 14),
(25, '1', 300, 20, '2020-03-01', 2, 528, 60, 14),
(26, '1', 300, 20, '2020-03-01', 2, 523, 62, 14),
(27, '1', 300, 20, '2020-03-01', 2, 516, 64, 14),
(28, '1', 300, 20, '2020-03-01', 2, 507, 66, 14),
(29, '1', 300, 20, '2020-03-01', 2, 496, 68, 14),
(30, '1', 300, 20, '2020-03-01', 2, 483, 70, 14),
(31, '1', 300, 20, '2020-03-01', 2, 468, 72, 22),
(32, '1', 300, 20, '2020-03-01', 2, 451, 74, 22),
(33, '1', 300, 20, '2020-03-01', 2, 432, 76, 22),
(34, '1', 300, 20, '2020-03-01', 2, 411, 78, 22),
(35, '1', 300, 20, '2020-03-01', 2, 388, 80, 22),
(36, '1', 300, 20, '2020-03-01', 2, 363, 82, 22),
(37, '1', 300, 20, '2020-03-01', 2, 336, 84, 22),
(38, '1', 300, 20, '2020-03-01', 2, 307, 86, 22),
(39, '1', 300, 20, '2020-03-01', 2, 276, 88, 31),
(40, '1', 300, 20, '2020-03-01', 2, 243, 90, 31),
(41, '1', 300, 20, '2020-03-01', 2, 208, 92, 31),
(42, '1', 300, 20, '2020-03-01', 2, 171, 94, 31),
(43, '1', 300, 20, '2020-03-01', 2, 132, 96, 31),
(44, '1', 300, 20, '2020-03-01', 2, 91, 98, 31),
(45, '1', 300, 20, '2020-03-01', 2, 48, 100, 31),
(46, '1', 300, 20, '2020-03-01', 2, 3, 102, 31),
(47, '1', 100, 10, '2020-04-01', 3, 3, 57, 31),
(48, '1', 299, 10, '2021-01-01', 3, 34, 45, 3),
(49, '1', 200, 10, '2021-10-01', 3, 4, 100, 3),
(50, '1', 200, 10, '2021-10-01', 3, 4, 102, 3),
(51, '1', 200, 10, '2021-10-01', 3, 4, 45, 3),
(52, '1', 200, 10, '2021-10-01', 3, 4, 45, 3),
(53, '1', 200, 10, '2021-10-01', 3, 4, 45, 3),
(54, '1', 200, 10, '2021-10-01', 3, 4, 45, 19),
(55, '1', 200, 10, '2021-10-01', 3, 4, 45, 19),
(56, '1', 200, 10, '2021-10-01', 3, 4, 45, 19),
(57, '1', 200, 10, '2021-10-01', 3, 4, 45, 19),
(58, '1', 200, 10, '2021-10-01', 3, 4, 45, 19),
(59, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(60, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(61, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(62, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(63, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(64, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(65, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(66, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(67, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(68, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(69, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(70, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(71, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(72, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(73, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(74, '1', 200, 10, '2021-10-01', 3, 4, 54, 28),
(75, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(76, '1', 200, 10, '2021-10-01', 3, 4, 54, 19),
(77, '1', 200, 10, '2021-10-01', 3, 4, 54, 3),
(78, '1', 200, 10, '2021-10-01', 3, 4, 54, 3),
(79, '1', 200, 10, '2021-10-01', 3, 4, 54, 3),
(80, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(81, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(82, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(83, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(84, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(85, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(86, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(87, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(88, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(89, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(90, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(91, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(92, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(93, '1', 200, 10, '2021-11-01', 4, 4, 55, 2),
(94, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(95, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(96, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(97, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(98, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(99, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(100, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(101, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(102, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(103, '1', 200, 10, '2021-11-01', 4, 4, 55, 10),
(104, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(105, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(106, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(107, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(108, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(109, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(110, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(111, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(112, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(113, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(114, '1', 200, 10, '2021-11-01', 4, 4, 55, 18),
(115, '1', 200, 10, '2021-11-01', 4, 4, 55, 0),
(116, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(117, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(118, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(119, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(120, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(121, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(122, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(123, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(124, '1', 200, 10, '2021-11-01', 5, 4, 55, 21),
(125, '1', 200, 10, '2021-11-01', 5, 4, 55, 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idclientes`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idmarcas`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idsucursal`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idvendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idclientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idmarcas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idsucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `idvendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
