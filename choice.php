<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy</title>
</head>
<body>
<H3>Wybierz kwalifikacje</H3>
 
<?php
  session_start();
     
  $nick=$_POST['nick'];
  $_SESSION["login"]=$nick;
  $con = mysqli_connect("localhost","root","","egzamin");
  $sql="INSERT into SESJA( user ) VALUES ( \"".$nick ."\" );"; 

   $result = mysqli_query($con,$sql);


//losuj pytania
    $sql="SELECT * from KWALIFIKACJE "; 

    $result = mysqli_query($con,$sql);
    $tab=[0,0,0,0];
    $_SESSION['odpowiedzi']=$tab;
    $_SESSION['answer']=0;
    $_SESSION['stoper']=0;
    $MAX_QUESTION=$result->num_rows;
 //   echo "\n kwalifikacje: ". $MAX_QUESTION;

    if($result){
        // Cycle through results
        $i=1;

        while( $row=mysqli_fetch_assoc( $result)){
          echo "<div><a href=\"egzam.php?k=".$row['id']."&s=".$row['symbol']."\">". $row['symbol'] . "." . $row['nazwa'] . "</a><br><br>";
          $i++;
        }
       // Free result set
       $result->close();
   }
    
  
?>


<script>
  localStorage.setItem("minuty",60);
  localStorage.setItem("sekundy",0);
</script>
  
</body>
</html>
