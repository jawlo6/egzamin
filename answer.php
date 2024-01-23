

<!DOCTYPE html>
<html lang="pl-PL">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
  
</head>
<body>

<?php
  session_start();

  $kwal=$_SESSION['kwalifikacja'];
  $numer=$_SESSION['question'];
  $answer=$_POST['radio'];
  $dane= "pytanie: $numer  odpowiedź: $answer,  ". $numer-1;

  if( !$_SESSION['odpowiedzi'][$numer-1] ){
    $_SESSION['answer']++;
  }
  $q="q".($numer-1);
  $_SESSION[$q][2]=$answer; 
  echo "answer: ". $answer;

  $sql="INSERT into odpowiedzi( sesja, user, pytanie, odpowiedz )
    VALUES ( \"".$_SESSION['login'] ."\", \"". $_SESSION['login'] ."\", ". $numer .", ". $answer ." )";   

require  "db_connect.php";  
$con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );
  mysqli_query($con,$sql); 

  $myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
  fwrite($myfile, $sql);
  $link="<script>window.location.replace(\"egzam.php?zestaw=". $_SESSION['zestaw']."\");</script>"; 
  fwrite($myfile, $dane);
  $_SESSION['odpowiedzi'][$numer-1]=$answer;
  fwrite($myfile, $_SESSION['odpowiedzi'][$numer-1]);
  fclose($myfile);
 mysqli_query($con,$sql); 
 
 echo     $link;
 
 //print_r( $_SESSION ); 
// echo "<button>";
// echo "<a href=\"egzam.php?k=". $kwal ."&s=".$_SESSION['symbol']."\">Odpowiedź zapisana</a>";
// echo "</button>";