<?php
  // utworzenie kr�tkich nazw zmiennych
  $uzytkownik = $_POST['uzytkownik'];
  $haslo = $_POST['haslo'];

  if((!isset($uzytkownik)) || (!isset($haslo))) {

    //U�ytkownik musi poda� sw�j identyfikator i has�o
?>
    <h1>Zaloguj si�</h1>
    <p>Ta strona jest zastrze�ona.</p>
    <form method = post action = "zastrzezone.php">
    <p>U�ytkownik: <input type = "text" name = "uzytkownik"></p>
    <p>Has�o: <input type = "password" name = "haslo"></p>
    <p><input type = "submit" name="submit" value = "Zaloguj si�"></p>
    </form>
<?php
  } else if(($uzytkownik=="uzytkownik") && ($haslo=="haslo")) {
    // kombinacja: identyfikator i haslo jest poprawna
    echo "<h1>Oto ona!</h1>
          <p>Na pewno jeste� szcz�liwy, �e mo�esz zobaczy� t� stron�.</p>";
  } else {
    // kombinacja: identyfikator i haslo jest nieprawidlowa
    echo "<h1>Odejd� st�d!</h1>
          <p>Nie jeste� uprawniony do przegl�dania tych zasob�w.</p>";
  }
?>
