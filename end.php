

<!DOCTYPE html>
<html lang="pl-PL">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy teoretyczny</title> 
  <link rel="stylesheet" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>  
</head>
<body>

<div>
        <h3>EGZAMIN - Wynik test</h3>    
        <div class="pytania left">

<?php
  session_start();

 /* $kwalifikacja=$_GET['k'];
  $symbol=$_GET['s'];
  $_SESSION['kwalifikacja']=$kwalifikacja;
  $_SESSION['symbol']=$symbol;
  //echo "Kawalifikacja: ". $kwalifikacja . "<br>";
  //echo "sesja[login]" . $_SESSION["login"] . "<br>";
  
  if( isset($_SESSION["login"]) ){
    //losuj pytania
    
    $sql="SELECT * from PYTANIA where kwal=$kwalifikacja"; 
    $con = mysqli_connect("localhost","root","","egzamin");
// echo $sql;
    $result = mysqli_query($con,$sql);
    $QUESTIONS=mysqli_num_rows($result);
    
// echo "\n pytań: ". $QUESTIONS;

    $question=[];
    while ($row = $result->fetch_row()){
      array_push($question,$row[0]);
    }
    if($QUESTIONS>$EGZAM_QUESTIONS){ // losowanie pytań 
      shuffle( $question );
      $QUESTIONS=$EGZAM_QUESTIONS;
      
    } 
    $_SESSION['QUESTIONS']=$QUESTIONS;

*/
    
    $wynik=0;
    for( $i=0; $i<$_SESSION['QUESTIONS']; $i++){
           $q="q".$i;
           //echo "q=".$q;
           print_r( $_SESSION[$q] );
           echo "<br>";
         // echo $_SESSION['odpowiedzi'][$i]."<br>";
           if( $_SESSION[$q][1]==$_SESSION['odpowiedzi'][$i] ){
            $wynik++;
            print_r($_SESSION['odpowiedzi']); echo "<br>";
           }
    }
    
  //  print_r( $_SESSION ); 
    echo "wynik: ".$wynik. " / ".$_SESSION['QUESTIONS'];
?>
</body>
</html> 

