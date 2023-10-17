-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Gru 2022, 11:33
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `egzamin`
--

-- --------------------------------------------------------

--
-- Struktura tabeli  `sesja`
--

CREATE TABLE `sesja` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user` text  DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Struktura tabeli  `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `zestaw` text DEFAULT NULL,
  `pytanie` text DEFAULT NULL,
  `odpowiedz1` text DEFAULT NULL,
  `odpowiedz2` text DEFAULT NULL,
  `odpowiedz3` text DEFAULT NULL,
  `odpowiedz4` text DEFAULT NULL,
  `nazwaObrazka` text DEFAULT NULL,        
  `nazwaObrazka1` text DEFAULT NULL,    
  `nazwaObrazka2` text DEFAULT NULL,    
  `nazwaObrazka3` text DEFAULT NULL,    
  `nazwaObrazka4` text DEFAULT NULL,    
  `poprawna` tinyint  DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `kwal` int
) ENGINE=InnoDB DEFAULT CHARSET=latin2;


--
-- Struktura tabeli `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `sesja` text DEFAULT NULL,
  `user` text DEFAULT NULL,
  `pytanie` int(11) DEFAULT NULL,
  `odpowiedz` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;


--
-- Struktura tabeli  `kwalifikacje`
--

CREATE TABLE `kwalifikacje` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `symbol` text DEFAULT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Struktura tabeli  `user`
--
--- typ: 1-admin, 2-trener, 3-test, 4-uczeń

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `login` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `typ` int(11) DEFAULT NULL,
  `kwalifikacja1` int(11) DEFAULT NULL,
  `kwalifikacja2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;




