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

  $pytanie=$_POST['pytanie'];
  $odp1=$_POST['odp1'];
  $odp2=$_POST['odp2'];
  $odp3=$_POST['odp3'];
  $odp4=$_POST['odp4'];
  $poprawna=1;         /////////////do poprawy

  $sql="INSERT into PYTANIA( pytanie, odpowiedz1, odpowiedz2,odpowiedz3,odpowiedz4,poprawna )
    VALUES ( \"".$pytanie ."\", \"". $odp1 ."\", \"". $odp2 ."\", \"". $odp3 ."\", \"". $odp4 ."\",". $poprawna ." )"; 

  echo $sql;
       
  $con = mysqli_connect("localhost","root","","egzamin");
  if (!$con){
    die("Could not connect: " . mysqli_error($con));
  }

  $result = mysqli_query($con,$sql);


