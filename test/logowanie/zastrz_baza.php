<?php
  $uzytkownik = $_POST['uzytkownik'];
  $haslo = $_POST['haslo'];

  if((!isset($uzytkownik)) || (!isset($haslo))) {

    //U¿ytkownik musi podaæ swój identyfikator i has³o
?>
    <h1>Zaloguj siê</h1>
    <p>Ta strona jest zastrze¿ona.</p>
    <form method = post action = "zastrz_baza.php">
    <p>U¿ytkownik: <input type = "text" name = "uzytkownik"></p>
    <p>Has³o: <input type = "password" name = "haslo"></p>
    <p><input type = "submit" name="submit" value = "Zaloguj siê"></p>
    </form>

<?php
  } else {
    // po³¹cz siê z MySQL
    $mysql = mysqli_connect("localhost", "uwierzytel", "uwierzytel");
    if(!$mysql) {
      echo "Brak po³¹czenia z baz¹ danych.";
      exit;
    }
    // wybierz w³aœciw¹ bazê danych
    $wybrana = mysqli_select_db($mysql, "uwierz");
    if(!$wybrana) {
      echo "B³¹d wyboru bazy danych.";
      exit;
    }

    // znajdŸ pasuj¹cy wiersz
    $zapytanie = "select count(*) from uwierzytelnieni_uzytkownicy where
                  uzytkownik = '".$uzytkownik."' and
                  haslo = sha1('".$haslo."')";

    $wynik = mysqli_query($mysql, $zapytanie);
    if(!$wynik) {
      echo "Nie mo¿na wykonaæ zapytania.";
      exit;
    }

    $wiersz = mysqli_fetch_row( $wynik );
    $ile = $wiersz[0];

    if ($ile > 0) {
      // podana kombinacja: identyfikator i has³o jest prawid³owa
      echo "<h1>Oto ona!</h1>
            <p>Na pewno jesteœ szczêœliwy, ¿e mo¿esz zobaczyæ tê stronê.</p>";
    } else {
      // kombinacja: identyfikator i has³o dostêpu jest nieprawid³owa
      echo "<h1>OdejdŸ st¹d!</h1>
            <p>Nie jesteœ uprawniony do przegl¹dania tych zasobów.</p>";
    }
  }
?>