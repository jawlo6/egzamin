

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
  $dane= "pytanie: $numer  odpowiedź: $answer";
       
  $sql="INSERT into odpowiedzi( sesja, user, pytanie, odpowiedz )
    VALUES ( \"".$_SESSION['login'] ."\", \"". $_SESSION['login'] ."\", ". $numer .", ". $answer ." )";   

  $con = mysqli_connect("localhost","root","","egzamin");
  mysqli_query($con,$sql); 

  $myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
  fwrite($myfile, $sql);
  $link="<script>window.location.replace(\"egzam.php?k=". $kwal ."\");</script>"; 
  fwrite($myfile, $dane);
  $_SESSION['odpowiedzi'][$numer-1]=1;
  fwrite($myfile, $_SESSION['odpowiedzi'][$numer-1]);
  fclose($myfile);
 mysqli_query($con,$sql); 
 
 echo     $link;