<!DOCTYPE html>
<html>
<head>

  <html lang="pl-PL">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  
</head>
<body>
<?php
  session_start();


  $numer=$_GET['q'];   
  $q="q".($numer-1);
  $question=$_SESSION[$q];
  $_SESSION['question']=$numer;
echo "pytanie: ". $question;
  $sql="SELECT * from PYTANIA where id=$question "; 
  $login= $_SESSION["login"];
  
  $con = mysqli_connect("localhost","root","","egzamin");

  if (!$con){
    die("Could not connect: " . mysqli_error($con));
  }

  $result = mysqli_query($con,$sql);
  $row=mysqli_fetch_assoc($result);
  
  //print_r( $row );
  //echo "<br>";
  
  $pytanie=$row['pytanie'];
  $odp1=$row['odpowiedz1'];
  $odp2=$row['odpowiedz2'];
  $odp3=$row['odpowiedz3'];
  $odp4=$row['odpowiedz4'];
  $nazwaObrazka=$row['nazwaObrazka'];
  $nazwaObrazka1=$row['nazwaObrazka1'];
  $nazwaObrazka2=$row['nazwaObrazka2'];
  $nazwaObrazka3=$row['nazwaObrazka3'];
  $nazwaObrazka4=$row['nazwaObrazka4'];
  $poprawna=$row['poprawna'];         /////////////do poprawy



  echo "Pytanie  $numer :<br>";

  echo $pytanie . "<br>";
  if( $nazwaObrazka ){
    echo "<img src=\"img\\$nazwaObrazka\">" . "<br>";
  }
  

  echo "\n<form name=\"answer\" action=\"answer.php?q=".$numer."\" method=\"post\">\n";  
    echo "<input type=\"radio\" name=\"radio\" id=\"odp1\" value=\"1\">\n";
    echo "<label for=\"odp1\">A. " .$odp1 . "</label><br>\n";
    echo $nazwaObrazka1 . "<br>\n";

    echo "<input type=\"radio\"  name=\"radio\" id=\"odp2\" value=\"2\">\n";
    echo "<label for=\"odp2\">B. " .$odp2 . "</label><br>\n";
    echo $nazwaObrazka2 . "<br>\n";

    echo "<input type=\"radio\"  name=\"radio\" id=\"odp3\" value=\"3\">\n";
    echo "<label for=\"odp2\">C. " .$odp3 . "</label><br>\n";
    echo $nazwaObrazka3 . "<br>\n";

    echo "<input type=\"radio\"  name=\"radio\" id=\"odp4\" value=\"4\">\n";
    echo "<label for=\"odp2\">D. " .$odp4 . "</label><br>\n";
    echo $nazwaObrazka4 . "<br>\n";  

    echo "<input type=\"submit\" value=\"Zapisz odpowiedź\">";
  echo "</form>";
  echo "<p id=\"wynik\"></p>";
?>

 