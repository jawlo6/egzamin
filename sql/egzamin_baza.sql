-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Lis 2023, 12:14
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

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
-- Struktura tabeli dla tabeli `kwalifikacje`
--

CREATE TABLE `kwalifikacje` (
  `id` int(11) NOT NULL,
  `symbol` text DEFAULT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_general_ci;

--
-- Zrzut danych tabeli `kwalifikacje`
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
-- Zrzut danych tabeli `odpowiedzi`
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
(100, 'inf.03', 'inf.03', 1, 1);

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
-- Zrzut danych tabeli `pytania`
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
(30, 11, 'Po wykonaniu kodu PHP zostanie wyświetlona aktualna data zawierająca', 'dzień i rok.', 'jedynie rok.', 'rok i miesiąc.', 'dzień, miesiąc, rok.', '20231101094704p11.PNG', '', '', '', '', 3, '2023-11-01 09:47:04', 2, 'EE.09-SG-23.06', 1);

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
-- Zrzut danych tabeli `sesja`
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
(65, 'inf.03', '2023-10-25 21:55:54');

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
-- Zrzut danych tabeli `user`
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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kwalifikacje`
--
ALTER TABLE `kwalifikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `sesja`
--
ALTER TABLE `sesja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
