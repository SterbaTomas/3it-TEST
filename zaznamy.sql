-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 24. srp 2021, 01:56
-- Verze serveru: 10.4.19-MariaDB
-- Verze PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `databaze`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `zaznamy`
--

CREATE TABLE `zaznamy` (
  `id` int(10) NOT NULL,
  `jmeno` varchar(64) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(64) COLLATE utf8_czech_ci NOT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `zaznamy`
--

INSERT INTO `zaznamy` (`id`, `jmeno`, `prijmeni`, `datum`) VALUES
(1, 'Milena', 'Havelková', '2009-01-25'),
(2, 'Svitlana', 'Ryba', '2008-04-03'),
(3, 'Janka', 'Urbánek', '2008-12-26'),
(4, 'Bohdan', 'Dlouhý', '2008-05-10'),
(5, 'Zbyněk', 'Varga', '2008-09-25'),
(6, 'Vitaliy', 'Blažková', '2009-04-27'),
(7, 'Lubomír', 'Zapletal', '2008-08-03'),
(8, 'Bronislav', 'Marečková', '2009-08-27'),
(9, 'Valérie', 'Horká', '2008-07-10'),
(10, 'Pavel', 'Šťastný', '2008-02-14'),
(11, 'Lumír', 'Zdražilová', '2008-06-16'),
(12, 'Antonie', 'Košťálová', '2008-07-17'),
(13, 'Lucia', 'Beránková', '2009-12-07'),
(14, 'Ihor', 'Černoch', '2009-08-06'),
(15, 'Halyna', 'Sokolová', '2009-12-10'),
(16, 'Luboš', 'Kvasničková', '2009-10-06'),
(17, 'Mykola', 'Šedivá', '2009-10-31'),
(18, 'Martin', 'Chvátalová', '2009-08-20'),
(19, 'Alžbeta', 'Kotková', '2008-11-14'),
(20, 'Sebastian', 'Matoušek', '2009-10-24'),
(21, 'Vasyl', 'Schmidt', '2009-01-27'),
(22, 'Robert', 'Bendová', '2009-12-23'),
(23, 'Vilém', 'Tesařová', '2009-10-15'),
(24, 'Gertruda', 'Foltýn', '2009-11-03'),
(25, 'Helga', 'Linhart', '2009-09-12'),
(26, 'Ruslan', 'Urbanová', '2008-08-22'),
(27, 'Ladislava', 'Tučková', '2009-03-18'),
(28, 'Imrich', 'Koukal', '2008-10-04'),
(29, 'Andrea', 'Mrázková', '2009-07-19'),
(30, 'Marie', 'Matoušová', '2009-03-08'),
(31, 'Imrich', 'Adamová', '2009-01-20'),
(32, 'Marcela', 'Pelcová', '2009-11-03'),
(33, 'Bohumír', 'Kosová', '2009-03-24'),
(34, 'Kristýna', 'Šimonová', '2009-10-19'),
(35, 'Vladimíra', 'Fenclová', '2009-01-22'),
(36, 'Alena', 'Koudelka', '2008-03-12'),
(37, 'Valentýna', 'Tůmová', '2009-12-22'),
(38, 'Nadiya', 'Skála', '2009-12-06'),
(39, 'Ivana', 'Mráz', '2009-04-13'),
(40, 'Diana', 'Petrů', '2009-04-25'),
(41, 'Vít', 'Kraus', '2009-08-07'),
(42, 'Amálie', 'Slabá', '2009-02-05'),
(43, 'Nicolas', 'Lang', '2009-11-03'),
(44, 'Tatiana', 'Mareš', '2009-01-02'),
(45, 'Michael', 'Kocourek', '2008-12-19'),
(46, 'Galina', 'Nováková', '2008-03-13'),
(47, 'Vanda', 'Dvořáček', '2008-10-13'),
(48, 'Ester', 'Lukeš', '2009-12-11'),
(49, 'Bohumil', 'Mach', '2009-07-07'),
(50, 'Vítězslava', 'Kratochvílová', '2009-12-12'),
(51, 'Karin', 'Janáček', '2008-12-02'),
(52, 'Serhiy', 'Macková', '2009-06-28'),
(53, 'Hubert', 'Muchová', '2009-11-30'),
(54, 'Johana', 'Chládek', '2009-01-28'),
(55, 'Tereza', 'Blechová', '2008-07-12'),
(56, 'Jindřiška', 'Pech', '2009-02-24'),
(57, 'Iryna', 'Bartoš', '2008-12-05'),
(58, 'Ludvík', 'Pavlíková', '2008-10-21'),
(59, 'David', 'Šustrová', '2009-05-21'),
(60, 'Tamara', 'Kvapil', '2008-05-01'),
(61, 'Vasyl', 'Pašková', '2009-03-21'),
(62, 'Viera', 'Čížek', '2009-06-23'),
(63, 'Věnceslava', 'Berka', '2009-11-25'),
(64, 'Hynek', 'Koláčková', '2008-07-10'),
(65, 'Helga', 'Oláh', '2009-11-16'),
(66, 'Klára', 'Zahradníková', '2009-07-25'),
(67, 'Květoslav', 'Hlavatá', '2008-11-30'),
(68, 'Ferdinand', 'Vybíral', '2009-09-22'),
(69, 'Václava', 'Suchomelová', '2008-02-17'),
(70, 'Pavla', 'Burda', '2008-04-27'),
(71, 'Jáchym', 'Ševčíková', '2008-09-12'),
(72, 'Gerhard', 'Demeter', '2009-10-31'),
(73, 'Veronika', 'Medková', '2009-06-14'),
(74, 'Petra', 'Polák', '2009-05-28'),
(75, 'Walter', 'Smola', '2008-10-07'),
(76, 'Jarmila', 'Brychta', '2008-10-12'),
(77, 'Samuel', 'Zíková', '2008-02-06'),
(78, 'Štěpánka', 'Zámečníková', '2008-12-27'),
(79, 'Regina', 'Bártová', '2008-02-09'),
(80, 'Jaroslav', 'Lacina', '2009-09-22'),
(81, 'Naďa', 'Hrdinová', '2008-09-19'),
(82, 'Halina', 'Schwarzová', '2008-07-19'),
(83, 'Ľubomír', 'Zimová', '2009-10-01'),
(84, 'René', 'Šimon', '2008-04-20'),
(85, 'Zoltán', 'Michalcová', '2009-12-07'),
(86, 'Serhiy', 'Červenková', '2009-03-27'),
(87, 'Tetyana', 'Spáčilová', '2008-10-28'),
(88, 'Jan', 'Hovorka', '2009-11-05'),
(89, 'Lucia', 'Vlasáková', '2009-01-26'),
(90, 'Mojmír', 'Tůmová', '2008-06-13'),
(91, 'Magdaléna', 'Kudrnová', '2009-10-13'),
(92, 'Yaroslav', 'Matoušová', '2009-01-14'),
(93, 'Nicole', 'Volná', '2008-02-19'),
(94, 'Zdena', 'Pecka', '2008-04-05'),
(95, 'Luděk', 'Souček', '2008-03-11'),
(96, 'Gabriel', 'Motyčka', '2008-05-06'),
(97, 'Ferdinand', 'Diviš', '2009-04-28'),
(98, 'Agáta', 'Zámečníková', '2008-02-20'),
(99, 'Mária', 'Mikeš', '2009-02-15'),
(100, 'Vratislav', 'Křenková', '2009-07-05');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `zaznamy`
--
ALTER TABLE `zaznamy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `zaznamy`
--
ALTER TABLE `zaznamy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
