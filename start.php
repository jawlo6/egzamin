<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy</title>
</head>
<body>

  <form action="login.php" method="post">
    <label for="login">Podaj nick</label>
    <input type="text" name="login" id="login" required> 
    <label for="password">Podaj hasło</label>
    <input type="password" name="password" required>

    <input type="submit" value="Dalej"</input>
  </form> 

  <h2>Wybierz kwalifikację</h2>
  <?php
    
    session_start();
  
    require  "db_connect.php";   
    $con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );
    $sql="SELECT * from kwalifikacje"; 
    $result = mysqli_query($con,$sql);

    if( mysqli_num_rows( $result)>0 ){
      while( $row=mysqli_fetch_assoc( $result)){
        $_SESSION["kwalifikacja"]=$row["symbol"];
        $_SESSION["kwalifikacjaSymbol"]=$row["nazwa"];
        echo "<a href=\"zestaw.php?kwal=" . $row["id"]. "\">" .  $row["symbol"] . " ".$row["nazwa"]. "</a> <br>";
      }
    }
    
  ?>

  <script>
    document.getElementById("login").focus();
    localStorage.removeItem("minuty");
    localStorage.removeItem("sekundy");
</script>

</body>
</html>
