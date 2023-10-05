<?php

// je�li u�ywamy IIS, trzeba ustawi� zmienne
// $_SERVER['PHP_AUTH_USER'] oraz
// $_SERVER['PHP_AUTH_PW']
if ((substr($_SERVER['SERVER_SOFTWARE'], 0, 9) == 'Microsoft') &&
    (!isset($_SERVER['PHP_AUTH_USER'])) &&
    (!isset($_SERVER['PHP_AUTH_PW'])) &&
    (substr($_SERVER['HTTP_AUTHORIZATION'], 0, 6) == 'Basic ')
   ) {

  list($_SERVER['PHP_AUTH_USER'], $_SERVER['PHP_AUTH_PW']) =
    explode(':', base64_decode(substr($_SERVER['HTTP_AUTHORIZATION'], 6)));
}

// to wyra�enie warunkowe mo�na zast�pi� np. zapytaniem do bazy danych
if (($_SERVER['PHP_AUTH_USER'] != 'uzytkownik') ||
    ($_SERVER['PHP_AUTH_PW'] != 'haslo')) {
  // u�ytkownik nie poda� �adnych danych albo
  // podany identyfikator lub has�o s� nieprawid�owe

  header('WWW-Authenticate: Basic realm="Nazwa zasobu"');
  if (substr($_SERVER['SERVER_SOFTWARE'], 0, 9) == 'Microsoft') {
    header('Status: 401 Unauthorized');
  } else {
    header('HTTP/1.0 401 Unauthorized');
  }

  echo "<h1>Odejd� st�d!</h1>
        <p>Nie jeste� uprawniony do przegl�dania tych zasob�w.</p>";

} else {
  // u�ytkownik poda� prawid�owe dane
  echo "<h1>Oto ona!</h1>
        <p>Na pewno jeste� szcz�liwy, �e mo�esz zobaczy� t� stron�.</p>";
}

?>