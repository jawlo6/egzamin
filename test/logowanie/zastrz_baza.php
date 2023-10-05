<?php
  $uzytkownik = $_POST['uzytkownik'];
  $haslo = $_POST['haslo'];

  if((!isset($uzytkownik)) || (!isset($haslo))) {

    //U�ytkownik musi poda� sw�j identyfikator i has�o
?>
    <h1>Zaloguj si�</h1>
    <p>Ta strona jest zastrze�ona.</p>
    <form method = post action = "zastrz_baza.php">
    <p>U�ytkownik: <input type = "text" name = "uzytkownik"></p>
    <p>Has�o: <input type = "password" name = "haslo"></p>
    <p><input type = "submit" name="submit" value = "Zaloguj si�"></p>
    </form>

<?php
  } else {
    // po��cz si� z MySQL
    $mysql = mysqli_connect("localhost", "uwierzytel", "uwierzytel");
    if(!$mysql) {
      echo "Brak po��czenia z baz� danych.";
      exit;
    }
    // wybierz w�a�ciw� baz� danych
    $wybrana = mysqli_select_db($mysql, "uwierz");
    if(!$wybrana) {
      echo "B��d wyboru bazy danych.";
      exit;
    }

    // znajd� pasuj�cy wiersz
    $zapytanie = "select count(*) from uwierzytelnieni_uzytkownicy where
                  uzytkownik = '".$uzytkownik."' and
                  haslo = sha1('".$haslo."')";

    $wynik = mysqli_query($mysql, $zapytanie);
    if(!$wynik) {
      echo "Nie mo�na wykona� zapytania.";
      exit;
    }

    $wiersz = mysqli_fetch_row( $wynik );
    $ile = $wiersz[0];

    if ($ile > 0) {
      // podana kombinacja: identyfikator i has�o jest prawid�owa
      echo "<h1>Oto ona!</h1>
            <p>Na pewno jeste� szcz�liwy, �e mo�esz zobaczy� t� stron�.</p>";
    } else {
      // kombinacja: identyfikator i has�o dost�pu jest nieprawid�owa
      echo "<h1>Odejd� st�d!</h1>
            <p>Nie jeste� uprawniony do przegl�dania tych zasob�w.</p>";
    }
  }
?>