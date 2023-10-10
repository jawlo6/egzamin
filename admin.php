<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy</title>
</head>
<body>

  

<h3>Zarządzanie trenerami </h3>

<form action="trenerzy.php" method="post">
<label for="login">login</label>
<input type="text" id="login" name="login" required><br>
<label for="password">password</label>
<input type="text" id="password" name="password" required><br>

<?php
    session_start();
       
    $con = mysqli_connect("localhost","root","","egzamin");
    $sql="SELECT * from KWALIFIKACJE "; 
  
    $result = mysqli_query($con,$sql);
    $i=1;
  
    while( $row=mysqli_fetch_assoc( $result)){
      echo "<input type=\"checkbox\" id=\"k".$i."\" name=\"checkArr[]\" value=\"".$i."\">";
      echo "<label for=\"k".$i."\">". $row['symbol'] . "." . $row['nazwa'] . "</label><br>";
      $i++;
   }
      
    $result->close();      
?>

<input type="submit" name="submit" value="Dodaj trenera"></input><br><br>

</form>
<h3 id="test">Lista trenerów:</h3>
<?php

    $con = mysqli_connect("localhost","root","","egzamin");
    $sql="SELECT * from USER where typ=2";   // wybór trenerów
  
    $result = mysqli_query($con,$sql);
    $i=1;
  
    while( $row=mysqli_fetch_assoc( $result)){
      echo  $i . " " . $row['login'] . " - " . $row['kwalifikacja1'] . "<br>";
      $i++;
   }
      




  if( isset( $_POST['login'])){ // dopisz
    $nowy=$_POST['login'];
    $pass=$_POST['password'];
    $kwal=[0,0];
    if( isset( $_POST['submit'] )){
      if( !empty($_POST['checkArr'])){
        $i=0;
        foreach( $_POST['checkArr'] as $checked ){
          $kwal[$i++]= $checked ;
        }
      }
    }
    $sql="INSERT INTO USER( login, password, typ, kwalifikacja1, kwalifikacja2) ".
                     "VALUES( \"".$nowy."\",\"".sha1(".$pass.")."\", 2, $kwal[0], $kwal[1] )"; 
                     
    $result = mysqli_query($con,$sql);
   
    $sql="SELECT * from USER ";
    echo "id, login, password, kwalifikacja1, kwalifikacja2 <br>";
    $result = mysqli_query($con,$sql);
    while( $row=mysqli_fetch_assoc( $result) ){
      echo $row['id']." - ".$row['login'] . " - " . $row['password'] . " - ". $row['kwalifikacja1']." - ".$row['kwalifikacja2'] ."<br>";
   }
         
  }
?>


</body>
</html>