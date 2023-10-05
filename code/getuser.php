<!DOCTYPE html>
<html>
<head>

  <html lang="pl-PL">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
table {
  width: 100%;
  border-collapse: collapse;
}

table, td, th {
  border: 1px solid black;
  padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>
<?php

$con = mysqli_connect("localhost","root","","egzamin");
if (!$con){
  die("Could not connect: " . mysqli_error($con));
}

if( isset( $_GET["q"] ) ){
  $q = intval($_GET["q"]);
  $sql="SELECT * FROM pytania WHERE id = '".$q."'";
  $result = mysqli_query($con,$sql);
  
  $row = mysqli_fetch_assoc($result);

  $pytanie=$row['pytanie'];
  $odp1=$row['odpowiedz1'];
  $odp2=$row['odpowiedz2'];
  $odp3=$row['odpowiedz3'];
  $odp4=$row['odpowiedz4'];
    
  echo "<div> 
    $pytanie 
  </div>
  <ol>
    <li>$odp1</li>  
    <li>$odp2</li>  
    <li>$odp3</li>  
    <li>$odp4</li>  
  </ol>";
  
}else{ 
  $a = intval($_GET["a"]);
  $o = intval($_GET["o"]);
  echo $o;
  $sql="INSERT into ODPOWIEDZI( pytanie, odpowiedz ) VALUES ( $o, $a )";
  $result = mysqli_query($con,$sql);
  echo $a;
}

