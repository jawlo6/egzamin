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
    <input type="text" name="login" required> 
    <label for="password">Podaj hasło</label>
    <input type="password" name="password" required>

    <input type="submit" value="Dalej"</input>
  </form> 
  <script>
  localStorage.removeItem("minuty");
  localStorage.removeItem("sekundy");
</script>

</body>
</html>
