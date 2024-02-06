-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 10:17 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egzamin`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwalifikacje`
--

CREATE TABLE `kwalifikacje` (
  `id` int(11) NOT NULL,
  `symbol` text DEFAULT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Dumping data for table `kwalifikacje`
--

INSERT INTO `kwalifikacje` (`id`, `symbol`, `nazwa`) VALUES
(1, 'INF.02', 'Administracja i eksploatacja systemów komputerowych, urządzeń peryferyjnych i lokalnych sieci komputerowych'),
(2, 'INF.03', 'Tworzenie i administrowanie stronami i aplikacjami internetowymi oraz bazami danych');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `id` int(11) NOT NULL,
  `sesja` text DEFAULT NULL,
  `user` text DEFAULT NULL,
  `pytanie` int(11) DEFAULT NULL,
  `odpowiedz` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Dumping data for table `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`id`, `sesja`, `user`, `pytanie`, `odpowiedz`) VALUES
(1, 'test', 'test', 1, 1),
(2, 'test', 'test', 1, 1),
(3, 'test', 'test', 2, 2),
(4, 'test', 'test', 2, 2),
(5, 'test', 'test', 1, 1),
(6, 'test', 'test', 1, 1),
(7, 'test', 'test', 2, 2),
(8, 'test', 'test', 2, 2),
(9, 'test', 'test', 3, 3),
(10, 'test', 'test', 3, 3),
(11, 'test', 'test', 4, 4),
(12, 'test', 'test', 4, 4),
(13, 'test1', 'test1', 1, 2),
(14, 'test1', 'test1', 1, 2),
(15, 'test1', 'test1', 1, 2),
(16, 'test1', 'test1', 1, 2),
(17, 'test.inf02', 'test.inf02', 1, 2),
(18, 'test.inf02', 'test.inf02', 1, 2),
(19, 'test', 'test', 1, 1),
(20, 'test', 'test', 1, 1),
(21, 'test', 'test', 2, 1),
(22, 'test', 'test', 2, 1),
(23, 'test', 'test', 3, 3),
(24, 'test', 'test', 3, 3),
(25, 'test', 'test', 4, 4),
(26, 'test', 'test', 4, 4),
(27, 'test', 'test', 4, 4),
(28, 'test', 'test', 4, 4),
(29, 'test', 'test', 2, 3),
(30, 'test', 'test', 2, 3),
(31, 'test', 'test', 1, 1),
(32, 'test', 'test', 1, 1),
(33, 'test1', 'test1', 1, 1),
(34, 'test1', 'test1', 1, 1),
(35, 'test1', 'test1', 2, 2),
(36, 'test1', 'test1', 2, 2),
(37, 'test1', 'test1', 3, 4),
(38, 'test1', 'test1', 3, 4),
(39, 'test1', 'test1', 4, 4),
(40, 'test1', 'test1', 4, 4),
(41, 'inf.03', 'inf.03', 1, 1),
(42, 'inf.03', 'inf.03', 1, 1),
(43, 'inf.03', 'inf.03', 2, 1),
(44, 'inf.03', 'inf.03', 2, 1),
(45, 'inf.03', 'inf.03', 3, 3),
(46, 'inf.03', 'inf.03', 3, 3),
(47, 'inf.03', 'inf.03', 4, 4),
(48, 'inf.03', 'inf.03', 4, 4),
(49, 'inf.03', 'inf.03', 1, 4),
(50, 'inf.03', 'inf.03', 1, 4),
(51, 'inf.03', 'inf.03', 7, 4),
(52, 'inf.03', 'inf.03', 7, 4),
(53, 'inf.03', 'inf.03', 2, 4),
(54, 'inf.03', 'inf.03', 2, 4),
(55, 'inf.03', 'inf.03', 5, 2),
(56, 'inf.03', 'inf.03', 5, 2),
(57, 'inf.03', 'inf.03', 1, 1),
(58, 'inf.03', 'inf.03', 1, 1),
(59, 'inf.03', 'inf.03', 2, 4),
(60, 'inf.03', 'inf.03', 2, 4),
(61, 'inf.03', 'inf.03', 3, 1),
(62, 'inf.03', 'inf.03', 3, 1),
(63, 'inf.03', 'inf.03', 4, 2),
(64, 'inf.03', 'inf.03', 4, 2),
(65, 'inf.03', 'inf.03', 4, 3),
(66, 'inf.03', 'inf.03', 4, 3),
(67, 'inf.03', 'inf.03', 5, 1),
(68, 'inf.03', 'inf.03', 5, 1),
(69, 'inf.03', 'inf.03', 6, 4),
(70, 'inf.03', 'inf.03', 6, 4),
(71, 'inf.03', 'inf.03', 7, 4),
(72, 'inf.03', 'inf.03', 7, 4),
(73, 'inf.03', 'inf.03', 1, 4),
(74, 'inf.03', 'inf.03', 1, 4),
(75, 'inf.03', 'inf.03', 1, 1),
(76, 'inf.03', 'inf.03', 1, 1),
(77, 'inf.03', 'inf.03', 1, 1),
(78, 'inf.03', 'inf.03', 1, 1),
(79, 'inf.03', 'inf.03', 1, 1),
(80, 'inf.03', 'inf.03', 1, 1),
(81, 'inf.03', 'inf.03', 1, 1),
(82, 'inf.03', 'inf.03', 1, 1),
(83, 'inf.03', 'inf.03', 1, 1),
(84, 'inf.03', 'inf.03', 1, 1),
(85, 'inf.03', 'inf.03', 2, 2),
(86, 'inf.03', 'inf.03', 2, 2),
(87, 'inf.03', 'inf.03', 3, 4),
(88, 'inf.03', 'inf.03', 3, 4),
(89, 'inf.03', 'inf.03', 1, 1),
(90, 'inf.03', 'inf.03', 1, 1),
(91, 'inf.03', 'inf.03', 2, 2),
(92, 'inf.03', 'inf.03', 2, 2),
(93, 'inf.03', 'inf.03', 1, 1),
(94, 'inf.03', 'inf.03', 1, 1),
(95, 'inf.03', 'inf.03', 1, 1),
(96, 'inf.03', 'inf.03', 1, 1),
(97, 'inf.03', 'inf.03', 1, 1),
(98, 'inf.03', 'inf.03', 1, 1),
(99, 'inf.03', 'inf.03', 1, 1),
(100, 'inf.03', 'inf.03', 1, 1),
(101, 'inf.03', 'inf.03', 9, 1),
(102, 'inf.03', 'inf.03', 9, 1),
(103, 'inf.03', 'inf.03', 9, 4),
(104, 'inf.03', 'inf.03', 9, 4),
(105, 'inf.03', 'inf.03', 9, 4),
(106, 'inf.03', 'inf.03', 9, 4),
(107, 'inf.03', 'inf.03', 8, 4),
(108, 'inf.03', 'inf.03', 8, 4),
(109, 'inf.03', 'inf.03', 11, 3),
(110, 'inf.03', 'inf.03', 11, 3),
(111, 'inf.03', 'inf.03', 10, 2),
(112, 'inf.03', 'inf.03', 10, 2),
(113, 'inf.03', 'inf.03', 1, 1),
(114, 'inf.03', 'inf.03', 1, 1),
(115, 'inf.03', 'inf.03', 12, 1),
(116, 'inf.03', 'inf.03', 12, 1),
(117, 'inf.03', 'inf.03', 12, 1),
(118, 'inf.03', 'inf.03', 12, 1),
(119, 'inf.03', 'inf.03', 12, 1),
(120, 'inf.03', 'inf.03', 12, 1),
(121, 'inf.03', 'inf.03', 12, 1),
(122, 'inf.03', 'inf.03', 12, 1),
(123, 'inf.03', 'inf.03', 11, 3),
(124, 'inf.03', 'inf.03', 11, 3),
(125, 'inf.03', 'inf.03', 1, 1),
(126, 'inf.03', 'inf.03', 1, 1),
(127, 'inf.03', 'inf.03', 1, 1),
(128, 'inf.03', 'inf.03', 1, 1),
(129, 'inf.03', 'inf.03', 2, 1),
(130, 'inf.03', 'inf.03', 2, 1),
(131, 'inf.03', 'inf.03', 1, 1),
(132, 'inf.03', 'inf.03', 1, 1),
(133, 'inf.03', 'inf.03', 12, 1),
(134, 'inf.03', 'inf.03', 12, 1),
(135, 'inf.03', 'inf.03', 1, 1),
(136, 'inf.03', 'inf.03', 1, 1),
(137, 'inf.03', 'inf.03', 1, 1),
(138, 'inf.03', 'inf.03', 1, 1),
(139, 'inf.03', 'inf.03', 12, 1),
(140, 'inf.03', 'inf.03', 12, 1),
(141, 'inf.03', 'inf.03', 1, 1),
(142, 'inf.03', 'inf.03', 1, 1),
(143, 'inf.03', 'inf.03', 12, 1),
(144, 'inf.03', 'inf.03', 12, 1),
(145, 'inf.03', 'inf.03', 1, 1),
(146, 'inf.03', 'inf.03', 1, 1),
(147, 'inf.03', 'inf.03', 1, 1),
(148, 'inf.03', 'inf.03', 1, 1),
(149, 'inf.03', 'inf.03', 12, 4),
(150, 'inf.03', 'inf.03', 12, 4),
(151, 'inf.03', 'inf.03', 1, 1),
(152, 'inf.03', 'inf.03', 1, 1),
(153, 'inf.03', 'inf.03', 1, 1),
(154, 'inf.03', 'inf.03', 1, 1),
(155, 'inf.03', 'inf.03', 1, 2),
(156, 'inf.03', 'inf.03', 1, 2),
(157, 'inf.03', 'inf.03', 2, 4),
(158, 'inf.03', 'inf.03', 2, 4),
(159, 'inf.03', 'inf.03', 12, 3),
(160, 'inf.03', 'inf.03', 12, 3),
(161, 'inf.03', 'inf.03', 1, 1),
(162, 'inf.03', 'inf.03', 1, 1),
(163, 'inf.03', 'inf.03', 12, 4),
(164, 'inf.03', 'inf.03', 12, 4),
(165, 'inf.03', 'inf.03', 20, 3),
(166, 'inf.03', 'inf.03', 20, 3),
(167, 'inf.03', 'inf.03', 1, 1),
(168, 'inf.03', 'inf.03', 1, 1),
(169, 'inf.03', 'inf.03', 1, 1),
(170, 'inf.03', 'inf.03', 1, 1),
(171, 'inf.03', 'inf.03', 20, 4),
(172, 'inf.03', 'inf.03', 20, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `nr` int(11) NOT NULL,
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
  `poprawna` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `kwal` int(11) DEFAULT NULL,
  `zestaw` text NOT NULL,
  `kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id`, `nr`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `nazwaObrazka`, `nazwaObrazka1`, `nazwaObrazka2`, `nazwaObrazka3`, `nazwaObrazka4`, `poprawna`, `created`, `kwal`, `zestaw`, `kategoria`) VALUES
(1, 0, 'Metoda projektowania algorytmów, polegająca na podziale problemu na dwa lub więcej mniejszych podproblemów, tak długo aż fragmenty staną się wystarczająco proste do bezpośredniego rozwiązania, to', 'dziel i zwyciężaj', 'sito Eratostenesa', 'słowa Fibonacciego', 'sortowanie przez wybór', NULL, NULL, NULL, NULL, NULL, 1, '2023-03-01 07:35:45', 2, 'test', 0),
(2, 0, 'Program zapisany w języku C++ ma za zadanie wczytać zmienną całkowitą liczba i wyświetlić ją wtedy, gdy przyjmuje trzycyfrowe wartości parzyste. Instrukcja warunkowa sprawdzająca ten warunek powinna zawierać wyrażenie logiczne', 'liczba % 2 == 0 || liczba > 99 || liczba < 999', 'liczba % 2 == 0 && liczba > 99 && liczba < 999', 'liczba % 2 == 0 || (liczba > 99 && liczba < 999)', 'liczba % 2 == 0 && (liczba > 99 || liczba < 999)', NULL, NULL, NULL, NULL, NULL, 2, '2023-03-01 07:35:45', 2, 'test', 0),
(3, 0, 'W języku C++ zdefiniowano zmienną char zm1[10]; Zmienna ta jest:', 'liczbą.', 'znakiem.', 'tablicą znaków.', 'tablicą łańcuchów.', NULL, NULL, NULL, NULL, NULL, 3, '2023-03-01 07:35:45', 2, 'test', 0),
(4, 0, 'Która definicja tablicy asocjacyjnej w języku PHP jest poprawna składniowo?', '$wiek = array(\"Anna\"=35, \"Ewa\"=37, \"Oliwia\"=43);', '$wiek = array([Anna, 35], [Ewa, 37], [Oliwia, 43]);', '$wiek = array(\"Anna\"=>\"35\", \"Ewa\"=>\"37\", \"Oliwia\"=>\"43\");', '$wiek = array({\"Anna\", \"35\"}, {\"Ewa\", \"37\"}, {\"Oliwia\", \"43\"});', NULL, NULL, NULL, NULL, NULL, 3, '2023-03-01 07:35:45', 2, 'test', 0),
(15, 0, '  ', 'DC', 'CD ', 'CC ', 'DD ', '20230321081045z1.JPG', '', NULL, NULL, NULL, 2, '2023-03-21 20:10:45', 1, 'EE.08-SG-22.01', 0),
(16, 1, 'W algorytmie jeden z bloków ma wpisaną akcję ?Wypisz liczbę?. Który z kształtów może przyjąć tę akcję?', 'Kształt 1.', ' Kształt 2.', ' Kształt 3.', ' Kształt 4.', '20231010073656p1.PNG', '', NULL, NULL, NULL, 1, '2023-10-10 19:36:56', 2, 'EE.09-SG-23.06', 0),
(17, 2, 'Jak nazywa się metoda sortowania, polegająca na wielokrotnym przeglądaniu kolejnych elementów tablicy\r\ni zamianie miejscami elementów sąsiadujących tak, aby zachowały regułę porządkującą?', 'Sortowanie szybkie.', ' Sortowanie bąbelkowe.', ' Sortowanie kubełkowe.', ' Sortowanie przez wybór', '', '', NULL, NULL, NULL, 2, '2023-10-10 19:50:51', 2, 'EE.09-SG-23.06', 0),
(18, 3, 'Program zapisany w języku JavaScript oblicza cenę promocyjną dla swetrów w kolorach: zielonym,\r\nniebieskim (zmienna kolor) przy zakupach powyżej 200 zł (zmienna zakupy). Warunek do obliczeń powinien\r\nbyć zapisany przy pomocy wyrażenia logicznego', 'zakupy > 200 || kolor == \'zielony\' || kolor == \'niebieski\'', 'zakupy > 200 && kolor == \'zielony\' && kolor == \'niebieski\'', 'zakupy > 200 && (kolor == \'zielony\' || kolor == \'niebieski\')', 'zakupy > 200 || (kolor == \'zielony\' && kolor == \'niebieski\')', '', '', NULL, NULL, NULL, 3, '2023-10-10 19:59:33', 2, 'EE.09-SG-23.06', 0),
(20, 5, 'Na listingu kodu JavaScript w wykropkowanej części definicji obiektu osoba należy wpisać kod, który\r\nprawidłowo obsłuży instrukcję osoba.j = \"PL\"; Który to będzie kod?', 'return this.j;', 'this.j = nazwa;', 'return this.jezyk;', 'this.jezyk = nazwa;', '20231101091133p5.PNG', '', NULL, NULL, NULL, 4, '2023-11-01 09:11:33', 2, 'EE.09-SG-23.06', 1),
(23, 4, 'Wskaż kod równoważny do przedstawionego kodu zapisanego językiem PHP', 'Kod 1', 'Kod 2', 'Kod 3', 'Kod 4', '20231101093132p4.PNG', 'p4o1.PNG', 'p4o2.PNG', 'p4o3.PNG', 'p4o4.PNG', 2, '2023-11-01 09:31:32', 2, 'EE.09-SG-23.06', 1),
(24, 6, 'Które typy danych w języku C++ reprezentują liczby rzeczywiste?', 'float i long', 'double i bool', 'float i double', 'double i short', '', '', '', '', '', 3, '2023-11-01 09:34:00', 2, 'EE.09-SG-23.06', 1),
(26, 7, '.', 'var liczby = [3];', 'var liczby = [1, 2, 3];', 'var liczby = new Array[1, 2, 3];', 'var liczby = new Array(1, 2, 3);', '20231101093907p7.PNG', '', '', '', '', 3, '2023-11-01 09:39:07', 2, 'EE.09-SG-23.06', 1),
(27, 8, 'W języku JavaScript, aby zamienić specjalnie przygotowany napis w tablicę, można zastosować metodę', 'trim()', 'split()', 'slice()', 'replace()', '', '', '', '', '', 2, '2023-11-01 09:41:45', 2, 'EE.09-SG-23.06', 1),
(28, 9, 'W jaki sposób, stosując język PHP można usunąć ciasteczko o nazwie ciastko?', 'unsetcookie(\"$ciastko\");', 'deletecookie(\"ciastko\");', 'setcookie(\"$ciastko\", \"\", 0);', 'setcookie(\"ciastko\", \"\", time()-3600);', '', '', '', '', '', 4, '2023-11-01 09:43:22', 2, 'EE.09-SG-23.06', 1),
(29, 10, 'Którą wartość zwróci funkcja zapisana językiem C++, jeżeli jej parametrem wejściowym jest tablica\r\nwypełniona w następujący sposób: tablica[6] = {3, 4, 2, 4, 10, 0};?', '0', '10', '23', '960', '20231101094502p10.PNG', '', '', '', '', 3, '2023-11-01 09:45:02', 2, 'EE.09-SG-23.06', 1),
(30, 11, 'Po wykonaniu kodu PHP zostanie wyświetlona aktualna data zawierająca', 'dzień i rok.', 'jedynie rok.', 'rok i miesiąc.', 'dzień, miesiąc, rok.', '20231101094704p11.PNG', '', '', '', '', 3, '2023-11-01 09:47:04', 2, 'EE.09-SG-23.06', 1),
(32, 12, 'Wskaż na czym polega błąd w kodzie zapisanym w języku C++.', 'Napis powinien być ujęty w cudzysłów.', 'Napis powinien mieć dokładnie 30 znaków.', 'Do funkcji printf przekazano zbyt mało argumentów.', 'W funkcji printf nie można stosować formatowania %s', '20240131104950p12.PNG', '', '', '', '', 1, '2024-01-31 10:49:50', 2, 'EE.09-SG-23.06', 1),
(33, 13, 'Który zapis definiuje w języku C++ komentarz jednoliniowy?', '#', '<', '/*', '//', '', '', '', '', '', 4, '2024-02-06 19:20:31', 2, 'EE.09-SG-23.06', 1),
(34, 14, 'Relacja pomiędzy tabelami, realizowana przez bezpośrednie połączenie kluczy głównych obu tabel jest\r\nrelacją', '1..1', '1..n', 'n..1', 'n..m', '', '', '', '', '', 1, '2024-02-06 19:21:16', 2, 'EE.09-SG-23.06', 1),
(35, 15, 'Pojęcie krotka odpowiada', 'tabeli', 'relacji', 'kolumnie', 'wierszowi', '', '', '', '', '', 4, '2024-02-06 19:21:56', 2, 'EE.09-SG-23.06', 1),
(36, 16, 'Aby w zapytaniu posłużyć się relacją, należy zastosować słowo kluczowe', 'IN', 'JOIN', 'UNION', 'GROUP BY', '', '', '', '', '', 2, '2024-02-06 19:22:48', 2, 'EE.09-SG-23.06', 1),
(37, 17, 'Przedstawione zapytanie wybierze', 'sumę cen usług w tabeli.', 'średnią cenę usług w tabeli.', 'wszystkie ceny usług w tabeli.', 'liczbę wszystkich cen usług w tabeli.', '20240206072532P17.PNG', '', '', '', '', 4, '2024-02-06 19:25:32', 2, 'EE.09-SG-23.06', 1),
(38, 18, 'Dla których imion klauzula LIKE jest prawdziwa?', 'Oksana, Ola, Olga', 'Oda, Oksana, Oktawia.', 'Oksana, Oktawia, Olga.', 'Oktawia, Oktawian, Olga.', '20240206072700p18.PNG', '', '', '', '', 3, '2024-02-06 19:27:00', 2, 'EE.09-SG-23.06', 1),
(39, 19, 'Dla których imion klauzula LIKE jest prawdziwa?', 'zafira', 'opel zafira', 'zafira; insignia', 'opel zafira; opel insignia', '20240206073328p19.PNG', '', '', '', '', 1, '2024-02-06 19:33:28', 2, 'EE.09-SG-23.06', 1),
(40, 20, 'W bazie danych MySQL utworzono tabelę. Aby jednoznacznie zdefiniować, że pole ID jest kluczem głównym,\r\nnależy dopisać', 'PK (ID) przed zamknięciem nawiasu', 'PK w linii, w której jest zdefiniowane pole ID.', 'PRIMARY KEY (ID) przed zamknięciem nawiasu.', 'FOREIGN KEY w linii, w której jest zdefiniowane pole ID.', '20240206073653P20.PNG', '', '', '', '', 3, '2024-02-06 19:36:53', 2, 'EE.09-SG-23.06', 1),
(41, 21, 'Tabele: Studenci, Zapisy, Zajecia są powiązane relacją. Aby wybrać jedynie nazwiska studentów oraz\r\nodpowiadające im idZajecia dla studentów z grupy 15, należy wydać kwerendę', 'SELECT nazwisko, idZajecia FROM Studenci INNER JOIN Zapisy WHERE\r\ngrupa= 15;', 'SELECT nazwisko, idZajecia FROM Studenci INNER JOIN Zapisy ON\r\nStudenci.id = Zapisy.idStudenta;', 'SELECT nazwisko, idZajecia FROM Studenci JOIN Zapisy ON Studenci.id\r\n= Zapisy.idZajecia WHERE grupa = 15;', 'SELECT nazwisko, idZajecia FROM Studenci JOIN Zapisy ON Studenci.id\r\n= Zapisy.idStudenta WHERE grupa = 15;', '20240206074357p21.PNG', '', '', '', '', 4, '2024-02-06 19:43:57', 2, 'EE.09-SG-23.06', 1),
(42, 22, 'Klauzuli DROP COLUMN można użyć podczas wydawania kwerendy', 'DROP TABLE', 'ALTER TABLE', 'ALTER COLUMN', 'CREATE TABLE', '', '', '', '', '', 2, '2024-02-06 19:44:56', 2, 'EE.09-SG-23.06', 1),
(43, 23, 'Za pomocą którego ograniczenia (constraint) można zdefiniować klucz obcy?', 'UNIQUE KEY(ID)', 'FOREIGN KEY(ID)', 'PRIMARY KEY(ID)', 'AUTO_INCREMENT(ID)', '', '', '', '', '', 2, '2024-02-06 19:45:42', 2, 'EE.09-SG-23.06', 1),
(44, 24, 'W języku SQL wydano kwerendę, niestety jej wykonanie nie powiodło się i wystąpił błąd: #1396 -\r\nOperation CREATE USER failed for \'anna\'@\'localhost\'. Powodem takiego zachowania\r\nbazy danych może być', 'zbyt słabe hasło dla konta anna.', 'istnienie użytkownika anna w bazie', 'nieznane polecenie CREATE USER.', 'nieprawidłowa składnia polecenia CREATE USER.', '20240206074719p24.PNG', '', '', '', '', 2, '2024-02-06 19:47:19', 2, 'EE.09-SG-23.06', 1),
(45, 25, 'Zakładając, że użytkownik adam wcześniej nie miał żadnych praw, polecenie SQL nada użytkownikowi\r\nprawa jedynie do', 'wstawiania i zmiany danych w tabeli sklep', 'tworzenia i zmiany struktury w tabeli sklep', 'tworzenia i zmiany struktury wszystkich tabel w bazie sklep', 'wstawiania i zmiany danych we wszystkich tabelach bazy sklep', '20240206095620p25.PNG', '', '', '', '', 3, '2024-02-06 21:56:20', 2, 'EE.09-SG-23.06', 1),
(46, 26, 'W aplikacji PHP przesłano do bazy kwerendę SELECT za pomocą funkcji mysqli_query. Którą funkcję\r\npowinien zastosować użytkownik, aby sprawdzić ile rekordów zwróciło zapytanie?', 'mysqli_fetch_row', 'mysqli_num_rows', 'mysqli_connect', 'mysqli_query', '', '', '', '', '', 2, '2024-02-06 21:57:19', 2, 'EE.09-SG-23.06', 1),
(47, 27, 'Na obrazie przedstawiono projekt układu bloków witryny internetowej. Zakładając, że bloki są realizowane za pomocą znaczników sekcji, ich formatowanie w CSS, oprócz ustawionych szerokości dla bloków: 1, 2, 3, 4 (blok 5 nie ma ustawionej szerokości), powinno zawierać właściwość', 'float: left dla wszystkich bloków', 'clear: both dla wszystkich bloków', 'clear: both dla bloku 5 oraz float: left jedynie dla 1 i 2 bloku', 'clear: both dla bloku 5 oraz float: left dla pozostałych bloków', '20240206095837p27.PNG', '', '', '', '', 4, '2024-02-06 21:58:37', 2, 'EE.09-SG-23.06', 1),
(48, 28, 'Jak nazywa się część systemu zarządzania treścią bezpośrednio odpowiedzialna za wygląd witryny?ć', 'Widżet w systemie WordPress lub moduł w systemie Joomla!', 'Motyw w systemie WordPress lub szablon w systemie Joomla!', 'Wtyczka w systemie WordPress lub dodatek w systemie Joomla!', 'Kokpit w systemie WordPress lub panel administracyjny w systemie Joomla!', '', '', '', '', '', 2, '2024-02-06 21:59:37', 2, 'EE.09-SG-23.06', 1),
(49, 29, 'W języku HTML zapisano formularz. Który z efektów działania kodu będzie wyświetlony przez przeglądarkę\r\nzakładając, że w pierwsze pole użytkownik przeglądarki wpisał wartość ?Przykładowy text??', 'Efekt 1.', 'Efekt 2.', 'Efekt 3.', 'Efekt 4.', '20240206100135p29.PNG', '', '', '', '', 2, '2024-02-06 22:01:35', 2, 'EE.09-SG-23.06', 1),
(50, 30, 'Obraz przedstawia formatowanie CSS paragrafu. Aby otrzymać czerwony kolor poza obramowaniem, tak jak\r\nprzedstawiono na obrazie, należy zdefiniować własność', 'border', 'outline', 'padding', 'background', '20240206100243p29.PNG', '', '', '', '', 2, '2024-02-06 22:02:43', 2, 'EE.09-SG-23.06', 1),
(51, 31, 'Która z komórek tabeli została sformatowana przedstawionym stylem CSS zakładając, że pozostałe\r\nwłasności przyjmują wartości domyślne?', 'Komórka 1.', 'Komórka 2.', 'Komórka 3.', 'Komórka 4.', '20240206100406p31.PNG', '', '', '', '', 3, '2024-02-06 22:04:06', 2, 'EE.09-SG-23.06', 1),
(52, 32, 'Zapis selektora oznacza, że tło będzie brązowe dla', 'wszystkich pól edycyjnych', 'wszystkich tekstów na stronie.', 'pól edycyjnych, które są typu numerycznego', 'pól edycyjnych, gdy użytkownik wpisze do nich dowolną cyfrę', '20240206100618p32.PNG', '', '', '', '', 3, '2024-02-06 22:06:18', 2, 'EE.09-SG-23.06', 1),
(53, 33, 'W dokumencie HTML zdefiniowano listę oraz dodano do niej formatowanie CSS. Który z efektów odpowiada\r\ntej definicji?', 'Efekt 1.', 'Efekt 2.', 'Efekt 3.', 'Efekt 4.', '20240206100729p33.PNG', '', '', '', '', 4, '2024-02-06 22:07:29', 2, 'EE.09-SG-23.06', 1),
(54, 34, 'Obraz w formacie PNG należy przekształcić tak, aby jego tło było przezroczyste, w tym celu niezbędne jest', 'dodanie kanału alfa.', 'odpowiednie kadrowanie', 'poprawienie saturacji barw', 'zapisanie go w formacie BMP', '', '', '', '', '', 1, '2024-02-06 22:08:21', 2, 'EE.09-SG-23.06', 1),
(55, 35, 'Funkcja Desaturacja ma na celu', 'rozjaśnienie obrazu', 'zwiększenie jaskrawości barw', 'przekształcenie barw do odcieni szarości', 'zwiększenie liczby kolorów wykorzystywanych w obrazie', '', '', '', '', '', 3, '2024-02-06 22:09:05', 2, 'EE.09-SG-23.06', 1),
(56, 36, 'Kolorem o barwie czerwonej jest', '#0000EE', '#EE0000', '#00EE00', '#00EEEE', '', '', '', '', '', 2, '2024-02-06 22:09:51', 2, 'EE.09-SG-23.06', 1),
(57, 37, 'Aby sprawdzić ustawienia w pliku php.ini można uruchomić skrypt PHP zawierający zapis', '<?php ini_set(); ?>', '<?php phpinfo(); ?>', '<?php phpcredits(); ?>', '<?php echo phpversion(); ?>', '', '', '', '', '', 2, '2024-02-06 22:10:35', 2, 'EE.09-SG-23.06', 1),
(58, 38, 'Który z kodów PHP sprawi, że zostanie wyświetlona sformatowana data oraz czas ostatnich odwiedzin\r\nużytkownika witryny, natomiast podczas pierwszej wizyty nic się nie wyświetli?', 'Kod 1.', 'Kod 2.', 'Kod 3.', 'Kod 4.', '20240206101208p38.PNG', '', '', '', '', 2, '2024-02-06 22:12:08', 2, 'EE.09-SG-23.06', 1),
(59, 39, 'Co można powiedzieć o wyświetlonym przez witrynę tekście ?test kolorów??', 'Po wciśnięciu przycisku test kolor tekstu jest niebieski', 'Po wciśnięciu przycisku test kolor tekstu jest czerwony', 'Zaraz po załadowaniu witryny kolor tekstu jest czerwony', 'Wciskanie przycisku test sprawia, że kolor tekstu jest na przemian niebieski i czerwony.', '20240206101329p39.PNG', '', '', '', '', 2, '2024-02-06 22:13:29', 2, 'EE.09-SG-23.06', 1),
(60, 40, 'Walidator W3C wygenerował błąd walidacji: End tag p seen, but there were open elements. Którego\r\nfragmentu kodu on dotyczy?', '<p>Ala ma kota', '<p>Ala ma kota</p>', '<p>Ala ma <b>kota</p></b>', '<p>Ala ma <b>kota</b></p>', '', '', '', '', '', 3, '2024-02-06 22:14:22', 2, 'EE.09-SG-23.06', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sesja`
--

CREATE TABLE `sesja` (
  `id` int(11) NOT NULL,
  `user` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Dumping data for table `sesja`
--

INSERT INTO `sesja` (`id`, `user`, `created`) VALUES
(1, 'test', '2023-03-01 07:47:05'),
(2, 'test', '2023-03-14 18:22:48'),
(3, 'test', '2023-03-21 19:05:43'),
(4, 'test', '2023-03-21 19:51:40'),
(5, 'test', '2023-03-25 12:11:44'),
(6, 'test1', '2023-03-25 14:02:11'),
(7, 'test1', '2023-03-25 14:03:55'),
(8, 'test1', '2023-03-25 14:06:22'),
(9, 'test1', '2023-03-26 16:34:15'),
(10, 'test.inf02', '2023-03-26 18:29:45'),
(11, 'janusz', '2023-06-11 11:51:41'),
(12, 'test', '2023-08-29 12:29:40'),
(13, 'test', '2023-08-29 12:30:31'),
(14, 'test', '2023-08-29 12:36:45'),
(15, 'test1', '2023-10-05 22:02:19'),
(16, 'test', '2023-10-06 19:49:41'),
(17, 'trener.inf02', '2023-10-06 20:12:31'),
(18, 'trener.inf03', '2023-10-06 20:47:38'),
(19, 'trener.inf02', '2023-10-06 20:47:44'),
(20, 'inf.02', '2023-10-07 12:17:50'),
(21, 'inf.02', '2023-10-07 12:21:21'),
(22, 'inf.03', '2023-10-10 19:06:34'),
(23, 'inf.03', '2023-10-10 20:20:23'),
(24, 'inf.03', '2023-10-15 10:46:52'),
(25, 'inf.03', '2023-10-15 10:52:03'),
(26, 'inf.03', '2023-10-17 21:07:05'),
(27, 'inf.03', '2023-10-17 21:16:47'),
(28, 'inf.03', '2023-10-24 20:40:46'),
(29, 'inf.03', '2023-10-24 21:54:36'),
(30, 'inf.03', '2023-10-24 22:11:57'),
(31, 'inf.03', '2023-10-24 22:23:54'),
(32, 'inf.03', '2023-10-24 22:29:23'),
(33, 'inf.03', '2023-10-24 22:31:33'),
(34, 'inf.03', '2023-10-24 22:33:08'),
(35, 'inf.03', '2023-10-24 22:33:08'),
(36, 'inf.03', '2023-10-24 22:42:27'),
(37, 'inf.03', '2023-10-24 22:42:30'),
(38, 'inf.03', '2023-10-24 22:42:46'),
(39, 'inf.03', '2023-10-24 22:42:46'),
(40, 'inf.03', '2023-10-24 22:44:34'),
(41, 'inf.03', '2023-10-24 22:44:34'),
(42, 'inf.03', '2023-10-24 22:53:51'),
(43, 'inf.03', '2023-10-24 22:53:51'),
(44, 'inf.03', '2023-10-24 22:55:29'),
(45, 'inf.03', '2023-10-24 22:55:29'),
(46, 'inf.03', '2023-10-24 22:56:26'),
(47, 'inf.03', '2023-10-24 22:56:26'),
(48, 'inf.03', '2023-10-25 20:59:13'),
(49, 'inf.03', '2023-10-25 20:59:13'),
(50, 'inf.03', '2023-10-25 21:22:01'),
(51, 'inf.03', '2023-10-25 21:22:01'),
(52, 'inf.03', '2023-10-25 21:23:50'),
(53, 'inf.03', '2023-10-25 21:23:50'),
(54, 'inf.03', '2023-10-25 21:25:46'),
(55, 'inf.03', '2023-10-25 21:25:46'),
(56, 'inf.03', '2023-10-25 21:29:50'),
(57, 'inf.03', '2023-10-25 21:29:50'),
(58, 'inf.03', '2023-10-25 21:31:13'),
(59, 'inf.03', '2023-10-25 21:31:13'),
(60, 'inf.03', '2023-10-25 21:35:29'),
(61, 'inf.03', '2023-10-25 21:35:29'),
(62, 'inf.03', '2023-10-25 21:46:43'),
(63, 'inf.03', '2023-10-25 21:46:43'),
(64, 'inf.03', '2023-10-25 21:55:54'),
(65, 'inf.03', '2023-10-25 21:55:54'),
(66, 'inf.03', '2024-01-30 10:28:50'),
(67, 'inf.03', '2024-01-30 10:28:51'),
(68, 'inf.03', '2024-01-30 10:49:35'),
(69, 'inf.03', '2024-01-30 10:51:01'),
(70, 'inf.03', '2024-01-30 10:51:28'),
(71, 'inf.03', '2024-01-30 10:54:18'),
(72, 'inf.03', '2024-01-30 10:55:19'),
(73, 'inf.03', '2024-01-30 10:55:50'),
(74, 'inf.03', '2024-01-30 11:02:16'),
(75, 'inf.03', '2024-01-30 11:16:12'),
(76, 'inf.03', '2024-01-30 11:16:17'),
(77, 'inf.03', '2024-01-30 11:16:17'),
(78, 'inf.03', '2024-01-30 11:20:27'),
(79, 'inf.03', '2024-01-30 11:23:59'),
(80, 'inf.03', '2024-01-30 11:23:59'),
(81, 'inf.03', '2024-01-30 11:38:17'),
(82, 'inf.03', '2024-01-30 11:38:17'),
(83, 'inf.03', '2024-01-31 10:42:28'),
(84, 'inf.03', '2024-01-31 10:42:28'),
(85, 'inf.03', '2024-01-31 10:50:17'),
(86, 'inf.03', '2024-01-31 11:12:27'),
(87, 'inf.03', '2024-01-31 11:12:27'),
(88, 'inf.03', '2024-01-31 11:25:49'),
(89, 'inf.03', '2024-01-31 11:25:49'),
(90, 'inf.03', '2024-01-31 11:28:45'),
(91, 'inf.03', '2024-01-31 11:37:01'),
(92, 'inf.03', '2024-01-31 11:37:01'),
(93, 'inf.03', '2024-01-31 11:37:48'),
(94, 'inf.03', '2024-01-31 11:37:48'),
(95, 'inf.03', '2024-01-31 11:49:29'),
(96, 'inf.03', '2024-01-31 11:49:29'),
(97, 'inf.03', '2024-01-31 11:51:11'),
(98, 'inf.03', '2024-02-06 18:09:57'),
(99, 'inf.03', '2024-02-06 18:09:57'),
(100, 'inf.03', '2024-02-06 18:40:39'),
(101, 'inf.03', '2024-02-06 18:40:39'),
(102, 'inf.03', '2024-02-06 19:37:19'),
(103, 'inf.03', '2024-02-06 19:37:19'),
(104, 'inf.03', '2024-02-06 19:38:28'),
(105, 'inf.03', '2024-02-06 19:38:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `typ` int(11) DEFAULT NULL,
  `kwalifikacja1` text DEFAULT NULL,
  `kwalifikacja2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `typ`, `kwalifikacja1`, `kwalifikacja2`) VALUES
(5, 'trener.inf02', '3e0022355b4c77908fb1cf156cdf56639b830689', 2, '1', '0'),
(6, 'trener.inf03', '9b20f676cdeb8b4bc30d2cd463071d2483dc4423', 2, '2', '0'),
(7, 'test1', '1696c03333a23a711b4a0df06ae297889ffc2246', 3, '1', '2'),
(8, 'test.inf02', 'f3d47e59a7de4519661d0530fd43e2d8d535649f', 3, '1', NULL),
(14, 'test.inf2', '49b86382052831e65b8a52d0fae3f697374467cf', 3, '1', NULL),
(15, 'inf.03', '42d597b39eaf94ef96474f5ff256b3493b23c3a2', 3, '2', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kwalifikacje`
--
ALTER TABLE `kwalifikacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sesja`
--
ALTER TABLE `sesja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kwalifikacje`
--
ALTER TABLE `kwalifikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sesja`
--
ALTER TABLE `sesja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
