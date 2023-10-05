<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy</title>
</head>
<body>

<h1>Zarządzanie uczniami</h1>
<h3>Tworzenie nowych uczniów:</h3>


<?php
    session_start();
       
  //$user=;

    echo $_SESSION['kwalifikacjaSymbol'] . " " . $_SESSION['kwalifikacjaNazwa'];

?>

<form action="trener.php" method="post">
<label for="login">login</label>
<input type="text" id="login" name="login" required><br>
<label for="password">password</label>
<input type="text" id="password" name="password" required><br>
<input type="submit" name="submit" value="Dodaj ucznia"></input><br><br>

</form>
<h3 id="test">Lista uczniów:</h3>
<?php
  if( isset( $_POST['login'])){ // dopisz
    $nowy=$_POST['login'];
    $pass=$_POST['password'];
    $kwal=$_SESSION["kwalifikacja"];
    
    $con = mysqli_connect("localhost","root","","egzamin");

    $sql="INSERT INTO USER( login, password, kwalifikacja1, typ) ".
                     "VALUES( \"".$nowy."\",\"".sha1(".$pass.")."\", $kwal, 3 )"; 
                     
    $result = mysqli_query($con,$sql);
   
    $sql="SELECT * from USER ";
    echo "id, login,  kwalifikacja <br>";
    $result = mysqli_query($con,$sql);
    while( $row=mysqli_fetch_assoc( $result) ){
      echo $row['id']." - ".$row['login'] . " - " .  $row['kwalifikacja1']. "<br>";
   }
         
  }
?>


</body>
</html>