-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Mar 2023, 07:52
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

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
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
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
  `kwal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `nazwaObrazka`, `nazwaObrazka1`, `nazwaObrazka2`, `nazwaObrazka3`, `nazwaObrazka4`, `poprawna`, `created`, `kwal`) VALUES
(1, 'Metoda projektowania algorytmów, polegająca na podziale problemu na dwa lub więcej mniejszych podproblemów, tak długo aż fragmenty staną się wystarczająco proste do bezpośredniego rozwiązania, to', 'dziel i zwyciężaj', 'sito Eratostenesa', 'słowa Fibonacciego', 'sortowanie przez wybór', NULL, NULL, NULL, NULL, NULL, 1, '2023-03-01 07:35:45', 2),
(2, 'Program zapisany w języku C++ ma za zadanie wczytać zmienną całkowitą liczba i wyświetlić ją wtedy, gdy przyjmuje trzycyfrowe wartości parzyste. Instrukcja warunkowa sprawdzająca ten warunek powinna zawierać wyrażenie logiczne', 'liczba % 2 == 0 || liczba > 99 || liczba < 999', 'liczba % 2 == 0 && liczba > 99 && liczba < 999', 'liczba % 2 == 0 || (liczba > 99 && liczba < 999)', 'liczba % 2 == 0 && (liczba > 99 || liczba < 999)', NULL, NULL, NULL, NULL, NULL, 2, '2023-03-01 07:35:45', 2),
(3, 'W języku C++ zdefiniowano zmienną char zm1[10]; Zmienna ta jest:', 'liczbą.', 'znakiem.', 'tablicą znaków.', 'tablicą łańcuchów.', NULL, NULL, NULL, NULL, NULL, 3, '2023-03-01 07:35:45', 2),
(4, 'Która definicja tablicy asocjacyjnej w języku PHP jest poprawna składniowo?', '$wiek = array(\"Anna\"=35, \"Ewa\"=37, \"Oliwia\"=43);', '$wiek = array([Anna, 35], [Ewa, 37], [Oliwia, 43]);', '$wiek = array(\"Anna\"=>\"35\", \"Ewa\"=>\"37\", \"Oliwia\"=>\"43\");', '$wiek = array({\"Anna\", \"35\"}, {\"Ewa\", \"37\"}, {\"Oliwia\", \"43\"});', NULL, NULL, NULL, NULL, NULL, 3, '2023-03-01 07:35:45', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sesja`
--

CREATE TABLE `sesja` (
  `id` int(11) NOT NULL,
  `user` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `sesja`
--

INSERT INTO `sesja` (`id`, `user`, `created`) VALUES
(1, 'test', '2023-03-01 07:47:05');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `typ`, `kwalifikacja1`, `kwalifikacja2`) VALUES
(1, 'test', 'da8140e52dfe8db1c93899482d90ff1f645dec69', 3, 2, 1);

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
-- AUTO_INCREMENT dla tabeli `kwalifikacje`
--
ALTER TABLE `kwalifikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `sesja`
--
ALTER TABLE `sesja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
