<!DOCTYPE html>
<html>
<head>
  <html lang="pl-PL">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy teoretyczny</title> 
  <link rel="stylesheet" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>  
<style>
  img{
	height: 30px;
	width: auto
}
</style>
</head>
<body>
<h3>Kwalifikacja</h3>
<?php
  session_start();
  // echo "<h4>". $_SESSION["kwalifikacja"];
  require  "db_connect.php";      
  $con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );

  $sql="SELECT * FROM kwalifikacje 
  WHERE id=\"".$_SESSION["kwalifikacja"]."\""; 
//echo "sql: " . $sql."<br>";

$result = mysqli_query($con,$sql);
if( $row=mysqli_fetch_assoc( $result) ){
  $_SESSION["symbol"]=$row['symbol'];
  $_SESSION["nazwaKwalifikacji"]=$row['nazwa'];
  echo "<h3>". $row['symbol'] . " " . $row['nazwa']."</h3>";
}


?>

<h3>Wstaw pytanie</h3>
  <form action="insertquestion.php" method="post" enctype="multipart/form-data">
    <div>
      <div>
        <label for="zestaw">Zestaw</label>
        <input type="text" name="zestaw">
      </div>  
    <div class="left">
      <div class="clearleft">Pytanie:</div>
      <div class="left">
        <textarea name="pytanie"  rows="10" cols="100" required></textarea><br>
      </div>
      <div class="left image" >obrazek?   
        
      </div>
      <div class="left">
        <input type="file" class="file" name="imageFile" value="Wstaw obrazek" id="imageFile" onchange="chosenImage(0)"> 
      </div>
    </div>
    <div class="clearleft">Odpowiedzi:</div>
    <div class="clearleft">
      <div class="left"> A:</div>
      <div class="left">
        <textarea name="odp1" rows="3" cols="100" required></textarea>
      </div>
      <div class="left image">obrazek?       
      </div>
      <div class="left">
        <input type="file" class="file" name="imageAnswer1" value="Wstaw obrazek" id="imageAnswer1" onchange="chosenImage(1)"> 
      </div>
    </div>
    <div class="clearleft"> 
    <div class="left"> B:</div>
      <div class="left">
        <textarea name="odp2" rows="3" cols="100" required> </textarea>
      </div>
      <div class="left image">obrazek?       
      </div>
      <div class="left">
        <input type="file" class="file" name="imageAnswer2" value="Wstaw obrazek" id="imageAnswer2" onchange="chosenImage(2)"> 
      </div>
    </div>
    <div class="clearleft">
    <div class="left"> C:</div>
      <div class="left">
        <textarea name="odp3" rows="3" cols="100" required> </textarea>
      </div>
      <div class="left image">obrazek?       
      </div>
      <div class="left">
        <input type="file" class="file" name="imageAnswer3" value="Wstaw obrazek" id="imageAnswer3" onchange="chosenImage(3)"> 
      </div>
    </div>
    <div class="clearleft">
    <div class="left"> D:</div>
      <div class="left">
        <textarea name="odp4" rows="3" cols="100" required> </textarea><br>
      </div>
      <div class="left image">obrazek?       
      </div>
      <div class="left">
        <input type="file" class="file" name="imageAnswer4" value="Wstaw obrazek" id="imageAnswer4" onchange="chosenImage(4)"> 
      </div>
    </div>
    </div>
    <div class="clearleft">Poprawna:</div>
    <div>
      <label for="correct">A:</label><input type="radio" name="correct" value="1">  
      <label for="correct">B:</label><input type="radio" name="correct" value="2">  
      <label for="correct">C:</label><input type="radio" name="correct" value="3">  
      <label for="correct">D:</label><input type="radio" name="correct" value="4">  
    </div>
    
    <div  style="clear:left" >
      <input type="submit" name="submit" value="Zapisz">
      <input type="reset" value="wyczyść">   
    </div>    
        
  </form>
    <script>
      const input = document.querySelectorAll('.file');
      console.log( {input});
      let image_div= document.querySelectorAll(".image");
      console.log( {image_div} );
      function chosenImage(nr){

        const curFiles = input[nr].files[0];
        console.log( {curFiles} );

        const image = document.createElement('img');
        image.src=URL.createObjectURL(curFiles);
       // image.className="image";
       image_div[nr].innerHTML="";
       image_div[nr].appendChild(image);


        console.log( image_div[nr] )          
               
      }
    </script>
</body>
</html> 

