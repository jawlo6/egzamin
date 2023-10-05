

<!DOCTYPE html>
<html lang="pl-PL">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy teoretyczny</title> 
  <link rel="stylesheet" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>  
<script>
var question;
function showUser(str) {
  question=str;
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","getuser.php?q="+str,true);
    console.log("getuser.php?q="+str)
    xmlhttp.send();
  }
}

function saveAnswer( ) {
  str=document.forms["answer"]["radio"].value;
  if (str == "") {
    document.getElementById("wynik").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("wynik").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","getuser.php?a="+str+"&o="+question,true);
    console.log("getuser.php?a="+str+"&o="+question)
    xmlhttp.send();
  }
}
</script>
</head>
<body>

<div>
        <h3>EGZAMIN - LISTA ZADAŃ</h3>    
        <div class="pytania left">

<?php
  session_start();

  $kwalifikacja=$_GET['k'];
  $_SESSION['kwalifikacja']=$kwalifikacja;
  echo "Kawalifikacja: ". $kwalifikacja . "<br>";
  echo "sesja[login]" . $_SESSION["login"] . "<br>";
  

  $EGZAM_QUESTIONS=40;

  if( isset($_SESSION["login"]) ){
    //losuj pytania
    
    $sql="SELECT * from PYTANIA where kwal=$kwalifikacja"; 
    $con = mysqli_connect("localhost","root","","egzamin");
   // echo $sql;
    $result = mysqli_query($con,$sql);
    $QUESTIONS=mysqli_num_rows($result);
    
    echo "\n pytań: ". $QUESTIONS;

    $question=[];
    while ($row = $result->fetch_row()){
      array_push($question,$row[0]);
    }
    if($QUESTIONS>$EGZAM_QUESTIONS){ // losowanie pytań 
      shuffle( $question );
      $QUESTIONS=$EGZAM_QUESTIONS;
    }
    

    for( $i=0; $i<$QUESTIONS; $i++){
           $q="q".$i;
           $_SESSION[$q]=$question[$i];
       //   echo "<br>Question: ".  $question[$i];
           
    }
    
    $result->close();
   }

 
  
      for( $i=0; $i<4; $i++ ){
        echo "<form action=\"question.php\" method=\"get\">";
          echo "<div class=\"pytanie\">\n";
          echo "      <div class=\"przycisk\">\n";
          $q="q".$i;
          $j=$i+1;
          echo "      <a class=\"btn\" href=\"question.php?q=$_SESSION[$q]\">Zadanie $j </a>\n";
          echo "</div>";
          if( $_SESSION['odpowiedzi'][$i] ){
            $stan="Udzielono odpowiedzi";
          }else{
            $stan="Nie udzielono odpowiedzi";
          }
          echo "<div class=\"status\">".$stan."</div>";   
          echo "</div>";
        echo "</form>\n";
      }
?>
       
        </div>
        <div class="info left">
            <div class="left">
              <div>
                <label for="kwa">Kwalifikacja</label>
                <input type="text" name="kwa" value="INF.03">
              </div>
              <div>
                <label for="start">Czas rozpoczęcia egzaminu</label>
                <input type="text" name="start" value="2023-06-01 9:00">
              </div>
              <div>
                <label for="end">Czas zakończenia egzaminu</label>
                <input type="test" name="end" value="2023-06-01 10:00">
              </div>
              <div>
                <label for="etap">Liczba udzielonych odpowiedzi</label>
                <input type="text" name="etap" value="0">
              </div>
              <div>
                <label for="pozostalo">Liczba nieudzielonych odpowiedzi</label>
                <input type="text" name="pozostalo" value="40">
              </div>
              <div>
                <p>Do końca egzaminu pozostało</p>
                <p class="time">9:00</p>
              </div>
              
                
                <button >Zakończ egzamin</button>
            </div>
        </div>
    </div>

  

</body>
</html> 

