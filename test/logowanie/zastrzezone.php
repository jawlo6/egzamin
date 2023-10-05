<?php
  // utworzenie krótkich nazw zmiennych
  $uzytkownik = $_POST['uzytkownik'];
  $haslo = $_POST['haslo'];

  if((!isset($uzytkownik)) || (!isset($haslo))) {

    //U¿ytkownik musi podaæ swój identyfikator i has³o
?>
    <h1>Zaloguj siê</h1>
    <p>Ta strona jest zastrze¿ona.</p>
    <form method = post action = "zastrzezone.php">
    <p>U¿ytkownik: <input type = "text" name = "uzytkownik"></p>
    <p>Has³o: <input type = "password" name = "haslo"></p>
    <p><input type = "submit" name="submit" value = "Zaloguj siê"></p>
    </form>
<?php
  } else if(($uzytkownik=="uzytkownik") && ($haslo=="haslo")) {
    // kombinacja: identyfikator i haslo jest poprawna
    echo "<h1>Oto ona!</h1>
          <p>Na pewno jesteœ szczêœliwy, ¿e mo¿esz zobaczyæ tê stronê.</p>";
  } else {
    // kombinacja: identyfikator i haslo jest nieprawidlowa
    echo "<h1>OdejdŸ st¹d!</h1>
          <p>Nie jesteœ uprawniony do przegl¹dania tych zasobów.</p>";
  }
?>
