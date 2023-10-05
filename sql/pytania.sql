--
-- Baza danych: `egzamin`
--

-- --------------------------------------------------------

--
-- Przykładowe pytania
--

INSERT into PYTANIA( pytanie, odpowiedz1, odpowiedz2, odpowiedz3, odpowiedz4, poprawna, kwal) 
VALUES ( 'Metoda projektowania algorytmów, polegająca na podziale problemu na dwa lub więcej mniejszych podproblemów, tak długo aż fragmenty staną się wystarczająco proste do bezpośredniego rozwiązania, to','dziel i zwyciężaj', 'sito Eratostenesa', 'słowa Fibonacciego', 'sortowanie przez wybór',1,2 );

INSERT into PYTANIA( pytanie, odpowiedz1, odpowiedz2, odpowiedz3, odpowiedz4, poprawna, kwal) 
VALUES ( 'Program zapisany w języku C++ ma za zadanie wczytać zmienną całkowitą liczba i wyświetlić ją wtedy, gdy przyjmuje trzycyfrowe wartości parzyste. Instrukcja warunkowa sprawdzająca ten warunek powinna zawierać wyrażenie logiczne','liczba % 2 == 0 || liczba > 99 || liczba < 999', 'liczba % 2 == 0 && liczba > 99 && liczba < 999', 'liczba % 2 == 0 || (liczba > 99 && liczba < 999)', 'liczba % 2 == 0 && (liczba > 99 || liczba < 999)',2,2 );

INSERT into PYTANIA( pytanie, odpowiedz1, odpowiedz2, odpowiedz3, odpowiedz4, poprawna, kwal) 
VALUES ( 'W języku C++ zdefiniowano zmienną char zm1[10]; Zmienna ta jest:','liczbą.', 'znakiem.', 'tablicą znaków.', 'tablicą łańcuchów.',3,2 );

INSERT into PYTANIA( pytanie, odpowiedz1, odpowiedz2, odpowiedz3, odpowiedz4, poprawna, kwal) 
VALUES ( 'Która definicja tablicy asocjacyjnej w języku PHP jest poprawna składniowo?','$wiek = array("Anna"=35, "Ewa"=37, "Oliwia"=43);', '$wiek = array([Anna, 35], [Ewa, 37], [Oliwia, 43]);', '$wiek = array("Anna"=>"35", "Ewa"=>"37", "Oliwia"=>"43");', '$wiek = array({"Anna", "35"}, {"Ewa", "37"}, {"Oliwia", "43"});',3,2 );




