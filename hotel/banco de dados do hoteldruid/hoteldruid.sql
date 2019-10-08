-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 01-Out-2019 às 21:49
-- Versão do servidor: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldruid`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anni`
--

CREATE TABLE `anni` (
  `idanni` int(11) NOT NULL,
  `tipo_periodi` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anni`
--

INSERT INTO `anni` (`idanni`, `tipo_periodi`) VALUES
(2019, 'g');

-- --------------------------------------------------------

--
-- Estrutura da tabela `appartamenti`
--

CREATE TABLE `appartamenti` (
  `idappartamenti` varchar(100) NOT NULL,
  `numpiano` text,
  `maxoccupanti` int(11) DEFAULT NULL,
  `numcasa` text,
  `app_vicini` text,
  `priorita` int(11) DEFAULT NULL,
  `priorita2` int(11) DEFAULT NULL,
  `letto` varchar(1) DEFAULT NULL,
  `commento` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `appartamenti`
--

INSERT INTO `appartamenti` (`idappartamenti`, `numpiano`, `maxoccupanti`, `numcasa`, `app_vicini`, `priorita`, `priorita2`, `letto`, `commento`) VALUES
('01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `beniinventario`
--

CREATE TABLE `beniinventario` (
  `idbeniinventario` int(11) NOT NULL,
  `nome_bene` varchar(70) DEFAULT NULL,
  `codice_bene` varchar(50) DEFAULT NULL,
  `descrizione_bene` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cache`
--

CREATE TABLE `cache` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext,
  `data_modifica` datetime DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `casse`
--

CREATE TABLE `casse` (
  `idcasse` int(11) NOT NULL,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `codice_cassa` varchar(50) DEFAULT NULL,
  `descrizione_cassa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `casse`
--

INSERT INTO `casse` (`idcasse`, `nome_cassa`, `stato`, `codice_cassa`, `descrizione_cassa`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, '2019-09-24 21:37:38', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `citta`
--

CREATE TABLE `citta` (
  `idcitta` int(11) NOT NULL,
  `nome_citta` varchar(70) DEFAULT NULL,
  `codice_citta` varchar(50) DEFAULT NULL,
  `codice2_citta` varchar(50) DEFAULT NULL,
  `codice3_citta` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clienti`
--

CREATE TABLE `clienti` (
  `idclienti` int(11) NOT NULL,
  `cognome` varchar(70) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `soprannome` varchar(70) DEFAULT NULL,
  `sesso` char(1) DEFAULT NULL,
  `titolo` varchar(30) DEFAULT NULL,
  `lingua` varchar(14) DEFAULT NULL,
  `datanascita` date DEFAULT NULL,
  `cittanascita` varchar(70) DEFAULT NULL,
  `regionenascita` varchar(70) DEFAULT NULL,
  `nazionenascita` varchar(70) DEFAULT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `scadenzadoc` date DEFAULT NULL,
  `tipodoc` varchar(70) DEFAULT NULL,
  `cittadoc` varchar(70) DEFAULT NULL,
  `regionedoc` varchar(70) DEFAULT NULL,
  `nazionedoc` varchar(70) DEFAULT NULL,
  `nazionalita` varchar(70) DEFAULT NULL,
  `nazione` varchar(70) DEFAULT NULL,
  `regione` varchar(70) DEFAULT NULL,
  `citta` varchar(70) DEFAULT NULL,
  `via` varchar(70) DEFAULT NULL,
  `numcivico` varchar(30) DEFAULT NULL,
  `cap` varchar(30) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `telefono2` varchar(50) DEFAULT NULL,
  `telefono3` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` text,
  `cod_fiscale` varchar(50) DEFAULT NULL,
  `partita_iva` varchar(50) DEFAULT NULL,
  `commento` text,
  `max_num_ordine` int(11) DEFAULT NULL,
  `idclienti_compagni` text,
  `doc_inviati` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratti`
--

CREATE TABLE `contratti` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contratti`
--

INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(2322, 'vett8', 'situation_clean;unit_clean'),
(2323, 'vett8', 'people_clean;unit_clean'),
(2324, 'vett8', 'dep_people_clean;unit_clean'),
(2325, 'vett8', 'people_num_clean;unit_clean'),
(2326, 'vett8', 'dep_people_num_clean;unit_clean'),
(2327, 'vett8', 'arr_people_num_clean;unit_clean'),
(2328, 'vett8', 'arrival_time_clean;unit_clean'),
(2329, 'vett8', 'extra_costs_clean;ec_num_clean'),
(2330, 'vett8', 'ec_pos_clean;nome_costo_agg'),
(2332, 'vett8', 'ec_unit_row_clean;unit_clean'),
(2333, 'vett8', 'array_dates_clean;day_clean'),
(2334, 'vett8', 'total_ec_clean;ec_num_clean'),
(1, 'vett2', 'vat_perc_arr_invo;vat_num_invo'),
(2, 'vett2', 'exist_perc_vat_invo;tmp_var_invo'),
(428, 'var9', 'surname_csv'),
(429, 'var9', 'name_csv'),
(430, 'var9', 'nickname_csv'),
(431, 'var9', 'title_csv'),
(432, 'var9', 'email_csv'),
(433, 'var9', 'telephone_csv'),
(434, 'var9', 'fax_csv'),
(435, 'var9', 'nation_csv'),
(436, 'var9', 'region_csv'),
(437, 'var9', 'city_csv'),
(438, 'var9', 'address_csv'),
(439, 'var9', 'postal_code_csv'),
(440, 'var9', 'nationality_csv'),
(441, 'var9', 'birthdate_csv'),
(442, 'var9', 'vat_number_csv'),
(443, 'var9', 'tmp_csv'),
(101282, 'var8', 'report_date_clean'),
(101283, 'var8', 'arrival_clean'),
(101284, 'var8', 'departure_clean'),
(101285, 'var8', 'unit_clean'),
(101286, 'var8', 'row_class_clean'),
(101287, 'var8', 'f_report_date_clean'),
(101288, 'var8', 'people_tot_clean'),
(101289, 'var8', 'dep_people_tot_clean'),
(101290, 'var8', 'arr_people_tot_clean'),
(101291, 'var8', 'ec_num_clean'),
(101292, 'var8', 'repetition_number_clean'),
(101293, 'var8', 'var_tmp_clean'),
(101294, 'var8', 'ec_table_head_clean'),
(101295, 'var8', 'ec_table_row_clean'),
(101296, 'var8', 'day_clean'),
(101297, 'var8', 'header_row_table_clean'),
(101298, 'var8', 'unit_repetition_number_clean'),
(101299, 'var8', 'repeat_header_row_clean'),
(101300, 'var8', 'number_repeat_head_row_clean'),
(305, 'var7', 'surname_cre'),
(306, 'var7', 'surn_no_sp_cre'),
(102, 'var6', 'surname_avail_eml'),
(68, 'var4', 'city_row_recei'),
(69, 'var4', 'nation_row_recei'),
(73, 'var4', 'struct_fisc_code_recei'),
(74, 'var4', 'first_name_recei'),
(75, 'var4', 'surname_recei'),
(76, 'var4', 'struct_telephone_recei'),
(98, 'var4', 'street_num_recei'),
(421, 'var4', 'show_method_recei'),
(101301, 'var4', 'logo_recei'),
(325, 'var2', 'city_row_invo'),
(326, 'var2', 'nation_row_invo'),
(330, 'var2', 'struct_fisc_code_invo'),
(331, 'var2', 'first_name_invo'),
(332, 'var2', 'surname_invo'),
(333, 'var2', 'struct_telephone_invo'),
(336, 'var2', 'tmp_var_invo'),
(337, 'var2', 'rate_no_vat_invo'),
(339, 'var2', 'last_reserv_invo'),
(342, 'var2', 'extra_cost_name_invo'),
(343, 'var2', 'tot_no_vat_invo'),
(347, 'var2', 'price_tot_invo'),
(348, 'var2', 'price_tot_invo_p'),
(349, 'var2', 'vat_invo_p'),
(350, 'var2', 'tot_no_vat_invo_p'),
(351, 'var2', 'extra_cost_no_vat_invo_p'),
(352, 'var2', 'discount_no_vat_invo_p'),
(353, 'var2', 'rate_no_vat_invo_p'),
(355, 'var2', 'street_num_invo'),
(405, 'var2', 'fiscal_code_invo'),
(406, 'var2', 'vat_number_invo'),
(407, 'var2', 'street_invo'),
(408, 'var2', 'vat_num_invo'),
(409, 'var2', 'show_rate_invo'),
(410, 'var2', 'show_discount_invo'),
(411, 'var2', 'show_extra_cost_invo'),
(412, 'var2', 'repetition_num_invo'),
(413, 'var2', 'part_tot_no_vat_invo'),
(414, 'var2', 'part_tot_vat_invo'),
(415, 'var2', 'part_tot_no_vat_invo_p'),
(416, 'var2', 'part_tot_vat_invo_p'),
(417, 'var2', 'max_vat_num_invo'),
(418, 'var2', 'people_phrase_invo'),
(419, 'var2', 'merge_discount_with_rate'),
(420, 'var2', 'logo_invo'),
(422, 'var2', 'tax_cost_name_invo'),
(423, 'var2', 'show_tax_cost_invo'),
(424, 'var2', 'vat_invo'),
(425, 'var2', 'tot_costs_tax_invo'),
(426, 'var2', 'show_cost_as_taxes_invo'),
(427, 'var2', 'show_subtotal_invo'),
(1, 'var', 'Mr'),
(3, 'var', 'il'),
(4, 'var', 'Il_'),
(5, 'var', 'al'),
(6, 'var', 'e'),
(7, 'var', 'o'),
(13, 'var', 'el'),
(14, 'var', 'El_'),
(15, 'var', 'al3'),
(16, 'var', 'a'),
(17, 'var', 'o3'),
(6, 'opzeml', ';;'),
(7, 'opzeml', ';SI;'),
(6, 'oggetto', 'Availability'),
(7, 'oggetto', 'Reservation confirmation'),
(3, 'nomefile', 'Invoice'),
(6, 'mln_es', 'Estimad[o] Señor[a] [surname_avail_eml],\nle confirmo la disponibilidad de un apartamento[c num_personas_tot!=\"\"] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados).\n\nEn el caso de que desee reservar le ruego me envie su confirmación respondiendo a este correo electrónico.\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n\n\n[texto_citado_email_pedido]\n'),
(7, 'mln_es', 'Estimad[o] Señor[a] [surname_cre],\nle confirmo que he reservado a su nombre un apartamento[c num_personas_tot!=\"\"] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados). Para completar la reserva es necesario pagar por adelantado [fianza_p] [nombre_divisa], puede efectuar este pago siguiendo este enlace:\n\n[base_url_for_webpages]mdl_confirma_reserva.php?cn=[surn_no_sp_cre]&cp=[reservation_code]\n\nSi el enlace no funcionara correctamente puede intentar utilizar este otro:\n\n[base_url_for_webpages]mdl_confirma_reserva.php\n\ne insertar después:\n\nApellido: [apellido]\nCódigo reserva: [codigo_reserva]\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n'),
(6, 'mln_en', 'Dear Mr[Mr] [surname_avail_eml],\nI confirm you the availability of an apartment[c people_num_tot!=\"\"] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities).\n\nIf you are interested in reserving the apartment you can contact me by replaying to this email.\n\nPlease let me know if you have any question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n\n\n[enquiry_email_quoted_text]\n'),
(7, 'mln_en', 'Dear Mr[Mr] [surname_cre],\nI confirm you that I have reserved you an apartment[c people_num_tot!=\"\"] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities). In order to complete the reservation you must send a down-payment of [deposit_p] [currency_name], you can pay it following this link:\n\n[base_url_for_webpages]confirm_reservation_tpl.php?cn=[surn_no_sp_cre]&cp=[reservation_code]\n\nIf the above link does not work properly for you, try this other one:\n\n[base_url_for_webpages]confirm_reservation_tpl.php\n\nand then insert:\n\nSurname: [surname]\nReservation code: [reservation_code]\n\nPlease let me know if you have any other question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n'),
(3, 'impor_vc', '2'),
(5, 'impor_vc', '4'),
(8, 'headhtm', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" >\n<title>Cleaning report</title>\n<style type=\"text/css\">\ntable.clrep { border-collapse: collapse; }\ntable.clrep td { border: 2px solid black; padding: 2px; text-align: center; }\n.headrow { background-color: #cccccc; }\ntr.bgclr { background-color: #eeeeee; }\n</style>\n</head>\n<body style=\"background-color: #ffffff;\">\n'),
(8, 'foothtm', '</body>\n</html>\n'),
(9, 'est_txt', 'csv'),
(2, 'dir', '~'),
(3, 'dir', '~'),
(9, 'contrtxt', 'Surname,Name,Nickname,Title,Sex,Email,Telephone,Fax,Language,Nation of Residency,Region of Residency,City of Residency,Address,Postal Code,Nationality,Date of Birth,Vat Number\n[r][surname_csv],[name_csv],[nickname_csv],[title_csv],[sex],[email_csv],[telephone_csv],[fax_csv],[language_code],[nation_csv],[region_csv],[city_csv],[address_csv],[postal_code_csv],[nationality_csv],[birthdate_csv],[vat_number_csv]\n[/r]'),
(3, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025[r][r3][/r3] [/r]\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [structure_type] [structure_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_company_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_address] - [structure_city]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_postal_code] [structure_nation]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 VAT number [structure_vat_number] [struct_fisc_code_invo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [struct_telephone_invo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Invoice for [first_name_invo] [surname_invo] }\n[c street_invo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [street_invo][street_num_invo]}\n[/c][c city_row_invo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [city_row_invo]}\n[/c][c nation_row_invo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [nation_row_invo]}\n[/c][c fiscal_code_invo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab Fiscal code [fiscal_code_invo]}\n[/c][c vat_number_invo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab VAT number [vat_number_invo]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Invoice n. [document_progressive_number] released on [today]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n[r4 array=\"vat_perc_arr_invo\"]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n[r]\n[c show_rate_invo=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Stay from [starting_date] to [ending_date][people_phrase_invo]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [rate_no_vat_invo_p]}\n[/c][c show_discount_invo=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Discount}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [discount_no_vat_invo_p]}\n[/c]\n[r3][c show_extra_cost_invo=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Extra: \\\'93[extra_cost_name]\\\'94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_no_vat_invo_p]}\n[/c][c show_cost_as_taxes_invo=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Tax: \\\'93[extra_cost_name]\\\'94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_taxes_p]}\n[/c][/r3][/r]\n[c show_subtotal_invo=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Sub total at [vat_perc_arr_invo(vat_num_invo)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [part_tot_no_vat_invo_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Taxes at [vat_perc_arr_invo(vat_num_invo)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [part_tot_vat_invo_p]}\n[/c]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n[/r4]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Sub total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [tot_no_vat_invo_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Taxes[c vat_num_invo=\"1\"] at [vat_perc_arr_invo(vat_num_invo)]%[/c] total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [vat_invo_p]}\n[r][r3][c show_tax_cost_invo=\"1\"]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [extra_cost_name]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_no_vat_invo_p]}\n[/c][/r3][/r]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Invoice total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [currency_name] [price_tot_invo_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par }');
INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(5, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n[r][c numero_ripetizione_prenotazioni!=\"1\"]\\par \\page [/c]\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [structure_type] [structure_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_company_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_address] - [structure_city]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_postal_code] [structure_nation]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 VAT number [structure_vat_number] [struct_fisc_code_recei]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [struct_telephone_recei]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [c surname_recei!=\"\"]Receipt for [first_name_recei] [surname_recei][/c] }\n[c street!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [street][street_num_recei]}\n[/c][c city_row_recei!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [city_row_recei]}\n[/c][c nation_row_recei!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [nation_row_recei]}\n[/c][c fiscal_code!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab Fiscal code [fiscal_code]}\n[/c][c vat_number!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab VAT number [vat_number]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Receipt[c progressive_document_number!=\"\"] n. [progressive_document_number][/c] released on [today]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c starting_date!=\"\"]Reservation from [starting_date] to [ending_date][/c][c people_num_tot!=\"\"] for [people_num_tot] persons[/c][c starting_date=\"\"][last_payment_method][/c]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c show_method_recei=\"1\"][currency_name] [last_payment_value_p][/c]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total paid}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [currency_name] [last_payment_value_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n[/r]\\par }'),
(1, 'contrhtm', '<B><U><FONT FACE=\"Times\" SIZE=4><P ALIGN=\"CENTER\">EXAMPLE OF CONTRACT FOR HOTELDRUID</P>\n</U></B></FONT><FONT FACE=\"Times\"><P ALIGN=\"JUSTIFY\"></P>\n<P ALIGN=\"JUSTIFY\">&nbsp;</P><P ALIGN=\"JUSTIFY\">\nMr[Mr] [name] [surname] born the [birthday] resident in [city] [street2] n \n[street_number] tel [telephone] will rent an apartment in hoteldruid\nwith his family of [people_num_tot] people from [starting_date] to [ending_date].\nThe price will be of [price_tot_p]. A deposit of [deposit_p] must be left.\n</P>\n<P ALIGN=\"JUSTIFY\">\nNowhere, [oggi].\n</P>\n<P ALIGN=\"JUSTIFY\"></P>\n<P ALIGN=\"JUSTIFY\">\nThe client\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nThe owner</P>\n<P ALIGN=\"JUSTIFY\"></P>\n<P ALIGN=\"JUSTIFY\"> \n__________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;____________</P>\n<P ALIGN=\"JUSTIFY\"></P>\n</FONT>'),
(2, 'contrhtm', '<div class=\"invoice_frame\" style=\"width: 780px; margin: 10px; border: solid 1px black; padding: 30px; font-size: 12px; page-break-after: always\">\n[r][r3][/r3] [/r]\n\n<div class=\"structure_data\">\n[logo_invo]\n<div class=\"structure_name\" style=\"font-size: large;\">[structure_type] [structure_name]</div>\n[structure_company_name]<br>\n[structure_address] - [structure_city]<br>\n[structure_postal_code] [structure_nation]<br>\nVAT number [structure_vat_number] [struct_fisc_code_invo]<br>\n[struct_telephone_invo]<br>\n</div>\n\n<div class=\"client_data\" style=\"padding: 18px 0 8px 440px;\">\nInvoice for [first_name_invo] [surname_invo]<br>\n[c street_invo!=\"\"][street_invo][street_num_invo]<br>\n[/c][c city_row_invo!=\"\"][city_row_invo]<br>\n[/c][c nation_row_invo!=\"\"][nation_row_invo]<br>\n[/c][c fiscal_code_invo!=\"\"]Fiscal code [fiscal_code_invo]<br>\n[/c][c vat_number_invo!=\"\"]VAT number [vat_number_invo]<br>\n[/c]\n</div>\n\n<hr style=\"width: 100%; border: 1px solid black;\">\n\n<div class=\"invoice_number\" style=\"padding: 24px 0 8px 0\">\nInvoice n. [document_progressive_number] released on [today]\n</div>\n\n\n[r4 array=\"vat_perc_arr_invo\"]\n<table class=\"invoice_items\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;\">\n[r]\n[c show_rate_invo=\"1\"]<tr><td style=\"border-color: black;\">Stay from [starting_date] to [ending_date][people_phrase_invo]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [rate_no_vat_invo_p]</td></tr>\n[/c][c show_discount_invo=\"1\"]<tr><td style=\"border-color: black;\">Discount</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [discount_no_vat_invo_p]</td></tr>\n[/c]\n[r3][c show_extra_cost_invo=\"1\"]<tr><td style=\"border-color: black;\">Extra: \"[extra_cost_name]\"</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [extra_cost_no_vat_invo_p]</td></tr>\n[/c][c show_cost_as_taxes_invo=\"1\"]<tr><td style=\"border-color: black;\">Tax: \"[extra_cost_name]\"</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [extra_cost_taxes_p]</td></tr>\n[/c][/r3][/r]\n[c vat_perc_arr_invo(vat_num_invo)=\"-1\"]<!--[/c]\n[c show_subtotal_invo=\"1\"]<tr><td style=\"border-color: black;\">Sub total at [vat_perc_arr_invo(vat_num_invo)]%</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [part_tot_no_vat_invo_p]</td></tr>\n<tr><td style=\"border-color: black;\">Taxes at [vat_perc_arr_invo(vat_num_invo)]%</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [part_tot_vat_invo_p]</td></tr>\n[/c]\n[c vat_perc_arr_invo(vat_num_invo)=\"-1\"]-->[/c]\n</table>\n[/r4]\n\n<table class=\"invoice_subtotal\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;\">\n<tr><td style=\"border-color: black;\">Sub total</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [tot_no_vat_invo_p]</td></tr>\n<tr><td style=\"border-color: black;\">Taxes[c vat_num_invo=\"1\"] at [vat_perc_arr_invo(vat_num_invo)]%[/c] total</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [vat_invo_p]</td></tr>\n[r][r3][c show_tax_cost_invo=\"1\"]\n<tr><td style=\"border-color: black;\">[extra_cost_name]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [extra_cost_no_vat_invo_p]</td></tr>\n[/c][/r3][/r]\n</table>\n\n<table class=\"invoice_total\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #cccccc;\">\n<tr><td style=\"border-color: black;\">Invoice total</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [price_tot_invo_p]</td></tr>\n</table>\n\n\n<br>\n<hr style=\"width: 100%; border: 1px solid black;\">\n<br>\n\n\n</div>'),
(4, 'contrhtm', '<div class=\"invoice_frame\" style=\"width: 780px; margin: 10px; border: solid 1px black; padding: 30px; font-size: 12px; page-break-after: always\">\n\n<div class=\"structure_data\">\n[logo_recei]\n<div class=\"structure_name\" style=\"font-size: large;\">[structure_type] [structure_name]</div>\n[structure_company_name]<br>\n[structure_address] - [structure_city]<br>\n[structure_postal_code] [structure_nation]<br>\nVAT number [structure_vat_number] [struct_fisc_code_recei]<br>\n[struct_telephone_recei]<br>\n</div>\n\n<div class=\"client_data\" style=\"padding: 18px 0 8px 440px;\">\nReceipt for [first_name_recei] [surname_recei]<br>\n[c street_recei!=\"\"][street_recei][street_num_recei]<br>\n[/c][c city_row_recei!=\"\"][city_row_recei]<br>\n[/c][c nation_row_recei!=\"\"][nation_row_recei]<br>\n[/c][c fiscal_code!=\"\"]Fiscal code [fiscal_code]<br>\n[/c][c vat_number!=\"\"]VAT number [vat_number]<br>\n[/c]\n</div>\n\n<hr style=\"width: 100%; border: 1px solid black;\">\n\n<div class=\"invoice_number\" style=\"padding: 24px 0 8px 0\">\nReceipt[c document_progressive_number!=\"\"] n. [document_progressive_number][/c] released on [today]\n</div>\n\n\n<table class=\"invoice_items\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;\">\n<tr><td style=\"border-color: black;\">[c starting_date!=\"\"]Reservation from [starting_date] to [ending_date][/c][c people_num_tot!=\"\"] for [people_num_tot] persons[/c][c starting_date=\"\"][last_payment_method][/c]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[c show_method_recei=\"1\"][currency_name] [last_payment_value_p][/c]</td></tr>\n</table>\n\n<table class=\"invoice_total\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #cccccc;\">\n<tr><td style=\"border-color: black;\">Total paid</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[currency_name] [last_payment_value_p]</td></tr>\n</table>\n\n\n<br>\n<hr style=\"width: 100%; border: 1px solid black;\">\n<br>\n\n\n</div>'),
(8, 'contrhtm', '[r][null_value][r3][null_value][/r3][/r][r4 array=\"extra_costs_clean\"][null_value][/r4][r4 array=\"array_dates_clean\"][r][r3][null_value][/r3][/r][/r4]\n<h1>Cleaning Report for <em>[f_report_date_clean]</em></h1>\n<table class=\"clrep\">\n<tr class=\"headrow\"><td>Room</td><td>People</td><td>Situation</td><td><small><small>Departing<br>People</small></small></td><td><small><small>Arrival<br>Time</small></small></td>[ec_table_head_clean]</tr>\n[r6]\n<tr[row_class_clean]><td>[unit_clean]</td><td>[people_clean(unit_clean)]</td><td>[situation_clean(unit_clean)]</td><td>[dep_people_clean(unit_clean)]</td><td>[arrival_time_clean(unit_clean)]</td>[ec_unit_row_clean(unit_clean)]</tr>\n[repeat_header_row_clean]\n[/r6]\n<tr class=\"headrow\"><td>Total</td><td>[people_tot_clean]</td><td><small>([arr_people_tot_clean] arrivals)</small></td><td>[dep_people_tot_clean]</td><td></td>\n[r4 array=\"total_ec_clean\"]\n<td>[total_ec_clean(ec_num_clean)]</td>\n[/r4]</tr>\n</table>'),
(10, 'contrhtm', NULL),
(11, 'contrhtm', NULL),
(12, 'contrhtm', NULL),
(6, 'contreml', '#!mln!#en'),
(7, 'contreml', '#!mln!#en'),
(1, 'cond9', 'rpt#@?#@?set#%?428#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(2, 'cond9', 'rpt#@?or#$?cognome#%?{}#%?txt#%?&quot;#$?cognome#%?{}#%?txt#%?,#@?set#%?428#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(3, 'cond9', 'rpt#@?#@?set#%?428#%?.=#%?var#%?cognome#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(4, 'cond9', 'rpt#@?or#$?cognome#%?{}#%?txt#%?&quot;#$?cognome#%?{}#%?txt#%?,#@?set#%?428#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(5, 'cond9', 'rpt#@?#@?set#%?429#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(6, 'cond9', 'rpt#@?or#$?nome#%?{}#%?txt#%?&quot;#$?nome#%?{}#%?txt#%?,#@?set#%?429#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(7, 'cond9', 'rpt#@?#@?set#%?429#%?.=#%?var#%?nome#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(8, 'cond9', 'rpt#@?or#$?nome#%?{}#%?txt#%?&quot;#$?nome#%?{}#%?txt#%?,#@?set#%?429#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(9, 'cond9', 'rpt#@?#@?set#%?430#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(10, 'cond9', 'rpt#@?or#$?soprannome#%?{}#%?txt#%?&quot;#$?soprannome#%?{}#%?txt#%?,#@?set#%?430#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(11, 'cond9', 'rpt#@?#@?set#%?430#%?.=#%?var#%?soprannome#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(12, 'cond9', 'rpt#@?or#$?soprannome#%?{}#%?txt#%?&quot;#$?soprannome#%?{}#%?txt#%?,#@?set#%?430#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(13, 'cond9', 'rpt#@?#@?set#%?431#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(14, 'cond9', 'rpt#@?or#$?titolo#%?{}#%?txt#%?&quot;#$?titolo#%?{}#%?txt#%?,#@?set#%?431#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(15, 'cond9', 'rpt#@?#@?set#%?431#%?.=#%?var#%?titolo#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(16, 'cond9', 'rpt#@?or#$?titolo#%?{}#%?txt#%?&quot;#$?titolo#%?{}#%?txt#%?,#@?set#%?431#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(17, 'cond9', 'rpt#@?#@?set#%?432#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(18, 'cond9', 'rpt#@?or#$?email#%?{}#%?txt#%?&quot;#$?email#%?{}#%?txt#%?,#@?set#%?432#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(19, 'cond9', 'rpt#@?#@?set#%?432#%?.=#%?var#%?email#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(20, 'cond9', 'rpt#@?or#$?email#%?{}#%?txt#%?&quot;#$?email#%?{}#%?txt#%?,#@?set#%?432#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(21, 'cond9', 'rpt#@?#@?set#%?433#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(22, 'cond9', 'rpt#@?or#$?telefono#%?{}#%?txt#%?&quot;#$?telefono#%?{}#%?txt#%?,#@?set#%?433#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(23, 'cond9', 'rpt#@?#@?set#%?433#%?.=#%?var#%?telefono#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(24, 'cond9', 'rpt#@?or#$?telefono#%?{}#%?txt#%?&quot;#$?telefono#%?{}#%?txt#%?,#@?set#%?433#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(25, 'cond9', 'rpt#@?#@?set#%?434#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(26, 'cond9', 'rpt#@?or#$?fax#%?{}#%?txt#%?&quot;#$?fax#%?{}#%?txt#%?,#@?set#%?434#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(27, 'cond9', 'rpt#@?#@?set#%?434#%?.=#%?var#%?fax#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(28, 'cond9', 'rpt#@?or#$?fax#%?{}#%?txt#%?&quot;#$?fax#%?{}#%?txt#%?,#@?set#%?434#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(29, 'cond9', 'rpt#@?#@?set#%?435#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(30, 'cond9', 'rpt#@?or#$?nazione#%?{}#%?txt#%?&quot;#$?nazione#%?{}#%?txt#%?,#@?set#%?435#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(31, 'cond9', 'rpt#@?#@?set#%?435#%?.=#%?var#%?nazione#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(32, 'cond9', 'rpt#@?or#$?nazione#%?{}#%?txt#%?&quot;#$?nazione#%?{}#%?txt#%?,#@?set#%?435#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(33, 'cond9', 'rpt#@?#@?set#%?436#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(34, 'cond9', 'rpt#@?or#$?regione#%?{}#%?txt#%?&quot;#$?regione#%?{}#%?txt#%?,#@?set#%?436#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(35, 'cond9', 'rpt#@?#@?set#%?436#%?.=#%?var#%?regione#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(36, 'cond9', 'rpt#@?or#$?regione#%?{}#%?txt#%?&quot;#$?regione#%?{}#%?txt#%?,#@?set#%?436#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(37, 'cond9', 'rpt#@?#@?set#%?437#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(38, 'cond9', 'rpt#@?or#$?citta#%?{}#%?txt#%?&quot;#$?citta#%?{}#%?txt#%?,#@?set#%?437#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(39, 'cond9', 'rpt#@?#@?set#%?437#%?.=#%?var#%?citta#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(40, 'cond9', 'rpt#@?or#$?citta#%?{}#%?txt#%?&quot;#$?citta#%?{}#%?txt#%?,#@?set#%?437#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(41, 'cond9', 'rpt#@?#@?set#%?443#%?=#%?var#%?via#%?txt#%?#%?txt#%?#%?'),
(42, 'cond9', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?443#%?.=#%?txt#%? #%?txt#%?#%?txt#%?#%?'),
(43, 'cond9', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?443#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?#%?'),
(44, 'cond9', 'rpt#@?#@?set#%?438#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(45, 'cond9', 'rpt#@?or#$?tmp_csv#%?{}#%?txt#%?&quot;#$?tmp_csv#%?{}#%?txt#%?,#@?set#%?438#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(46, 'cond9', 'rpt#@?#@?set#%?438#%?.=#%?var#%?tmp_csv#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(47, 'cond9', 'rpt#@?or#$?tmp_csv#%?{}#%?txt#%?&quot;#$?tmp_csv#%?{}#%?txt#%?,#@?set#%?438#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(48, 'cond9', 'rpt#@?#@?set#%?439#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(49, 'cond9', 'rpt#@?or#$?cap#%?{}#%?txt#%?&quot;#$?cap#%?{}#%?txt#%?,#@?set#%?439#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(50, 'cond9', 'rpt#@?#@?set#%?439#%?.=#%?var#%?cap#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(51, 'cond9', 'rpt#@?or#$?cap#%?{}#%?txt#%?&quot;#$?cap#%?{}#%?txt#%?,#@?set#%?439#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(52, 'cond9', 'rpt#@?#@?set#%?440#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(53, 'cond9', 'rpt#@?or#$?cittadinanza#%?{}#%?txt#%?&quot;#$?cittadinanza#%?{}#%?txt#%?,#@?set#%?440#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(54, 'cond9', 'rpt#@?#@?set#%?440#%?.=#%?var#%?cittadinanza#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(55, 'cond9', 'rpt#@?or#$?cittadinanza#%?{}#%?txt#%?&quot;#$?cittadinanza#%?{}#%?txt#%?,#@?set#%?440#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(56, 'cond9', 'rpt#@?#@?set#%?441#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(57, 'cond9', 'rpt#@?#@?date#%?441#%?data_nascita#%?da#%?0#%?g'),
(58, 'cond9', 'rpt#@?#@?set#%?442#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(59, 'cond9', 'rpt#@?or#$?partita_iva#%?{}#%?txt#%?&quot;#$?partita_iva#%?{}#%?txt#%?,#@?set#%?442#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(60, 'cond9', 'rpt#@?#@?set#%?442#%?.=#%?var#%?partita_iva#%?txt#%?&quot;#%?txt#%?\"\"#%?'),
(61, 'cond9', 'rpt#@?or#$?partita_iva#%?{}#%?txt#%?&quot;#$?partita_iva#%?{}#%?txt#%?,#@?set#%?442#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?#%?'),
(5, 'cond8', 'ind#@?#@?set#%?101300#%?=#%?txt#%?30#%?txt#%?#%?txt#%?#%?'),
(6, 'cond8', 'ind#@?#@?date#%?101293#%?data_inizio_selezione#%?is#%?2#%?g'),
(7, 'cond8', 'ind#@?or#$?data_inizio_selezione#%?=#%?txt#%?#$?var_tmp_clean#%?>#%?var#%?data_fine_selezione#@?set#%?-1#%?=#%?txt#%?This document must be viewed from the table with departures and current reservations (entry \"reservations\" in top menu --&gt; \"depart. and current\") or at least 2 days must be selected.#%?txt#%?#%?txt#%?#%?'),
(8, 'cond8', 'ind#@?#@?date#%?101282#%?data_inizio_selezione#%?is#%?1#%?g'),
(9, 'cond8', 'rpt#@?#@?set#%?101285#%?=#%?var#%?unita_occupata#%?txt#%?#%?txt#%?#%?'),
(10, 'cond8', 'rpt#@?#@?set#%?101283#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(15, 'cond8', 'rpt#@?#@?set#%?101284#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(16, 'cond8', 'rpt#@?#$?data_inizio#%?=#%?var#%?report_date_clean#@?set#%?101283#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(17, 'cond8', 'rpt#@?#$?data_fine#%?=#%?var#%?report_date_clean#@?set#%?101284#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(18, 'cond8', 'run#@?#@?set#%?101285#%?=#%?var#%?nome_unita#%?txt#%?#%?txt#%?#%?'),
(19, 'cond8', 'rpt#@?and#$?arrival_clean#%?=#%?txt#%?1#$?situation_clean(unit_clean)#%?!=#%?txt#%?#@?set#%?a2322#%?=#%?txt#%?DEP+ARR#%?txt#%?#%?txt#%?#%?'),
(20, 'cond8', 'rpt#@?and#$?departure_clean#%?=#%?txt#%?1#$?situation_clean(unit_clean)#%?!=#%?txt#%?#@?set#%?a2322#%?=#%?txt#%?DEP+ARR#%?txt#%?#%?txt#%?#%?'),
(31, 'cond8', 'rpt#@?and#$?data_inizio#%?<#%?var#%?report_date_clean#$?data_fine#%?>#%?var#%?report_date_clean#@?set#%?a2322#%?=#%?txt#%?STAY#%?txt#%?#%?txt#%?#%?'),
(33, 'cond8', 'rpt#@?and#$?arrival_clean#%?=#%?txt#%?1#$?situation_clean(unit_clean)#%?=#%?txt#%?#@?set#%?a2322#%?=#%?txt#%?ARRIVAL#%?txt#%?#%?txt#%?#%?'),
(34, 'cond8', 'rpt#@?and#$?departure_clean#%?=#%?txt#%?1#$?situation_clean(unit_clean)#%?=#%?txt#%?#@?set#%?a2322#%?=#%?txt#%?DEPARTURE#%?txt#%?#%?txt#%?#%?'),
(35, 'cond8', 'ind#@?#@?date#%?101287#%?report_date_clean#%?da#%?0#%?g'),
(36, 'cond8', 'rpt#@?#@?set#%?101293#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(37, 'cond8', 'rpt#@?or#$?data_inizio#%?=#%?var#%?report_date_clean#$?data_inizio#%?<#%?var#%?report_date_clean#@?set#%?101293#%?=#%?var#%?num_persone#%?txt#%?#%?txt#%?#%?'),
(38, 'cond8', 'rpt#@?or#$?data_fine#%?=#%?var#%?report_date_clean#$?data_fine#%?<#%?var#%?report_date_clean#@?set#%?101293#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(39, 'cond8', 'rpt#@?#$?var_tmp_clean#%?!=#%?txt#%?#@?set#%?a2323#%?=#%?var#%?var_tmp_clean#%?txt#%?#%?txt#%?#%?'),
(40, 'cond8', 'rpt#@?and#$?var_tmp_clean#%?!=#%?txt#%?#$?n_letti_agg#%?!=#%?txt#%?#@?set#%?a2323#%?.=#%?txt#%?+#%?txt#%?#%?txt#%?#%?'),
(41, 'cond8', 'rpt#@?and#$?var_tmp_clean#%?!=#%?txt#%?#$?n_letti_agg#%?!=#%?txt#%?#@?set#%?a2323#%?.=#%?var#%?n_letti_agg#%?txt#%?#%?txt#%?#%?'),
(42, 'cond8', 'rpt#@?#$?var_tmp_clean#%?!=#%?txt#%?#@?set#%?a2325#%?=#%?var#%?num_persone_tot#%?txt#%?#%?txt#%?#%?'),
(43, 'cond8', 'rpt#@?#$?data_fine#%?=#%?var#%?report_date_clean#@?set#%?a2324#%?=#%?var#%?num_persone#%?txt#%?#%?txt#%?#%?'),
(44, 'cond8', 'rpt#@?and#$?data_fine#%?=#%?var#%?report_date_clean#$?n_letti_agg#%?!=#%?txt#%?#@?set#%?a2324#%?.=#%?txt#%?+#%?txt#%?#%?txt#%?#%?'),
(45, 'cond8', 'rpt#@?and#$?data_fine#%?=#%?var#%?report_date_clean#$?n_letti_agg#%?!=#%?txt#%?#@?set#%?a2324#%?.=#%?var#%?n_letti_agg#%?txt#%?#%?txt#%?#%?'),
(46, 'cond8', 'run#@?#@?oper#%?101288#%?people_tot_clean#%?+#%?var#%?people_num_clean(unit_clean)#%?'),
(47, 'cond8', 'rpt#@?#$?data_fine#%?=#%?var#%?report_date_clean#@?set#%?a2326#%?=#%?var#%?num_persone_tot#%?txt#%?#%?txt#%?#%?'),
(48, 'cond8', 'run#@?#@?oper#%?101289#%?dep_people_tot_clean#%?+#%?var#%?dep_people_num_clean(unit_clean)#%?'),
(49, 'cond8', 'rpt#@?#$?data_inizio#%?=#%?var#%?report_date_clean#@?set#%?a2327#%?=#%?var#%?num_persone_tot#%?txt#%?#%?txt#%?#%?'),
(50, 'cond8', 'run#@?#@?oper#%?101290#%?arr_people_tot_clean#%?+#%?var#%?arr_people_num_clean(unit_clean)#%?'),
(51, 'cond8', 'rpt#@?#$?data_inizio#%?=#%?var#%?report_date_clean#@?set#%?a2328#%?=#%?var#%?orario_entrata_stimato#%?var#%?report_date_clean#%?txt#%?#%?'),
(52, 'cond8', 'ind#@?#@?set#%?101291#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(53, 'cond8', 'rca#@?#$?repetition_number_clean#%?!=#%?txt#%?1#@?break#%?cont'),
(54, 'cond8', 'rca#@?#$?giorni_costo_agg#%?=#%?txt#%?#@?break#%?cont'),
(55, 'cond8', 'rca#@?#$?ec_pos_clean(nome_costo_agg)#%?=#%?txt#%?#@?oper#%?101291#%?ec_num_clean#%?+#%?txt#%?1#%?'),
(56, 'cond8', 'rca#@?#$?ec_pos_clean(nome_costo_agg)#%?=#%?txt#%?#@?set#%?a2329#%?=#%?var#%?nome_costo_agg#%?txt#%?#%?txt#%?#%?'),
(57, 'cond8', 'ind#@?#@?set#%?101292#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(58, 'cond8', 'inr#@?#@?oper#%?101292#%?repetition_number_clean#%?+#%?txt#%?1#%?'),
(59, 'cond8', 'rca#@?#$?ec_pos_clean(nome_costo_agg)#%?=#%?txt#%?#@?set#%?a2330#%?=#%?var#%?ec_num_clean#%?txt#%?#%?txt#%?#%?'),
(60, 'cond8', 'rca#@?#@?cont'),
(61, 'cond8', 'run#@?#@?set#%?101293#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(62, 'cond8', 'run#@?#$?row_class_clean#%?!=#%?txt#%?#@?set#%?101293#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(63, 'cond8', 'run#@?#$?var_tmp_clean#%?!=#%?txt#%?1#@?set#%?101286#%?=#%?txt#%? class=\"bgclr\"#%?txt#%?#%?txt#%?#%?'),
(64, 'cond8', 'run#@?#$?var_tmp_clean#%?=#%?txt#%?1#@?set#%?101286#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(65, 'cond8', 'rar2329#@?#@?set#%?101294#%?.=#%?txt#%?<td><small><small>#%?txt#%?#%?txt#%?#%?'),
(66, 'cond8', 'rar2329#@?#@?set#%?101294#%?.=#%?var#%?extra_costs_clean(ec_num_clean)#%?txt#%?#%?txt#%?#%?'),
(67, 'cond8', 'rar2329#@?#@?set#%?101294#%?.=#%?txt#%?</small></small></td>#%?txt#%?#%?txt#%?#%?'),
(68, 'cond8', 'rar2329#@?#@?set#%?101295#%?.=#%?txt#%?<td><!-- cost#%?txt#%?#%?txt#%?#%?'),
(69, 'cond8', 'rar2329#@?#@?set#%?101295#%?.=#%?var#%?ec_num_clean#%?txt#%?#%?txt#%?#%?'),
(71, 'cond8', 'rar2329#@?#@?set#%?101295#%?.=#%?txt#%? --></td>#%?txt#%?#%?txt#%?#%?'),
(72, 'cond8', 'rca#@?#$?repetition_number_clean#%?<#%?txt#%?2#@?break#%?cont'),
(73, 'cond8', 'rca#@?#$?array_dates_clean(day_clean)#%?!=#%?var#%?report_date_clean#@?break#%?cont'),
(74, 'cond8', 'rca#@?#$?ec_pos_clean(nome_costo_agg)#%?=#%?txt#%?#@?break#%?cont'),
(75, 'cond8', 'rca#@?#@?set#%?101285#%?=#%?var#%?unita_occupata#%?txt#%?#%?txt#%?#%?'),
(76, 'cond8', 'rca#@?#$?ec_unit_row_clean(unit_clean)#%?=#%?txt#%?#@?set#%?a2332#%?=#%?var#%?ec_table_row_clean#%?txt#%?#%?txt#%?#%?'),
(77, 'cond8', 'ind#@?#@?array#%?a2333#%?dat#%?'),
(78, 'cond8', 'rca#@?#@?set#%?101293#%?=#%?txt#%?<!-- cost#%?txt#%?#%?txt#%?#%?'),
(79, 'cond8', 'rca#@?#@?set#%?101293#%?.=#%?var#%?ec_pos_clean(nome_costo_agg)#%?txt#%?#%?txt#%?#%?'),
(80, 'cond8', 'rca#@?#@?set#%?101293#%?.=#%?txt#%? -->#%?txt#%?#%?txt#%?#%?'),
(82, 'cond8', 'rca#@?#@?set#%?a2332#%?=#%?var#%?ec_unit_row_clean(unit_clean)#%?var#%?var_tmp_clean#%?var#%?moltiplica_max_costo_agg#%?'),
(83, 'cond8', 'rca#@?#@?set#%?101291#%?=#%?var#%?ec_pos_clean(nome_costo_agg)#%?txt#%?#%?txt#%?#%?'),
(84, 'cond8', 'rca#@?#@?oper#%?a2334#%?total_ec_clean(ec_num_clean)#%?+#%?var#%?moltiplica_max_costo_agg#%?'),
(85, 'cond8', 'rca#@?#@?cont'),
(86, 'cond8', 'run#@?#$?ec_unit_row_clean(unit_clean)#%?=#%?txt#%?#@?set#%?a2332#%?=#%?var#%?ec_table_row_clean#%?txt#%?#%?txt#%?#%?'),
(87, 'cond8', 'rpt#@?#$?data_inizio#%?=#%?var#%?report_date_clean#@?trunc#%?a2328#%?-3#%?#%?ini'),
(88, 'cond8', 'rar2329#@?#@?set#%?a2334#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(89, 'cond8', 'ind#@?#@?set#%?101297#%?=#%?txt#%?<tr class=\"headrow\"><td>Room</td><td>People</td><td>Situation</td><td><small><small>Departing<br>People</small></small></td><td><small><small>Arrival<br>Time</small></small></td>#%?txt#%?#%?txt#%?#%?'),
(90, 'cond8', 'run#@?#@?oper#%?101298#%?unit_repetition_number_clean#%?+#%?txt#%?1#%?'),
(91, 'cond8', 'run#@?#@?set#%?101299#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(92, 'cond8', 'run#@?#$?unit_repetition_number_clean#%?=#%?var#%?number_repeat_head_row_clean#@?set#%?101299#%?=#%?var#%?header_row_table_clean#%?txt#%?#%?txt#%?#%?'),
(93, 'cond8', 'run#@?#$?unit_repetition_number_clean#%?=#%?var#%?number_repeat_head_row_clean#@?set#%?101299#%?.=#%?var#%?ec_table_head_clean#%?txt#%?#%?txt#%?#%?'),
(94, 'cond8', 'run#@?#$?unit_repetition_number_clean#%?=#%?var#%?number_repeat_head_row_clean#@?set#%?101299#%?.=#%?txt#%?</tr>#%?txt#%?#%?txt#%?#%?'),
(95, 'cond8', 'run#@?#$?unit_repetition_number_clean#%?=#%?var#%?number_repeat_head_row_clean#@?set#%?101298#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(1, 'cond7', 'rpt#@?#@?set#%?305#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?#%?'),
(2, 'cond7', 'rpt#@?#@?set#%?306#%?=#%?var#%?cognome#%?txt#%? #%?txt#%?#%?'),
(3, 'cond7', 'rpt#@?#@?trunc#%?306#%?6#%?#%?ini'),
(4, 'cond7', 'rpt#@?#@?set#%?306#%?=#%?var#%?surn_no_sp_cre#%?txt#%?#%?txt#%?#%?url'),
(1, 'cond6', 'rpt#@?#@?set#%?102#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?#%?'),
(87, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?=#%?txt#%?- Fiscal Code  #%?txt#%?#%?txt#%?#%?'),
(88, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?#%?'),
(89, 'cond4', 'rpt#@?#@?set#%?76#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(92, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?#%?'),
(94, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?#%?'),
(97, 'cond4', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?#%?'),
(98, 'cond4', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?#%?'),
(99, 'cond4', 'rpt#@?#@?set#%?74#%?=#%?var#%?nome#%?txt#%?#%?txt#%?#%?'),
(100, 'cond4', 'rpt#@?#@?set#%?75#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?#%?'),
(101, 'cond4', 'rpt#@?#@?set#%?98#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(102, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?=#%?txt#%?, #%?txt#%?#%?txt#%?#%?'),
(103, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?#%?'),
(104, 'cond4', 'rpt#@?#@?set#%?68#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(105, 'cond4', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?#%?'),
(107, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?#%?'),
(108, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?#%?'),
(109, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?#%?'),
(110, 'cond4', 'rpt#@?#@?set#%?69#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(111, 'cond4', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?#%?'),
(112, 'cond4', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?txt#%? #%?txt#%?#%?txt#%?#%?');
INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(113, 'cond4', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?#%?'),
(114, 'cond4', 'rpt#@?#@?set#%?421#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(115, 'cond4', 'rpt#@?and#$?data_inizio#%?=#%?txt#%?#$?metodo_ultimo_pagamento#%?!=#%?txt#%?#@?set#%?421#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(116, 'cond4', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?101301#%?=#%?txt#%?<img src=\"#%?txt#%?#%?txt#%?#%?'),
(117, 'cond4', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?101301#%?.=#%?var#%?logo_struttura#%?txt#%?#%?txt#%?#%?'),
(118, 'cond4', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?101301#%?.=#%?txt#%?\" alt=\"Logo\" style=\"float: right;\">#%?txt#%?#%?txt#%?#%?'),
(25, 'cond2', 'rpt#@?#@?set#%?409#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(26, 'cond2', 'rpt#@?and#$?vat_perc_arr_invo(vat_num_invo)#%?=#%?var#%?percentuale_tasse_tariffa#$?repetition_num_invo#%?>#%?txt#%?1#@?set#%?409#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(27, 'cond2', 'rpt#@?#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(30, 'cond2', 'rpt#@?and#$?show_rate_invo#%?=#%?txt#%?1#$?sconto#%?!=#%?txt#%?0#@?set#%?410#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(31, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(32, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(36, 'cond2', 'ind#@?#@?set#%?427#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(38, 'cond2', 'rpt#@?#@?set#%?423#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(39, 'cond2', 'rpt#@?#$?nome_costo_agg#%?=#%?var#%?tax_cost_name_invo#@?set#%?423#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(40, 'cond2', 'rpt#@?and#$?vat_perc_arr_invo(vat_num_invo)#%?=#%?var#%?percentuale_tasse_costo_agg#$?valore_costo_agg#%?!=#%?txt#%?0#$?repetition_num_invo#%?>#%?txt#%?1#$?show_tax_cost_invo#%?!=#%?txt#%?1#@?set#%?411#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(42, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_tariffa#%?txt#%?#%?txt#%?#%?'),
(43, 'cond2', 'rpt#@?#$?tmp_var_invo#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(44, 'cond2', 'rpt#@?#$?exist_perc_vat_invo(tmp_var_invo)#%?=#%?txt#%?1#@?break#%?cont'),
(46, 'cond2', 'rpt#@?#@?oper#%?408#%?vat_num_invo#%?+#%?txt#%?1#%?'),
(48, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?vat_num_invo#%?txt#%?#%?txt#%?#%?'),
(52, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?tmp_var_invo#%?txt#%?#%?txt#%?#%?'),
(60, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(61, 'cond2', 'rpt#@?#@?cont'),
(65, 'cond2', 'rpt#@?or#$?valore_costo_agg#%?=#%?txt#%?0#$?valore_costo_agg#%?=#%?txt#%?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?break#%?cont'),
(75, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_costo_agg#%?txt#%?#%?txt#%?#%?'),
(76, 'cond2', 'rpt#@?#$?tmp_var_invo#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(81, 'cond2', 'rpt#@?#$?exist_perc_vat_invo(tmp_var_invo)#%?=#%?txt#%?1#@?break#%?cont'),
(83, 'cond2', 'rpt#@?#@?oper#%?408#%?vat_num_invo#%?+#%?txt#%?1#%?'),
(84, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?vat_num_invo#%?txt#%?#%?txt#%?#%?'),
(86, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?tmp_var_invo#%?txt#%?#%?txt#%?#%?'),
(87, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(88, 'cond2', 'rpt#@?#@?cont'),
(89, 'cond2', 'rpt#@?#@?oper#%?351#%?valore_costo_agg_senza_tasse#%?+#%?txt#%?0#%?'),
(90, 'cond2', 'rpt#@?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?oper#%?351#%?valore_costo_agg#%?+#%?txt#%?0#%?'),
(91, 'cond2', 'rpt#@?#@?set#%?342#%?=#%?var#%?nome_costo_agg#%?txt#%?#%?txt#%?#%?'),
(95, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(100, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(103, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?+#%?var#%?tasse_costo_agg#%?'),
(105, 'cond2', 'rpt#@?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?oper#%?425#%?tot_costs_tax_invo#%?+#%?var#%?valore_costo_agg#%?'),
(106, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(108, 'cond2', 'rpt#@?#@?oper#%?415#%?part_tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(110, 'cond2', 'rpt#@?#@?oper#%?416#%?part_tot_vat_invo#%?+#%?txt#%?0#%?'),
(111, 'cond2', 'rpt#@?#@?oper#%?424#%?price_tot_invo#%?-#%?var#%?tot_no_vat_invo#%?'),
(112, 'cond2', 'rpt#@?#@?oper#%?424#%?vat_invo#%?-#%?var#%?tot_costs_tax_invo#%?'),
(113, 'cond2', 'rpt#@?#@?oper#%?349#%?vat_invo#%?+#%?txt#%?0#%?'),
(114, 'cond2', 'rpt#@?or#$?show_extra_cost_invo#%?!=#%?txt#%?1#$?percentuale_tasse_costo_agg#%?!=#%?txt#%?-1#@?break#%?cont'),
(115, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(116, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(117, 'cond2', 'rpt#@?#@?cont'),
(118, 'cond2', 'rpt#@?#$?max_vat_num_invo#%?>#%?txt#%?1#@?set#%?427#%?=#%?txt#%?1#%?txt#%?#%?txt#%?#%?'),
(119, 'cond2', 'rpt#@?#$?last_reserv_invo#%?=#%?var#%?numero_prenotazione#@?break#%?'),
(120, 'cond2', 'rpt#@?#@?set#%?339#%?=#%?var#%?numero_prenotazione#%?txt#%?#%?txt#%?#%?'),
(121, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(122, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(123, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?+#%?var#%?tasse_tariffa#%?'),
(124, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?-#%?var#%?sconto_senza_tasse#%?'),
(125, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?-#%?var#%?sconto_senza_tasse#%?'),
(126, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?-#%?var#%?tasse_sconto#%?'),
(128, 'cond2', 'rpt#@?#@?oper#%?353#%?costo_tariffa_senza_tasse#%?+#%?txt#%?0#%?'),
(129, 'cond2', 'rpt#@?#@?oper#%?352#%?sconto_senza_tasse#%?*#%?txt#%?-1#%?'),
(130, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(131, 'cond2', 'rpt#@?#@?oper#%?415#%?part_tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(132, 'cond2', 'rpt#@?#@?oper#%?416#%?part_tot_vat_invo#%?+#%?txt#%?0#%?'),
(133, 'cond2', 'rpt#@?#@?oper#%?424#%?price_tot_invo#%?-#%?var#%?tot_no_vat_invo#%?'),
(134, 'cond2', 'rpt#@?#@?oper#%?424#%?vat_invo#%?-#%?var#%?tot_costs_tax_invo#%?'),
(135, 'cond2', 'rpt#@?#@?oper#%?349#%?vat_invo#%?+#%?txt#%?0#%?'),
(136, 'cond2', 'rpt#@?#$?merge_discount_with_rate#%?=#%?txt#%?YES#@?oper#%?353#%?costo_tariffa_senza_tasse#%?-#%?var#%?sconto_senza_tasse#%?'),
(137, 'cond2', 'rpt#@?#$?merge_discount_with_rate#%?=#%?txt#%?YES#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(138, 'cond2', 'rpt#@?#@?set#%?418#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(139, 'cond2', 'rpt#@?and#$?num_persone_tot#%?!=#%?txt#%?#$?num_persone_tot#%?!=#%?txt#%?0#@?set#%?418#%?=#%?txt#%? for x persons#%?txt#%?x#%?var#%?num_persone_tot#%?'),
(140, 'cond2', 'rpt#@?#$?repetition_num_invo#%?>#%?txt#%?1#@?break#%?'),
(141, 'cond2', 'rpt#@?#@?oper#%?347#%?price_tot_invo#%?+#%?var#%?costo_tot#%?'),
(142, 'cond2', 'rpt#@?#@?oper#%?348#%?price_tot_invo#%?+#%?txt#%?0#%?'),
(143, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?=#%?txt#%?- Fiscal Code #%?txt#%?#%?txt#%?#%?'),
(144, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?#%?'),
(145, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?#%?'),
(146, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?#%?'),
(147, 'cond2', 'inr#@?#@?set#%?339#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(148, 'cond2', 'inr#@?#@?oper#%?412#%?repetition_num_invo#%?+#%?txt#%?1#%?'),
(149, 'cond2', 'ind#@?#@?set#%?419#%?=#%?txt#%?YES#%?txt#%?#%?txt#%?#%?'),
(150, 'cond2', 'ind#@?#@?set#%?422#%?=#%?txt#%?name of extra cost considered as tax#%?txt#%?#%?txt#%?#%?'),
(151, 'cond2', 'ind#@?#@?set#%?347#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(152, 'cond2', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?#%?'),
(153, 'cond2', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?#%?'),
(154, 'cond2', 'ind#@?#@?set#%?343#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(155, 'cond2', 'rpt#@?#@?set#%?331#%?=#%?var#%?nome#%?txt#%?#%?txt#%?#%?'),
(156, 'cond2', 'rpt#@?#@?set#%?332#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?#%?'),
(157, 'cond2', 'rpt#@?#@?set#%?355#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(158, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?=#%?txt#%?, #%?txt#%?#%?txt#%?#%?'),
(159, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?#%?'),
(160, 'cond2', 'rpt#@?#@?set#%?325#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(161, 'cond2', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?#%?'),
(162, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?#%?'),
(163, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?#%?'),
(164, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?#%?'),
(165, 'cond2', 'rpt#@?#@?set#%?326#%?=#%?txt#%?#%?txt#%?#%?txt#%?#%?'),
(166, 'cond2', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?#%?'),
(167, 'cond2', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?txt#%? #%?txt#%?#%?txt#%?#%?'),
(168, 'cond2', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?#%?'),
(169, 'cond2', 'rpt#@?#@?set#%?405#%?=#%?var#%?codice_fiscale#%?txt#%?#%?txt#%?#%?'),
(170, 'cond2', 'rpt#@?#@?set#%?406#%?=#%?var#%?partita_iva#%?txt#%?#%?txt#%?#%?'),
(171, 'cond2', 'rpt#@?#@?set#%?407#%?=#%?var#%?via#%?txt#%?#%?txt#%?#%?'),
(172, 'cond2', 'ind#@?#@?set#%?408#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(173, 'cond2', 'ind#@?#@?set#%?412#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(174, 'cond2', 'inr#@?#@?set#%?413#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(175, 'cond2', 'inr#@?#@?set#%?414#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(176, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?=#%?txt#%?<img src=\"#%?txt#%?#%?txt#%?#%?'),
(177, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?var#%?logo_struttura#%?txt#%?#%?txt#%?#%?'),
(178, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?txt#%?\" alt=\"Logo\" style=\"float: right;\">#%?txt#%?#%?txt#%?#%?'),
(179, 'cond2', 'inr#@?#@?set#%?425#%?=#%?txt#%?0#%?txt#%?#%?txt#%?#%?'),
(1, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?1#%?=#%?txt#%?s#%?txt#%?#%?txt#%?#%?'),
(3, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?il#%?txt#%?#%?txt#%?#%?'),
(4, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?la#%?txt#%?#%?txt#%?#%?'),
(5, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?Il#%?txt#%?#%?txt#%?#%?'),
(6, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?La#%?txt#%?#%?txt#%?#%?'),
(7, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?al#%?txt#%?#%?txt#%?#%?'),
(8, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?alla#%?txt#%?#%?txt#%?#%?'),
(9, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?e#%?txt#%?#%?txt#%?#%?'),
(10, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?a#%?txt#%?#%?txt#%?#%?'),
(11, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?o#%?txt#%?#%?txt#%?#%?'),
(12, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?a#%?txt#%?#%?txt#%?#%?'),
(23, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?el#%?txt#%?#%?txt#%?#%?'),
(24, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?la#%?txt#%?#%?txt#%?#%?'),
(25, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?El#%?txt#%?#%?txt#%?#%?'),
(26, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?La#%?txt#%?#%?txt#%?#%?'),
(27, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?al#%?txt#%?#%?txt#%?#%?'),
(28, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?a la#%?txt#%?#%?txt#%?#%?'),
(29, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?16#%?=#%?txt#%?a#%?txt#%?#%?txt#%?#%?'),
(30, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?o#%?txt#%?#%?txt#%?#%?'),
(31, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?a#%?txt#%?#%?txt#%?#%?'),
(2, 'compress', 'gz'),
(3, 'compress', 'gz'),
(6, 'allegato', '0'),
(7, 'allegato', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `costi2019`
--

CREATE TABLE `costi2019` (
  `idcosti` int(11) DEFAULT NULL,
  `nome_costo` text,
  `val_costo` double DEFAULT NULL,
  `tipo_costo` text,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `persona_costo` text,
  `provenienza_costo` text,
  `metodo_pagamento` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `costi2019`
--

INSERT INTO `costi2019` (`idcosti`, `nome_costo`, `val_costo`, `tipo_costo`, `nome_cassa`, `persona_costo`, `provenienza_costo`, `metodo_pagamento`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `costiprenota2019`
--

CREATE TABLE `costiprenota2019` (
  `idcostiprenota` int(11) NOT NULL,
  `idprenota` int(11) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `valore` double DEFAULT NULL,
  `valore_perc` double DEFAULT NULL,
  `arrotonda` float DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `associasett` varchar(1) DEFAULT NULL,
  `settimane` text,
  `moltiplica` text,
  `categoria` text,
  `letto` varchar(1) DEFAULT NULL,
  `cat_persone` text,
  `numlimite` int(11) DEFAULT NULL,
  `idntariffe` int(11) DEFAULT NULL,
  `variazione` varchar(10) DEFAULT NULL,
  `varmoltiplica` text,
  `varnumsett` varchar(20) DEFAULT NULL,
  `varperiodipermessi` text,
  `varbeniinv` text,
  `varappincompatibili` text,
  `vartariffeassociate` varchar(10) DEFAULT NULL,
  `vartariffeincomp` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `costiprenota2019`
--

INSERT INTO `costiprenota2019` (`idcostiprenota`, `idprenota`, `tipo`, `nome`, `valore`, `valore_perc`, `arrotonda`, `tasseperc`, `associasett`, `settimane`, `moltiplica`, `categoria`, `letto`, `cat_persone`, `numlimite`, `idntariffe`, `variazione`, `varmoltiplica`, `varnumsett`, `varperiodipermessi`, `varbeniinv`, `varappincompatibili`, `vartariffeassociate`, `vartariffeincomp`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `descrizioni`
--

CREATE TABLE `descrizioni` (
  `nome` text NOT NULL,
  `tipo` varchar(16) DEFAULT NULL,
  `lingua` varchar(3) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentiid`
--

CREATE TABLE `documentiid` (
  `iddocumentiid` int(11) NOT NULL,
  `nome_documentoid` varchar(70) DEFAULT NULL,
  `codice_documentoid` varchar(50) DEFAULT NULL,
  `codice2_documentoid` varchar(50) DEFAULT NULL,
  `codice3_documentoid` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gruppi`
--

CREATE TABLE `gruppi` (
  `idgruppi` int(11) NOT NULL,
  `nome_gruppo` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `interconnessioni`
--

CREATE TABLE `interconnessioni` (
  `idlocale` int(11) DEFAULT NULL,
  `idremoto1` text,
  `idremoto2` text,
  `tipoid` varchar(12) DEFAULT NULL,
  `nome_ic` varchar(24) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `magazzini`
--

CREATE TABLE `magazzini` (
  `idmagazzini` int(11) NOT NULL,
  `nome_magazzino` varchar(70) DEFAULT NULL,
  `codice_magazzino` varchar(50) DEFAULT NULL,
  `descrizione_magazzino` text,
  `numpiano` text,
  `numcasa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `messaggi`
--

CREATE TABLE `messaggi` (
  `idmessaggi` int(11) NOT NULL,
  `tipo_messaggio` varchar(8) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `idutenti` text,
  `idutenti_visto` text,
  `datavisione` datetime DEFAULT NULL,
  `mittente` text,
  `testo` text,
  `dati_messaggio1` text,
  `dati_messaggio2` text,
  `dati_messaggio3` text,
  `dati_messaggio4` text,
  `dati_messaggio5` text,
  `dati_messaggio6` text,
  `dati_messaggio7` text,
  `dati_messaggio8` text,
  `dati_messaggio9` text,
  `dati_messaggio10` text,
  `dati_messaggio11` text,
  `dati_messaggio12` text,
  `dati_messaggio13` text,
  `dati_messaggio14` text,
  `dati_messaggio15` text,
  `dati_messaggio16` text,
  `dati_messaggio17` text,
  `dati_messaggio18` text,
  `dati_messaggio19` text,
  `dati_messaggio20` text,
  `dati_messaggio21` text,
  `dati_messaggio22` text,
  `datainserimento` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `messaggi`
--

INSERT INTO `messaggi` (`idmessaggi`, `tipo_messaggio`, `stato`, `idutenti`, `idutenti_visto`, `datavisione`, `mittente`, `testo`, `dati_messaggio1`, `dati_messaggio2`, `dati_messaggio3`, `dati_messaggio4`, `dati_messaggio5`, `dati_messaggio6`, `dati_messaggio7`, `dati_messaggio8`, `dati_messaggio9`, `dati_messaggio10`, `dati_messaggio11`, `dati_messaggio12`, `dati_messaggio13`, `dati_messaggio14`, `dati_messaggio15`, `dati_messaggio16`, `dati_messaggio17`, `dati_messaggio18`, `dati_messaggio19`, `dati_messaggio20`, `dati_messaggio21`, `dati_messaggio22`, `datainserimento`) VALUES
(1, 'sistema', NULL, ',1,', ',1,', '2019-09-24 21:37:56', '1', '<div style=\"max-width: 600px; line-height: 1.1;\"><h4>Welcome to HotelDruid!</h4><br>These are some simple steps you can follow to set up the basic functionality of HotelDruid:<br>\n<ul style=\"line-height: 1.2;\">\n<li>Insert the information about the apartments from the\n <em><b><a href=\"./visualizza_tabelle.php?tipo_tabella=appartamenti&amp;<sessione>\">apartments table</a></b></em>, \n using the specific button below it. The apartments can be created, deleted and renamed. \n It is recommended to insert at least the maximum capacity for each apartment.<br><br></li>\n<li>Insert the number of rates, a name for each one of them and the corresponding prices from the \n <em><b><a href=\"./creaprezzi.php?<sessione>\">page to insert prices</a></b></em>.\n Consider that HotelDruid rates also act as apartment types (view next step).<br><br></li>\n<li>Assign a list of apartments to each rate, inserting an assignment rule 2 for each one of them, from the \n <em><b><a href=\"./crearegole.php?<sessione>#regola2\">page to insert rules</a></b></em>.\n Each apartment can be assigned to more than one rate.<br><br></li>\n<li>If this is a public web server you can enable the login and create new users from the\n <em><b><a href=\"./gestione_utenti.php?<sessione>\">users management page</a></b></em>.<br><br></li>\n<li>Go to the\n \"<em><b><a href=\"./personalizza.php?<sessione>\">configure and customize</a></b></em>\"\n page to change currency name, enable registration of check-in, insert payment methods, and set up much more options.<br><br></li>\n</ul></div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-24 21:37:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nazioni`
--

CREATE TABLE `nazioni` (
  `idnazioni` int(11) NOT NULL,
  `nome_nazione` varchar(70) DEFAULT NULL,
  `codice_nazione` varchar(50) DEFAULT NULL,
  `codice2_nazione` varchar(50) DEFAULT NULL,
  `codice3_nazione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nazioni`
--

INSERT INTO `nazioni` (`idnazioni`, `nome_nazione`, `codice_nazione`, `codice2_nazione`, `codice3_nazione`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Austria', '', 'AT', '', NULL, NULL, NULL),
(2, 'Belgium', '', 'BE', '', NULL, NULL, NULL),
(3, 'Czech Republic', '', 'CZ', '', NULL, NULL, NULL),
(4, 'Cyprus', '', 'CY', '', NULL, NULL, NULL),
(5, 'Denmark', '', 'DK', '', NULL, NULL, NULL),
(6, 'Estonia', '', 'EE', '', NULL, NULL, NULL),
(7, 'Finland', '', 'FI', '', NULL, NULL, NULL),
(8, 'France', '', 'FR', '', NULL, NULL, NULL),
(9, 'Germany', '', 'DE', '', NULL, NULL, NULL),
(10, 'Greece', '', 'GR', '', NULL, NULL, NULL),
(11, 'Ireland', '', 'IE', '', NULL, NULL, NULL),
(12, 'Latvia', '', 'LV', '', NULL, NULL, NULL),
(13, 'Lithuania', '', 'LT', '', NULL, NULL, NULL),
(14, 'Luxembourg', '', 'LU', '', NULL, NULL, NULL),
(15, 'Malta', '', 'MT', '', NULL, NULL, NULL),
(16, 'Netherlands', '', 'NL', '', NULL, NULL, NULL),
(17, 'Poland', '', 'PL', '', NULL, NULL, NULL),
(18, 'Portugal', '', 'PT', '', NULL, NULL, NULL),
(19, 'United Kingdom', '', 'GB', '', NULL, NULL, NULL),
(20, 'Slovakia', '', 'SK', '', NULL, NULL, NULL),
(21, 'Slovenia', '', 'SI', '', NULL, NULL, NULL),
(22, 'Spain', '', 'ES', '', NULL, NULL, NULL),
(23, 'Sweden', '', 'SE', '', NULL, NULL, NULL),
(24, 'Hungary', '', 'HU', '', NULL, NULL, NULL),
(25, 'Albania', '', 'AL', '', NULL, NULL, NULL),
(26, 'Andorra', '', 'AD', '', NULL, NULL, NULL),
(27, 'Belarus', '', 'BY', '', NULL, NULL, NULL),
(28, 'Bosnia And Herzegovina', '', 'BA', '', NULL, NULL, NULL),
(29, 'Bulgaria', '', 'BG', '', NULL, NULL, NULL),
(30, 'Croatia', '', 'HR', '', NULL, NULL, NULL),
(31, 'Iceland', '', 'IS', '', NULL, NULL, NULL),
(32, 'Liechtenstein', '', 'LI', '', NULL, NULL, NULL),
(33, 'Macedonia', '', 'MK', '', NULL, NULL, NULL),
(34, 'Moldova', '', 'MD', '', NULL, NULL, NULL),
(35, 'Monaco', '', 'MC', '', NULL, NULL, NULL),
(36, 'Montenegro', '', 'ME', '', NULL, NULL, NULL),
(37, 'Norway', '', 'NO', '', NULL, NULL, NULL),
(38, 'Romania', '', 'RO', '', NULL, NULL, NULL),
(39, 'Russia', '', 'RU', '', NULL, NULL, NULL),
(40, 'San Marino', '', 'SM', '', NULL, NULL, NULL),
(41, 'Vatican City', '', 'VA', '', NULL, NULL, NULL),
(42, 'Serbia', '', 'YU', '', NULL, NULL, NULL),
(43, 'Switzerland', '', 'CH', '', NULL, NULL, NULL),
(44, 'Turkey', '', 'TR', '', NULL, NULL, NULL),
(45, 'Ukraine', '', 'UA', '', NULL, NULL, NULL),
(46, 'Afghanistan', '', 'AF', '', NULL, NULL, NULL),
(47, 'Saudi Arabia', '', 'SA', '', NULL, NULL, NULL),
(48, 'Armenia', '', 'AM', '', NULL, NULL, NULL),
(49, 'Azerbaijan', '', 'AZ', '', NULL, NULL, NULL),
(50, 'Bahrein', '', 'BH', '', NULL, NULL, NULL),
(51, 'Bangladesh', '', 'BD', '', NULL, NULL, NULL),
(52, 'Bhutan', '', 'BT', '', NULL, NULL, NULL),
(53, 'Brunei', '', 'BN', '', NULL, NULL, NULL),
(54, 'Cambodia', '', 'KH', '', NULL, NULL, NULL),
(55, 'China', '', 'CN', '', NULL, NULL, NULL),
(56, 'South Korea', '', 'KR', '', NULL, NULL, NULL),
(57, 'North Korea', '', 'KP', '', NULL, NULL, NULL),
(58, 'United Arab Emirates', '', 'AE', '', NULL, NULL, NULL),
(59, 'Philippines', '', 'PH', '', NULL, NULL, NULL),
(60, 'Georgia', '', 'GE', '', NULL, NULL, NULL),
(61, 'Japan', '', 'JP', '', NULL, NULL, NULL),
(62, 'Jordan', '', 'JO', '', NULL, NULL, NULL),
(63, 'India', '', 'IN', '', NULL, NULL, NULL),
(64, 'Indonesia', '', 'ID', '', NULL, NULL, NULL),
(65, 'Iran', '', 'IR', '', NULL, NULL, NULL),
(66, 'Iraq', '', 'IQ', '', NULL, NULL, NULL),
(67, 'Israel', '', 'IL', '', NULL, NULL, NULL),
(68, 'Kazakhstan', '', 'KZ', '', NULL, NULL, NULL),
(69, 'Kyrgyzstan', '', 'KG', '', NULL, NULL, NULL),
(70, 'Kuwait', '', 'KW', '', NULL, NULL, NULL),
(71, 'Laos', '', 'LA', '', NULL, NULL, NULL),
(72, 'Lebanon', '', 'LB', '', NULL, NULL, NULL),
(73, 'Malaysia', '', 'MY', '', NULL, NULL, NULL),
(74, 'Maldives', '', 'MV', '', NULL, NULL, NULL),
(75, 'Mongolia', '', 'MN', '', NULL, NULL, NULL),
(76, 'Myanmar', '', 'MM', '', NULL, NULL, NULL),
(77, 'Nepal', '', 'NP', '', NULL, NULL, NULL),
(78, 'Oman', '', 'OM', '', NULL, NULL, NULL),
(79, 'Pakistan', '', 'PK', '', NULL, NULL, NULL),
(80, 'Qatar', '', 'QA', '', NULL, NULL, NULL),
(81, 'Singapore', '', 'SG', '', NULL, NULL, NULL),
(82, 'Syria', '', 'SY', '', NULL, NULL, NULL),
(83, 'Sri Lanka', '', 'LK', '', NULL, NULL, NULL),
(84, 'Tajikistan', '', 'TJ', '', NULL, NULL, NULL),
(85, 'Taiwan', '', 'TW', '', NULL, NULL, NULL),
(86, 'Palestine', '', 'PS', '', NULL, NULL, NULL),
(87, 'Thailand', '', 'TH', '', NULL, NULL, NULL),
(88, 'Timor-Leste', '', 'TL', '', NULL, NULL, NULL),
(89, 'Turkmenistan', '', 'TM', '', NULL, NULL, NULL),
(90, 'Uzbekistan', '', 'UZ', '', NULL, NULL, NULL),
(91, 'Vietnam', '', 'VN', '', NULL, NULL, NULL),
(92, 'Yemen', '', 'YE', '', NULL, NULL, NULL),
(93, 'Algeria', '', 'DZ', '', NULL, NULL, NULL),
(94, 'Angola', '', 'AO', '', NULL, NULL, NULL),
(95, 'Benin', '', 'BJ', '', NULL, NULL, NULL),
(96, 'Botswana', '', 'BW', '', NULL, NULL, NULL),
(97, 'Burkina Faso', '', 'BF', '', NULL, NULL, NULL),
(98, 'Burundi', '', 'BI', '', NULL, NULL, NULL),
(99, 'Cameroon', '', 'CM', '', NULL, NULL, NULL),
(100, 'Cape Verde', '', 'CV', '', NULL, NULL, NULL),
(101, 'Central African Republic', '', 'CF', '', NULL, NULL, NULL),
(102, 'Chad', '', 'TD', '', NULL, NULL, NULL),
(103, 'Comoros', '', 'KM', '', NULL, NULL, NULL),
(104, 'Republic Of Congo', '', 'CG', '', NULL, NULL, NULL),
(105, 'Dem. Rep. Of Congo', '', 'CD', '', NULL, NULL, NULL),
(106, 'Côte D\'Ivoire', '', 'CI', '', NULL, NULL, NULL),
(107, 'Egypt', '', 'EG', '', NULL, NULL, NULL),
(108, 'Eritrea', '', 'ER', '', NULL, NULL, NULL),
(109, 'Ethiopia', '', 'ET', '', NULL, NULL, NULL),
(110, 'Gabon', '', 'GA', '', NULL, NULL, NULL),
(111, 'Gambia', '', 'GM', '', NULL, NULL, NULL),
(112, 'Ghana', '', 'GH', '', NULL, NULL, NULL),
(113, 'Djibouti', '', 'DJ', '', NULL, NULL, NULL),
(114, 'Guinea', '', 'GN', '', NULL, NULL, NULL),
(115, 'Guinea-Bissau', '', 'GW', '', NULL, NULL, NULL),
(116, 'Equatorial Guinea', '', 'GQ', '', NULL, NULL, NULL),
(117, 'Kenya', '', 'KE', '', NULL, NULL, NULL),
(118, 'Lesotho', '', 'LS', '', NULL, NULL, NULL),
(119, 'Liberia', '', 'LR', '', NULL, NULL, NULL),
(120, 'Libya', '', 'LY', '', NULL, NULL, NULL),
(121, 'Madagascar', '', 'MG', '', NULL, NULL, NULL),
(122, 'Malawi', '', 'MW', '', NULL, NULL, NULL),
(123, 'Mali', '', 'ML', '', NULL, NULL, NULL),
(124, 'Morocco', '', 'MA', '', NULL, NULL, NULL),
(125, 'Mauritania', '', 'MR', '', NULL, NULL, NULL),
(126, 'Mauritius', '', 'MU', '', NULL, NULL, NULL),
(127, 'Mozambique', '', 'MZ', '', NULL, NULL, NULL),
(128, 'Namibia', '', 'NA', '', NULL, NULL, NULL),
(129, 'Niger', '', 'NE', '', NULL, NULL, NULL),
(130, 'Nigeria', '', 'NG', '', NULL, NULL, NULL),
(131, 'Rwanda', '', 'RW', '', NULL, NULL, NULL),
(132, 'São Tomé And Príncipe', '', 'ST', '', NULL, NULL, NULL),
(133, 'Senegal', '', 'SN', '', NULL, NULL, NULL),
(134, 'Seychelles', '', 'SC', '', NULL, NULL, NULL),
(135, 'Sierra Leone', '', 'SL', '', NULL, NULL, NULL),
(136, 'Somalia', '', 'SO', '', NULL, NULL, NULL),
(137, 'South Africa', '', 'ZA', '', NULL, NULL, NULL),
(138, 'Sudan', '', 'SD', '', NULL, NULL, NULL),
(139, 'Swaziland', '', 'SZ', '', NULL, NULL, NULL),
(140, 'Tanzania', '', 'TZ', '', NULL, NULL, NULL),
(141, 'Togo', '', 'TG', '', NULL, NULL, NULL),
(142, 'Tunisia', '', 'TN', '', NULL, NULL, NULL),
(143, 'Uganda', '', 'UG', '', NULL, NULL, NULL),
(144, 'Zambia', '', 'ZM', '', NULL, NULL, NULL),
(145, 'Zimbabwe', '', 'ZW', '', NULL, NULL, NULL),
(146, 'Antigua And Barbuda', '', 'AG', '', NULL, NULL, NULL),
(147, 'Argentina', '', 'AR', '', NULL, NULL, NULL),
(148, 'Bahamas', '', 'BS', '', NULL, NULL, NULL),
(149, 'Barbados', '', 'BB', '', NULL, NULL, NULL),
(150, 'Belize', '', 'BZ', '', NULL, NULL, NULL),
(151, 'Bolivia', '', 'BO', '', NULL, NULL, NULL),
(152, 'Brazil', '', 'BR', '', NULL, NULL, NULL),
(153, 'Canada', '', 'CA', '', NULL, NULL, NULL),
(154, 'Chile', '', 'CL', '', NULL, NULL, NULL),
(155, 'Colombia', '', 'CO', '', NULL, NULL, NULL),
(156, 'Costa Rica', '', 'CR', '', NULL, NULL, NULL),
(157, 'Cuba', '', 'CU', '', NULL, NULL, NULL),
(158, 'Dominica', '', 'DM', '', NULL, NULL, NULL),
(159, 'Dominican Republic', '', 'DO', '', NULL, NULL, NULL),
(160, 'Ecuador', '', 'EC', '', NULL, NULL, NULL),
(161, 'El Salvador', '', 'SV', '', NULL, NULL, NULL),
(162, 'Jamaica', '', 'JM', '', NULL, NULL, NULL),
(163, 'Grenada', '', 'GD', '', NULL, NULL, NULL),
(164, 'Guatemala', '', 'GT', '', NULL, NULL, NULL),
(165, 'Guyana', '', 'GY', '', NULL, NULL, NULL),
(166, 'Haiti', '', 'HT', '', NULL, NULL, NULL),
(167, 'Honduras', '', 'HN', '', NULL, NULL, NULL),
(168, 'Mexico', '', 'MX', '', NULL, NULL, NULL),
(169, 'Nicaragua', '', 'NI', '', NULL, NULL, NULL),
(170, 'Panama', '', 'PA', '', NULL, NULL, NULL),
(171, 'Paraguay', '', 'PY', '', NULL, NULL, NULL),
(172, 'Peru', '', 'PE', '', NULL, NULL, NULL),
(173, 'Saint Kitts And Nevis', '', 'KN', '', NULL, NULL, NULL),
(174, 'Saint Lucia', '', 'LC', '', NULL, NULL, NULL),
(175, 'Saint Vincent And Grenadines', '', 'VC', '', NULL, NULL, NULL),
(176, 'United States Of America', '', 'US', '', NULL, NULL, NULL),
(177, 'Suriname', '', 'SR', '', NULL, NULL, NULL),
(178, 'Trinidad And Tobago', '', 'TT', '', NULL, NULL, NULL),
(179, 'Uruguay', '', 'UY', '', NULL, NULL, NULL),
(180, 'Venezuela', '', 'VE', '', NULL, NULL, NULL),
(181, 'Australia', '', 'AU', '', NULL, NULL, NULL),
(182, 'Fiji', '', 'FJ', '', NULL, NULL, NULL),
(183, 'Kiribati', '', 'KI', '', NULL, NULL, NULL),
(184, 'Marshall Islands', '', 'MH', '', NULL, NULL, NULL),
(185, 'Micronesia', '', 'FM', '', NULL, NULL, NULL),
(186, 'Nauru', '', 'NR', '', NULL, NULL, NULL),
(187, 'New Zealand', '', 'NZ', '', NULL, NULL, NULL),
(188, 'Palau', '', 'PW', '', NULL, NULL, NULL),
(189, 'Papua New Guinea', '', 'PG', '', NULL, NULL, NULL),
(190, 'Solomon Islands', '', 'SB', '', NULL, NULL, NULL),
(191, 'Samoa', '', 'WS', '', NULL, NULL, NULL),
(192, 'Tonga', '', 'TO', '', NULL, NULL, NULL),
(193, 'Tuvalu', '', 'TV', '', NULL, NULL, NULL),
(194, 'Vanuatu', '', 'VU', '', NULL, NULL, NULL),
(195, 'Italy', '', 'IT', '', NULL, NULL, NULL),
(196, 'Kosovo', '', 'XK', '', NULL, NULL, NULL),
(197, 'South Sudan', '', 'SS', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ntariffe2019`
--

CREATE TABLE `ntariffe2019` (
  `idntariffe` int(11) DEFAULT NULL,
  `nomecostoagg` varchar(40) DEFAULT NULL,
  `tipo_ca` varchar(2) DEFAULT NULL,
  `valore_ca` double DEFAULT NULL,
  `valore_perc_ca` double DEFAULT NULL,
  `arrotonda_ca` float DEFAULT NULL,
  `tasseperc_ca` float DEFAULT NULL,
  `associasett_ca` varchar(1) DEFAULT NULL,
  `numsett_ca` varchar(20) DEFAULT NULL,
  `moltiplica_ca` text,
  `periodipermessi_ca` text,
  `beniinv_ca` text,
  `appincompatibili_ca` text,
  `variazione_ca` varchar(20) DEFAULT NULL,
  `mostra_ca` varchar(10) DEFAULT NULL,
  `categoria_ca` text,
  `letto_ca` varchar(1) DEFAULT NULL,
  `numlimite_ca` int(11) DEFAULT NULL,
  `regoleassegna_ca` varchar(30) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  `tariffa1` text,
  `tariffa2` text,
  `tariffa3` text,
  `tariffa4` text,
  `tariffa5` text,
  `tariffa6` text,
  `tariffa7` text,
  `tariffa8` text,
  `tariffa9` text,
  `tariffa10` text,
  `tariffa11` text,
  `tariffa12` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ntariffe2019`
--

INSERT INTO `ntariffe2019` (`idntariffe`, `nomecostoagg`, `tipo_ca`, `valore_ca`, `valore_perc_ca`, `arrotonda_ca`, `tasseperc_ca`, `associasett_ca`, `numsett_ca`, `moltiplica_ca`, `periodipermessi_ca`, `beniinv_ca`, `appincompatibili_ca`, `variazione_ca`, `mostra_ca`, `categoria_ca`, `letto_ca`, `numlimite_ca`, `regoleassegna_ca`, `utente_inserimento`, `tariffa1`, `tariffa2`, `tariffa3`, `tariffa4`, `tariffa5`, `tariffa6`, `tariffa7`, `tariffa8`, `tariffa9`, `tariffa10`, `tariffa11`, `tariffa12`) VALUES
(1, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parentele`
--

CREATE TABLE `parentele` (
  `idparentele` int(11) NOT NULL,
  `nome_parentela` varchar(70) DEFAULT NULL,
  `codice_parentela` varchar(50) DEFAULT NULL,
  `codice2_parentela` varchar(50) DEFAULT NULL,
  `codice3_parentela` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodi2019`
--

CREATE TABLE `periodi2019` (
  `idperiodi` int(11) NOT NULL,
  `datainizio` date NOT NULL,
  `datafine` date DEFAULT NULL,
  `tariffa1` double DEFAULT NULL,
  `tariffa1p` double DEFAULT NULL,
  `tariffa2` double DEFAULT NULL,
  `tariffa2p` double DEFAULT NULL,
  `tariffa3` double DEFAULT NULL,
  `tariffa3p` double DEFAULT NULL,
  `tariffa4` double DEFAULT NULL,
  `tariffa4p` double DEFAULT NULL,
  `tariffa5` double DEFAULT NULL,
  `tariffa5p` double DEFAULT NULL,
  `tariffa6` double DEFAULT NULL,
  `tariffa6p` double DEFAULT NULL,
  `tariffa7` double DEFAULT NULL,
  `tariffa7p` double DEFAULT NULL,
  `tariffa8` double DEFAULT NULL,
  `tariffa8p` double DEFAULT NULL,
  `tariffa9` double DEFAULT NULL,
  `tariffa9p` double DEFAULT NULL,
  `tariffa10` double DEFAULT NULL,
  `tariffa10p` double DEFAULT NULL,
  `tariffa11` double DEFAULT NULL,
  `tariffa11p` double DEFAULT NULL,
  `tariffa12` double DEFAULT NULL,
  `tariffa12p` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodi2019`
--

INSERT INTO `periodi2019` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(1, '2019-01-01', '2019-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-01-02', '2019-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-01-03', '2019-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-01-04', '2019-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-01-05', '2019-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-01-06', '2019-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2019-01-07', '2019-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2019-01-08', '2019-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-01-09', '2019-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-01-10', '2019-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-01-11', '2019-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-01-12', '2019-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-01-13', '2019-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-01-14', '2019-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-01-15', '2019-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-01-16', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-01-17', '2019-01-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2019-01-18', '2019-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2019-01-19', '2019-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2019-01-20', '2019-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2019-01-21', '2019-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2019-01-22', '2019-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2019-01-23', '2019-01-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2019-01-24', '2019-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2019-01-25', '2019-01-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2019-01-26', '2019-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2019-01-27', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2019-01-28', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2019-01-29', '2019-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2019-01-30', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2019-01-31', '2019-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2019-02-01', '2019-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2019-02-02', '2019-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2019-02-03', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2019-02-04', '2019-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2019-02-05', '2019-02-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2019-02-06', '2019-02-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2019-02-07', '2019-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2019-02-08', '2019-02-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2019-02-09', '2019-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2019-02-10', '2019-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2019-02-11', '2019-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2019-02-12', '2019-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2019-02-13', '2019-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2019-02-14', '2019-02-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2019-02-15', '2019-02-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2019-02-16', '2019-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2019-02-17', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2019-02-18', '2019-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2019-02-19', '2019-02-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2019-02-20', '2019-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2019-02-21', '2019-02-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2019-02-22', '2019-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2019-02-23', '2019-02-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2019-02-24', '2019-02-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2019-02-25', '2019-02-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2019-02-26', '2019-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2019-02-27', '2019-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2019-02-28', '2019-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2019-03-01', '2019-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2019-03-02', '2019-03-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2019-03-03', '2019-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2019-03-04', '2019-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2019-03-05', '2019-03-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2019-03-06', '2019-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2019-03-07', '2019-03-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2019-03-08', '2019-03-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2019-03-09', '2019-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2019-03-10', '2019-03-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2019-03-11', '2019-03-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2019-03-12', '2019-03-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2019-03-13', '2019-03-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2019-03-14', '2019-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2019-03-15', '2019-03-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2019-03-16', '2019-03-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2019-03-17', '2019-03-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2019-03-18', '2019-03-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2019-03-19', '2019-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2019-03-20', '2019-03-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2019-03-21', '2019-03-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2019-03-22', '2019-03-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2019-03-23', '2019-03-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2019-03-24', '2019-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2019-03-25', '2019-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2019-03-26', '2019-03-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2019-03-27', '2019-03-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2019-03-28', '2019-03-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2019-03-29', '2019-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2019-03-30', '2019-03-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2019-03-31', '2019-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2019-04-01', '2019-04-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2019-04-02', '2019-04-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2019-04-03', '2019-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2019-04-04', '2019-04-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2019-04-05', '2019-04-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2019-04-06', '2019-04-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2019-04-07', '2019-04-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2019-04-08', '2019-04-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2019-04-09', '2019-04-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2019-04-10', '2019-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2019-04-11', '2019-04-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2019-04-12', '2019-04-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2019-04-13', '2019-04-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2019-04-14', '2019-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2019-04-15', '2019-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2019-04-16', '2019-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2019-04-17', '2019-04-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2019-04-18', '2019-04-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2019-04-19', '2019-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2019-04-20', '2019-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2019-04-21', '2019-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2019-04-22', '2019-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2019-04-23', '2019-04-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2019-04-24', '2019-04-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2019-04-25', '2019-04-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2019-04-26', '2019-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2019-04-27', '2019-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2019-04-28', '2019-04-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2019-04-29', '2019-04-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2019-04-30', '2019-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2019-05-01', '2019-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2019-05-02', '2019-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2019-05-03', '2019-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2019-05-04', '2019-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2019-05-05', '2019-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2019-05-06', '2019-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2019-05-07', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2019-05-08', '2019-05-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2019-05-09', '2019-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2019-05-10', '2019-05-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2019-05-11', '2019-05-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2019-05-12', '2019-05-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2019-05-13', '2019-05-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2019-05-14', '2019-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2019-05-15', '2019-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2019-05-16', '2019-05-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2019-05-17', '2019-05-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2019-05-18', '2019-05-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2019-05-19', '2019-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2019-05-20', '2019-05-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2019-05-21', '2019-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2019-05-22', '2019-05-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2019-05-23', '2019-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2019-05-24', '2019-05-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2019-05-25', '2019-05-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2019-05-26', '2019-05-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2019-05-27', '2019-05-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2019-05-28', '2019-05-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2019-05-29', '2019-05-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2019-05-30', '2019-05-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2019-05-31', '2019-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2019-06-01', '2019-06-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2019-06-02', '2019-06-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2019-06-03', '2019-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2019-06-04', '2019-06-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2019-06-05', '2019-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2019-06-06', '2019-06-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2019-06-07', '2019-06-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2019-06-08', '2019-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2019-06-09', '2019-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2019-06-10', '2019-06-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2019-06-11', '2019-06-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2019-06-12', '2019-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2019-06-13', '2019-06-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2019-06-14', '2019-06-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2019-06-15', '2019-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2019-06-16', '2019-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2019-06-17', '2019-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2019-06-18', '2019-06-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2019-06-19', '2019-06-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2019-06-20', '2019-06-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2019-06-21', '2019-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2019-06-22', '2019-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2019-06-23', '2019-06-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2019-06-24', '2019-06-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2019-06-25', '2019-06-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2019-06-26', '2019-06-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2019-06-27', '2019-06-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2019-06-28', '2019-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2019-06-29', '2019-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2019-06-30', '2019-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2019-07-01', '2019-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2019-07-02', '2019-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2019-07-03', '2019-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2019-07-04', '2019-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2019-07-05', '2019-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2019-07-06', '2019-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2019-07-07', '2019-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2019-07-08', '2019-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2019-07-09', '2019-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2019-07-10', '2019-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2019-07-11', '2019-07-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2019-07-12', '2019-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2019-07-13', '2019-07-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2019-07-14', '2019-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2019-07-15', '2019-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2019-07-16', '2019-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2019-07-17', '2019-07-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2019-07-18', '2019-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2019-07-19', '2019-07-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2019-07-20', '2019-07-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2019-07-21', '2019-07-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2019-07-22', '2019-07-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2019-07-23', '2019-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2019-07-24', '2019-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2019-07-25', '2019-07-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2019-07-26', '2019-07-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2019-07-27', '2019-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2019-07-28', '2019-07-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2019-07-29', '2019-07-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2019-07-30', '2019-07-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2019-07-31', '2019-08-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2019-08-01', '2019-08-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2019-08-02', '2019-08-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2019-08-03', '2019-08-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2019-08-04', '2019-08-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2019-08-05', '2019-08-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2019-08-06', '2019-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2019-08-07', '2019-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2019-08-08', '2019-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2019-08-09', '2019-08-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2019-08-10', '2019-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2019-08-11', '2019-08-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2019-08-12', '2019-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2019-08-13', '2019-08-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2019-08-14', '2019-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2019-08-15', '2019-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2019-08-16', '2019-08-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2019-08-17', '2019-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2019-08-18', '2019-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2019-08-19', '2019-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2019-08-20', '2019-08-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2019-08-21', '2019-08-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2019-08-22', '2019-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2019-08-23', '2019-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2019-08-24', '2019-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2019-08-25', '2019-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2019-08-26', '2019-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2019-08-27', '2019-08-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2019-08-28', '2019-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2019-08-29', '2019-08-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2019-08-30', '2019-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2019-08-31', '2019-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2019-09-01', '2019-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2019-09-02', '2019-09-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2019-09-03', '2019-09-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2019-09-04', '2019-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2019-09-05', '2019-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2019-09-06', '2019-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2019-09-07', '2019-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2019-09-08', '2019-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2019-09-09', '2019-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2019-09-10', '2019-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2019-09-11', '2019-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2019-09-12', '2019-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2019-09-13', '2019-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2019-09-14', '2019-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2019-09-15', '2019-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2019-09-16', '2019-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2019-09-17', '2019-09-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2019-09-18', '2019-09-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2019-09-19', '2019-09-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2019-09-20', '2019-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2019-09-21', '2019-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2019-09-22', '2019-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2019-09-23', '2019-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2019-09-24', '2019-09-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2019-09-25', '2019-09-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2019-09-26', '2019-09-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2019-09-27', '2019-09-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2019-09-28', '2019-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2019-09-29', '2019-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2019-09-30', '2019-10-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2019-10-01', '2019-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2019-10-02', '2019-10-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2019-10-03', '2019-10-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2019-10-04', '2019-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2019-10-05', '2019-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2019-10-06', '2019-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2019-10-07', '2019-10-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `periodi2019` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(281, '2019-10-08', '2019-10-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2019-10-09', '2019-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2019-10-10', '2019-10-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2019-10-11', '2019-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2019-10-12', '2019-10-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '2019-10-13', '2019-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2019-10-14', '2019-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2019-10-15', '2019-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2019-10-16', '2019-10-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '2019-10-17', '2019-10-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2019-10-18', '2019-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2019-10-19', '2019-10-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '2019-10-20', '2019-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '2019-10-21', '2019-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '2019-10-22', '2019-10-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '2019-10-23', '2019-10-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '2019-10-24', '2019-10-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '2019-10-25', '2019-10-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '2019-10-26', '2019-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '2019-10-27', '2019-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '2019-10-28', '2019-10-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '2019-10-29', '2019-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '2019-10-30', '2019-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '2019-10-31', '2019-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '2019-11-01', '2019-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '2019-11-02', '2019-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '2019-11-03', '2019-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '2019-11-04', '2019-11-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '2019-11-05', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '2019-11-06', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '2019-11-07', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '2019-11-08', '2019-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '2019-11-09', '2019-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '2019-11-10', '2019-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '2019-11-11', '2019-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '2019-11-12', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '2019-11-13', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '2019-11-14', '2019-11-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '2019-11-15', '2019-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '2019-11-16', '2019-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '2019-11-17', '2019-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '2019-11-18', '2019-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2019-11-19', '2019-11-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2019-11-20', '2019-11-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2019-11-21', '2019-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2019-11-22', '2019-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2019-11-23', '2019-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2019-11-24', '2019-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2019-11-25', '2019-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2019-11-26', '2019-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2019-11-27', '2019-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2019-11-28', '2019-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2019-11-29', '2019-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2019-11-30', '2019-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2019-12-01', '2019-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2019-12-02', '2019-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2019-12-03', '2019-12-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '2019-12-04', '2019-12-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2019-12-05', '2019-12-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2019-12-06', '2019-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2019-12-07', '2019-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2019-12-08', '2019-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '2019-12-09', '2019-12-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2019-12-10', '2019-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2019-12-11', '2019-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2019-12-12', '2019-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2019-12-13', '2019-12-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2019-12-14', '2019-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2019-12-15', '2019-12-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2019-12-16', '2019-12-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2019-12-17', '2019-12-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2019-12-18', '2019-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2019-12-19', '2019-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2019-12-20', '2019-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2019-12-21', '2019-12-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '2019-12-22', '2019-12-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '2019-12-23', '2019-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '2019-12-24', '2019-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '2019-12-25', '2019-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '2019-12-26', '2019-12-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '2019-12-27', '2019-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '2019-12-28', '2019-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '2019-12-29', '2019-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '2019-12-30', '2019-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '2019-12-31', '2020-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '2020-01-01', '2020-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '2020-01-02', '2020-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '2020-01-03', '2020-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '2020-01-04', '2020-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '2020-01-05', '2020-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '2020-01-06', '2020-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '2020-01-07', '2020-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '2020-01-08', '2020-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '2020-01-09', '2020-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '2020-01-10', '2020-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '2020-01-11', '2020-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '2020-01-12', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '2020-01-13', '2020-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '2020-01-14', '2020-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '2020-01-15', '2020-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '2020-01-16', '2020-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '2020-01-17', '2020-01-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '2020-01-18', '2020-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '2020-01-19', '2020-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '2020-01-20', '2020-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '2020-01-21', '2020-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '2020-01-22', '2020-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '2020-01-23', '2020-01-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '2020-01-24', '2020-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '2020-01-25', '2020-01-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '2020-01-26', '2020-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '2020-01-27', '2020-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '2020-01-28', '2020-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '2020-01-29', '2020-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '2020-01-30', '2020-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '2020-01-31', '2020-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '2020-02-01', '2020-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '2020-02-02', '2020-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '2020-02-03', '2020-02-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '2020-02-04', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, '2020-02-05', '2020-02-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '2020-02-06', '2020-02-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, '2020-02-07', '2020-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, '2020-02-08', '2020-02-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, '2020-02-09', '2020-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, '2020-02-10', '2020-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, '2020-02-11', '2020-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '2020-02-12', '2020-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '2020-02-13', '2020-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '2020-02-14', '2020-02-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '2020-02-15', '2020-02-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, '2020-02-16', '2020-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, '2020-02-17', '2020-02-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, '2020-02-18', '2020-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, '2020-02-19', '2020-02-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, '2020-02-20', '2020-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, '2020-02-21', '2020-02-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, '2020-02-22', '2020-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, '2020-02-23', '2020-02-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, '2020-02-24', '2020-02-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, '2020-02-25', '2020-02-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, '2020-02-26', '2020-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, '2020-02-27', '2020-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, '2020-02-28', '2020-02-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, '2020-02-29', '2020-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, '2020-03-01', '2020-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, '2020-03-02', '2020-03-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, '2020-03-03', '2020-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, '2020-03-04', '2020-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, '2020-03-05', '2020-03-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, '2020-03-06', '2020-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, '2020-03-07', '2020-03-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, '2020-03-08', '2020-03-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, '2020-03-09', '2020-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, '2020-03-10', '2020-03-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, '2020-03-11', '2020-03-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, '2020-03-12', '2020-03-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, '2020-03-13', '2020-03-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, '2020-03-14', '2020-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, '2020-03-15', '2020-03-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, '2020-03-16', '2020-03-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, '2020-03-17', '2020-03-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, '2020-03-18', '2020-03-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, '2020-03-19', '2020-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, '2020-03-20', '2020-03-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, '2020-03-21', '2020-03-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, '2020-03-22', '2020-03-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, '2020-03-23', '2020-03-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, '2020-03-24', '2020-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, '2020-03-25', '2020-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, '2020-03-26', '2020-03-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, '2020-03-27', '2020-03-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, '2020-03-28', '2020-03-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, '2020-03-29', '2020-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, '2020-03-30', '2020-03-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, '2020-03-31', '2020-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, '2020-04-01', '2020-04-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, '2020-04-02', '2020-04-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, '2020-04-03', '2020-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, '2020-04-04', '2020-04-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, '2020-04-05', '2020-04-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, '2020-04-06', '2020-04-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, '2020-04-07', '2020-04-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, '2020-04-08', '2020-04-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, '2020-04-09', '2020-04-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, '2020-04-10', '2020-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, '2020-04-11', '2020-04-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, '2020-04-12', '2020-04-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, '2020-04-13', '2020-04-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, '2020-04-14', '2020-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, '2020-04-15', '2020-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, '2020-04-16', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, '2020-04-17', '2020-04-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, '2020-04-18', '2020-04-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, '2020-04-19', '2020-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, '2020-04-20', '2020-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '2020-04-21', '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, '2020-04-22', '2020-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, '2020-04-23', '2020-04-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, '2020-04-24', '2020-04-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, '2020-04-25', '2020-04-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, '2020-04-26', '2020-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, '2020-04-27', '2020-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, '2020-04-28', '2020-04-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, '2020-04-29', '2020-04-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, '2020-04-30', '2020-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, '2020-05-01', '2020-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, '2020-05-02', '2020-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, '2020-05-03', '2020-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '2020-05-04', '2020-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, '2020-05-05', '2020-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, '2020-05-06', '2020-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, '2020-05-07', '2020-05-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, '2020-05-08', '2020-05-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, '2020-05-09', '2020-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, '2020-05-10', '2020-05-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, '2020-05-11', '2020-05-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, '2020-05-12', '2020-05-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, '2020-05-13', '2020-05-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, '2020-05-14', '2020-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, '2020-05-15', '2020-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, '2020-05-16', '2020-05-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, '2020-05-17', '2020-05-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, '2020-05-18', '2020-05-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, '2020-05-19', '2020-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, '2020-05-20', '2020-05-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, '2020-05-21', '2020-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '2020-05-22', '2020-05-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '2020-05-23', '2020-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '2020-05-24', '2020-05-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, '2020-05-25', '2020-05-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, '2020-05-26', '2020-05-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, '2020-05-27', '2020-05-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, '2020-05-28', '2020-05-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, '2020-05-29', '2020-05-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, '2020-05-30', '2020-05-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, '2020-05-31', '2020-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, '2020-06-01', '2020-06-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, '2020-06-02', '2020-06-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, '2020-06-03', '2020-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, '2020-06-04', '2020-06-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, '2020-06-05', '2020-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, '2020-06-06', '2020-06-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, '2020-06-07', '2020-06-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, '2020-06-08', '2020-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, '2020-06-09', '2020-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '2020-06-10', '2020-06-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, '2020-06-11', '2020-06-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, '2020-06-12', '2020-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '2020-06-13', '2020-06-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '2020-06-14', '2020-06-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, '2020-06-15', '2020-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '2020-06-16', '2020-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, '2020-06-17', '2020-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, '2020-06-18', '2020-06-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '2020-06-19', '2020-06-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, '2020-06-20', '2020-06-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, '2020-06-21', '2020-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, '2020-06-22', '2020-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, '2020-06-23', '2020-06-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, '2020-06-24', '2020-06-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, '2020-06-25', '2020-06-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, '2020-06-26', '2020-06-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, '2020-06-27', '2020-06-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '2020-06-28', '2020-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '2020-06-29', '2020-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, '2020-06-30', '2020-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, '2020-07-01', '2020-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, '2020-07-02', '2020-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, '2020-07-03', '2020-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '2020-07-04', '2020-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '2020-07-05', '2020-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, '2020-07-06', '2020-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '2020-07-07', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, '2020-07-08', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, '2020-07-09', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, '2020-07-10', '2020-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, '2020-07-11', '2020-07-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, '2020-07-12', '2020-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, '2020-07-13', '2020-07-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `periodi2019` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(561, '2020-07-14', '2020-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, '2020-07-15', '2020-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, '2020-07-16', '2020-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, '2020-07-17', '2020-07-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, '2020-07-18', '2020-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, '2020-07-19', '2020-07-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, '2020-07-20', '2020-07-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, '2020-07-21', '2020-07-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, '2020-07-22', '2020-07-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, '2020-07-23', '2020-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, '2020-07-24', '2020-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, '2020-07-25', '2020-07-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, '2020-07-26', '2020-07-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, '2020-07-27', '2020-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '2020-07-28', '2020-07-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, '2020-07-29', '2020-07-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, '2020-07-30', '2020-07-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, '2020-07-31', '2020-08-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, '2020-08-01', '2020-08-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, '2020-08-02', '2020-08-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, '2020-08-03', '2020-08-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, '2020-08-04', '2020-08-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, '2020-08-05', '2020-08-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, '2020-08-06', '2020-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, '2020-08-07', '2020-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, '2020-08-08', '2020-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, '2020-08-09', '2020-08-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, '2020-08-10', '2020-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, '2020-08-11', '2020-08-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, '2020-08-12', '2020-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, '2020-08-13', '2020-08-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, '2020-08-14', '2020-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, '2020-08-15', '2020-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, '2020-08-16', '2020-08-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, '2020-08-17', '2020-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, '2020-08-18', '2020-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, '2020-08-19', '2020-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, '2020-08-20', '2020-08-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, '2020-08-21', '2020-08-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, '2020-08-22', '2020-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, '2020-08-23', '2020-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, '2020-08-24', '2020-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, '2020-08-25', '2020-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, '2020-08-26', '2020-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, '2020-08-27', '2020-08-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, '2020-08-28', '2020-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, '2020-08-29', '2020-08-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, '2020-08-30', '2020-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, '2020-08-31', '2020-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, '2020-09-01', '2020-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, '2020-09-02', '2020-09-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, '2020-09-03', '2020-09-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, '2020-09-04', '2020-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, '2020-09-05', '2020-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, '2020-09-06', '2020-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, '2020-09-07', '2020-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, '2020-09-08', '2020-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, '2020-09-09', '2020-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, '2020-09-10', '2020-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, '2020-09-11', '2020-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, '2020-09-12', '2020-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, '2020-09-13', '2020-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, '2020-09-14', '2020-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, '2020-09-15', '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, '2020-09-16', '2020-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, '2020-09-17', '2020-09-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, '2020-09-18', '2020-09-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, '2020-09-19', '2020-09-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, '2020-09-20', '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, '2020-09-21', '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, '2020-09-22', '2020-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, '2020-09-23', '2020-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, '2020-09-24', '2020-09-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, '2020-09-25', '2020-09-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, '2020-09-26', '2020-09-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, '2020-09-27', '2020-09-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, '2020-09-28', '2020-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, '2020-09-29', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, '2020-09-30', '2020-10-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, '2020-10-01', '2020-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, '2020-10-02', '2020-10-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, '2020-10-03', '2020-10-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, '2020-10-04', '2020-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, '2020-10-05', '2020-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, '2020-10-06', '2020-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, '2020-10-07', '2020-10-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, '2020-10-08', '2020-10-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, '2020-10-09', '2020-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, '2020-10-10', '2020-10-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, '2020-10-11', '2020-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, '2020-10-12', '2020-10-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, '2020-10-13', '2020-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, '2020-10-14', '2020-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, '2020-10-15', '2020-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, '2020-10-16', '2020-10-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, '2020-10-17', '2020-10-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, '2020-10-18', '2020-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, '2020-10-19', '2020-10-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, '2020-10-20', '2020-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, '2020-10-21', '2020-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, '2020-10-22', '2020-10-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, '2020-10-23', '2020-10-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, '2020-10-24', '2020-10-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, '2020-10-25', '2020-10-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, '2020-10-26', '2020-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, '2020-10-27', '2020-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, '2020-10-28', '2020-10-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, '2020-10-29', '2020-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, '2020-10-30', '2020-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, '2020-10-31', '2020-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, '2020-11-01', '2020-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, '2020-11-02', '2020-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, '2020-11-03', '2020-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, '2020-11-04', '2020-11-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, '2020-11-05', '2020-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, '2020-11-06', '2020-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, '2020-11-07', '2020-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, '2020-11-08', '2020-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, '2020-11-09', '2020-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, '2020-11-10', '2020-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, '2020-11-11', '2020-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, '2020-11-12', '2020-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, '2020-11-13', '2020-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, '2020-11-14', '2020-11-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, '2020-11-15', '2020-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, '2020-11-16', '2020-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, '2020-11-17', '2020-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, '2020-11-18', '2020-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, '2020-11-19', '2020-11-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, '2020-11-20', '2020-11-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, '2020-11-21', '2020-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, '2020-11-22', '2020-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, '2020-11-23', '2020-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, '2020-11-24', '2020-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, '2020-11-25', '2020-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, '2020-11-26', '2020-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, '2020-11-27', '2020-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, '2020-11-28', '2020-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, '2020-11-29', '2020-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, '2020-11-30', '2020-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, '2020-12-01', '2020-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, '2020-12-02', '2020-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, '2020-12-03', '2020-12-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, '2020-12-04', '2020-12-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, '2020-12-05', '2020-12-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, '2020-12-06', '2020-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, '2020-12-07', '2020-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, '2020-12-08', '2020-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, '2020-12-09', '2020-12-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, '2020-12-10', '2020-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, '2020-12-11', '2020-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, '2020-12-12', '2020-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, '2020-12-13', '2020-12-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, '2020-12-14', '2020-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, '2020-12-15', '2020-12-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, '2020-12-16', '2020-12-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, '2020-12-17', '2020-12-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, '2020-12-18', '2020-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, '2020-12-19', '2020-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, '2020-12-20', '2020-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, '2020-12-21', '2020-12-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, '2020-12-22', '2020-12-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, '2020-12-23', '2020-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, '2020-12-24', '2020-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, '2020-12-25', '2020-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, '2020-12-26', '2020-12-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, '2020-12-27', '2020-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, '2020-12-28', '2020-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, '2020-12-29', '2020-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, '2020-12-30', '2020-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, '2020-12-31', '2021-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personalizza`
--

CREATE TABLE `personalizza` (
  `idpersonalizza` varchar(50) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `valpersonalizza` text,
  `valpersonalizza_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `personalizza`
--

INSERT INTO `personalizza` (`idpersonalizza`, `idutente`, `valpersonalizza`, `valpersonalizza_num`) VALUES
('col_tab_tutte_prenota', 1, 'nu#@&cg#@&in#@&fi#@&tc#@&ca#@&pa#@&ap#@&pe#@&co', NULL),
('rig_tab_tutte_prenota', 1, 'to#@&ta#@&ca#@&pc', NULL),
('maschera_email', 1, 'NO', NULL),
('dati_struttura', 1, '#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&', NULL),
('valuta', 1, 'Euros', NULL),
('arrotond_predef', 1, '1', NULL),
('arrotond_tasse', 1, '0.01', NULL),
('stile_soldi', 1, 'usa', NULL),
('costi_agg_in_tab_prenota', 1, '', NULL),
('aggiunta_tronca_nomi_tab1', 1, NULL, -2),
('linee_ripeti_date_tab_mesi', 1, NULL, 25),
('mostra_giorni_tab_mesi', 1, 'SI', NULL),
('colori_tab_mesi', 1, '#70C6D4,#FFD800,#FF9900,#FF3115', NULL),
('num_linee_tab2_prenota', 1, NULL, 30),
('nomi_contratti', 1, '1#?&Example#@&2#?&Invoice#@&3#?&Invoice - rtf#@&4#?&Last payment receipt#@&6#?&Availability email#@&7#?&Confirm reservation email#@&8#?&Cleaning Report#@&9#?&Export clients data#@&5#?&Receipt - rtf', NULL),
('num_righe_tab_tutte_prenota', 1, NULL, 200),
('selezione_tab_tutte_prenota', 1, 'tutte', NULL),
('num_righe_tab_tutti_clienti', 1, NULL, 200),
('num_righe_tab_casse', 1, NULL, 50),
('tot_giornalero_tab_casse', 1, 'gior,mens,tab', NULL),
('num_righe_tab_messaggi', 1, NULL, 80),
('num_righe_tab_doc_salvati', 1, NULL, 100),
('num_righe_tab_storia_soldi', 1, NULL, 200),
('stile_data', 1, 'europa', NULL),
('num_categorie_persone', 1, NULL, 1),
('minuti_durata_sessione', 1, NULL, 90),
('minuti_durata_insprenota', 1, NULL, 10),
('ore_anticipa_periodo_corrente', 1, NULL, 0),
('tutti_fissi', 1, '10', NULL),
('auto_crea_anno', 1, 'SI', NULL),
('metodi_pagamento', 1, '', NULL),
('origini_prenota', 1, '', NULL),
('attiva_checkin', 1, 'NO', NULL),
('mostra_quadro_disp', 1, 'reg2', NULL),
('ultime_sel_ins_prezzi', 1, '', NULL),
('subordinazione', 1, 'NO', NULL),
('percorso_cartella_modello', 1, './dati', NULL),
('gest_cvc', 1, 'NO', NULL),
('ordine_inventario', 1, 'alf', NULL),
('tasti_pos', 1, 'x2;x10;s;+1;+2;+3;+4;+5;+6;+7;+8;+9;s;-1', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prenota2019`
--

CREATE TABLE `prenota2019` (
  `idprenota` int(11) NOT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `idappartamenti` varchar(100) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `assegnazioneapp` varchar(4) DEFAULT NULL,
  `app_assegnabili` text,
  `num_persone` int(11) DEFAULT NULL,
  `cat_persone` text,
  `idprenota_compagna` text,
  `tariffa` text,
  `tariffesettimanali` text,
  `incompatibilita` text,
  `sconto` double DEFAULT NULL,
  `tariffa_tot` double DEFAULT NULL,
  `caparra` double DEFAULT NULL,
  `commissioni` double DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `pagato` double DEFAULT NULL,
  `metodo_pagamento` text,
  `codice` varchar(10) DEFAULT NULL,
  `origine` varchar(70) DEFAULT NULL,
  `commento` text,
  `conferma` varchar(4) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `id_anni_prec` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `data_modifica` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `privilegi`
--

CREATE TABLE `privilegi` (
  `idutente` int(11) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `regole1_consentite` text,
  `tariffe_consentite` text,
  `costi_agg_consentiti` text,
  `contratti_consentiti` text,
  `casse_consentite` text,
  `cassa_pagamenti` varchar(70) DEFAULT NULL,
  `priv_ins_prenota` varchar(20) DEFAULT NULL,
  `priv_mod_prenota` varchar(35) DEFAULT NULL,
  `priv_mod_pers` varchar(15) DEFAULT NULL,
  `priv_ins_clienti` varchar(5) DEFAULT NULL,
  `prefisso_clienti` text,
  `priv_ins_costi` varchar(10) DEFAULT NULL,
  `priv_vedi_tab` varchar(30) DEFAULT NULL,
  `priv_ins_tariffe` varchar(10) DEFAULT NULL,
  `priv_ins_regole` varchar(10) DEFAULT NULL,
  `priv_messaggi` varchar(10) DEFAULT NULL,
  `priv_inventario` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rclientiprenota2019`
--

CREATE TABLE `rclientiprenota2019` (
  `idprenota` int(11) DEFAULT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `num_ordine` int(11) DEFAULT NULL,
  `parentela` varchar(70) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regioni`
--

CREATE TABLE `regioni` (
  `idregioni` int(11) NOT NULL,
  `nome_regione` varchar(70) DEFAULT NULL,
  `codice_regione` varchar(50) DEFAULT NULL,
  `codice2_regione` varchar(50) DEFAULT NULL,
  `codice3_regione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regole2019`
--

CREATE TABLE `regole2019` (
  `idregole` int(11) DEFAULT NULL,
  `app_agenzia` varchar(100) DEFAULT NULL,
  `tariffa_chiusa` text,
  `tariffa_per_app` text,
  `tariffa_per_utente` text,
  `tariffa_per_persone` text,
  `tariffa_commissioni` int(11) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `motivazione` text,
  `motivazione2` text,
  `motivazione3` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relclienti`
--

CREATE TABLE `relclienti` (
  `idclienti` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(12) DEFAULT NULL,
  `testo1` text,
  `testo2` text,
  `testo3` text,
  `testo4` text,
  `testo5` text,
  `testo6` text,
  `testo7` text,
  `testo8` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relgruppi`
--

CREATE TABLE `relgruppi` (
  `idutente` int(11) NOT NULL,
  `idgruppo` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relinventario`
--

CREATE TABLE `relinventario` (
  `idbeneinventario` int(11) NOT NULL,
  `idappartamento` varchar(100) DEFAULT NULL,
  `idmagazzino` int(11) DEFAULT NULL,
  `quantita` int(11) DEFAULT NULL,
  `quantita_min_predef` int(11) DEFAULT NULL,
  `richiesto_checkin` varchar(2) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relutenti`
--

CREATE TABLE `relutenti` (
  `idutente` int(11) NOT NULL,
  `idnazione` int(11) DEFAULT NULL,
  `idregione` int(11) DEFAULT NULL,
  `idcitta` int(11) DEFAULT NULL,
  `iddocumentoid` int(11) DEFAULT NULL,
  `idparentela` int(11) DEFAULT NULL,
  `idsup` int(11) DEFAULT NULL,
  `predef` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `relutenti`
--

INSERT INTO `relutenti` (`idutente`, `idnazione`, `idregione`, `idcitta`, `iddocumentoid`, `idparentela`, `idsup`, `predef`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessioni`
--

CREATE TABLE `sessioni` (
  `idsessioni` varchar(30) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `indirizzo_ip` text,
  `tipo_conn` varchar(12) DEFAULT NULL,
  `user_agent` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soldi2019`
--

CREATE TABLE `soldi2019` (
  `idsoldi` int(11) DEFAULT NULL,
  `motivazione` text,
  `id_pagamento` text,
  `metodo_pagamento` text,
  `saldo_prenota` double DEFAULT NULL,
  `saldo_cassa` double DEFAULT NULL,
  `soldi_prima` double DEFAULT NULL,
  `data_inserimento` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soldi2019`
--

INSERT INTO `soldi2019` (`idsoldi`, `motivazione`, `id_pagamento`, `metodo_pagamento`, `saldo_prenota`, `saldo_cassa`, `soldi_prima`, `data_inserimento`, `utente_inserimento`) VALUES
(1, 'soldi_prenotazioni_cancellate', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transazioni`
--

CREATE TABLE `transazioni` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `dati_transazione21` text,
  `dati_transazione22` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transazioniweb`
--

CREATE TABLE `transazioniweb` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `dati_transazione21` text,
  `dati_transazione22` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `transazioniweb`
--

INSERT INTO `transazioniweb` (`idtransazioni`, `idsessione`, `tipo_transazione`, `anno`, `spostamenti`, `dati_transazione1`, `dati_transazione2`, `dati_transazione3`, `dati_transazione4`, `dati_transazione5`, `dati_transazione6`, `dati_transazione7`, `dati_transazione8`, `dati_transazione9`, `dati_transazione10`, `dati_transazione11`, `dati_transazione12`, `dati_transazione13`, `dati_transazione14`, `dati_transazione15`, `dati_transazione16`, `dati_transazione17`, `dati_transazione18`, `dati_transazione19`, `dati_transazione20`, `dati_transazione21`, `dati_transazione22`, `ultimo_accesso`) VALUES
('2', NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utenti`
--

CREATE TABLE `utenti` (
  `idutenti` int(11) NOT NULL,
  `nome_utente` text,
  `password` text,
  `salt` text,
  `tipo_pass` varchar(1) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `utenti`
--

INSERT INTO `utenti` (`idutenti`, `nome_utente`, `password`, `salt`, `tipo_pass`, `datainserimento`, `hostinserimento`) VALUES
(1, 'admin', NULL, NULL, 'n', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `versioni`
--

CREATE TABLE `versioni` (
  `idversioni` int(11) NOT NULL,
  `num_versione` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `versioni`
--

INSERT INTO `versioni` (`idversioni`, `num_versione`) VALUES
(1, 2.32),
(2, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anni`
--
ALTER TABLE `anni`
  ADD PRIMARY KEY (`idanni`);

--
-- Indexes for table `appartamenti`
--
ALTER TABLE `appartamenti`
  ADD PRIMARY KEY (`idappartamenti`);

--
-- Indexes for table `beniinventario`
--
ALTER TABLE `beniinventario`
  ADD PRIMARY KEY (`idbeniinventario`);

--
-- Indexes for table `casse`
--
ALTER TABLE `casse`
  ADD PRIMARY KEY (`idcasse`);

--
-- Indexes for table `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`idcitta`);

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`idclienti`);

--
-- Indexes for table `costi2019`
--
ALTER TABLE `costi2019`
  ADD UNIQUE KEY `idcosti` (`idcosti`);

--
-- Indexes for table `costiprenota2019`
--
ALTER TABLE `costiprenota2019`
  ADD PRIMARY KEY (`idcostiprenota`),
  ADD KEY `iidpcostiprenota2019` (`idprenota`);

--
-- Indexes for table `documentiid`
--
ALTER TABLE `documentiid`
  ADD PRIMARY KEY (`iddocumentiid`);

--
-- Indexes for table `gruppi`
--
ALTER TABLE `gruppi`
  ADD PRIMARY KEY (`idgruppi`);

--
-- Indexes for table `magazzini`
--
ALTER TABLE `magazzini`
  ADD PRIMARY KEY (`idmagazzini`);

--
-- Indexes for table `messaggi`
--
ALTER TABLE `messaggi`
  ADD PRIMARY KEY (`idmessaggi`);

--
-- Indexes for table `nazioni`
--
ALTER TABLE `nazioni`
  ADD PRIMARY KEY (`idnazioni`);

--
-- Indexes for table `parentele`
--
ALTER TABLE `parentele`
  ADD PRIMARY KEY (`idparentele`);

--
-- Indexes for table `periodi2019`
--
ALTER TABLE `periodi2019`
  ADD PRIMARY KEY (`idperiodi`);

--
-- Indexes for table `prenota2019`
--
ALTER TABLE `prenota2019`
  ADD PRIMARY KEY (`idprenota`);

--
-- Indexes for table `rclientiprenota2019`
--
ALTER TABLE `rclientiprenota2019`
  ADD KEY `iidprclientiprenota2019` (`idprenota`);

--
-- Indexes for table `regioni`
--
ALTER TABLE `regioni`
  ADD PRIMARY KEY (`idregioni`);

--
-- Indexes for table `relclienti`
--
ALTER TABLE `relclienti`
  ADD KEY `iidprelclienti` (`idclienti`);

--
-- Indexes for table `relgruppi`
--
ALTER TABLE `relgruppi`
  ADD KEY `iidprelgruppi` (`idutente`);

--
-- Indexes for table `relinventario`
--
ALTER TABLE `relinventario`
  ADD KEY `iidprelinventario` (`idbeneinventario`);

--
-- Indexes for table `relutenti`
--
ALTER TABLE `relutenti`
  ADD KEY `iidprelutenti` (`idutente`);

--
-- Indexes for table `sessioni`
--
ALTER TABLE `sessioni`
  ADD PRIMARY KEY (`idsessioni`);

--
-- Indexes for table `soldi2019`
--
ALTER TABLE `soldi2019`
  ADD UNIQUE KEY `idsoldi` (`idsoldi`);

--
-- Indexes for table `transazioni`
--
ALTER TABLE `transazioni`
  ADD PRIMARY KEY (`idtransazioni`);

--
-- Indexes for table `transazioniweb`
--
ALTER TABLE `transazioniweb`
  ADD PRIMARY KEY (`idtransazioni`);

--
-- Indexes for table `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`idutenti`);

--
-- Indexes for table `versioni`
--
ALTER TABLE `versioni`
  ADD PRIMARY KEY (`idversioni`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
