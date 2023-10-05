

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
        <h3>EGZAMIN - LISTA ZADAŃ</h3>    
        <div class="pytania left">

<?php
  session_start();

  $_SESSION['start_time']=time();
  $_SESSION['end_time']=time()+60*60;

  $kwalifikacja=$_GET['k'];
  $symbol=$_GET['s'];
  $_SESSION['kwalifikacja']=$kwalifikacja;
  $_SESSION['symbol']=$symbol;
  //echo "Kawalifikacja: ". $kwalifikacja . "<br>";
  //echo "sesja[login]" . $_SESSION["login"] . "<br>";
  
  $EGZAM_QUESTIONS=40;

    if( isset($_SESSION["login"]) ){
    //losuj pytania
    
    $sql="SELECT * from PYTANIA where kwal=$kwalifikacja"; 
    $con = mysqli_connect("localhost","root","","egzamin");
// echo $sql;
    $result = mysqli_query($con,$sql);
    $QUESTIONS=mysqli_num_rows($result);
    
// echo "\n pytań: ". $QUESTIONS;

    $question=[];  //nr pytania i odpowiedź 
    while ($row = $result->fetch_row()){
      array_push($question,[$row[0],$row[11],0]);
    }
    if($QUESTIONS>$EGZAM_QUESTIONS){ // losowanie pytań 
      shuffle( $question );
      $QUESTIONS=$EGZAM_QUESTIONS;  
    } 
   
    $_SESSION['QUESTIONS']=$QUESTIONS;
    for( $i=0; $i<$QUESTIONS; $i++){
           $q="q".$i;
           $_SESSION[$q]=$question[$i];         
    }
    
    $result->close();
   }
  
      for( $i=1; $i<=$QUESTIONS; $i++ ){
        echo "<form action=\"question.php\" method=\"get\">";
          echo "<div class=\"pytanie\">\n";
          echo "      <div class=\"przycisk\">\n";
          echo "      <a class=\"btn\" href=\"question.php?q=$i\">Zadanie $i </a>\n";
          echo "</div>";
          if( $_SESSION['odpowiedzi'][$i-1] ){
            $stan="Udzielono odpowiedzi";
          }else{
            $stan="Nie udzielono odpowiedzi";
          }
          echo "<div class=\"status\">".$stan."</div>";   
          echo "</div>";
        echo "</form>\n";
      }
      //print_r( $_SESSION ); 
?>
       
        </div>
        <div class="info left">
            <div class="left">
              <form method="post" action="end.php">
              <div>
                <label for="kwa">Kwalifikacja</label>
                <?php
                echo "<input type=\"text\" name=\"kwa\" value=\"".$symbol."\">";
                ?>
              </div>
              <div>
                <label for="start">Czas rozpoczęcia egzaminu</label>
<?php
                echo "<input type=\"text\" name=\"start\" value=\"".date('H:i:s',$_SESSION['start_time'])."\">";
?>
              </div>
              <div>
                <label for="end">Czas zakończenia egzaminu</label>
<?php
                echo "<input type=\"test\" name=\"end\" value=\"".date('H:i:s',$_SESSION['end_time']) ."\">";
?>
              </div>
              <div>
                <label for="etap">Liczba udzielonych odpowiedzi</label>
<?php                
                echo "<input type=\"text\" name=\"etap\" value=\"".$_SESSION['answer']."\">";
?>
              </div>
              <div>
                <label for="pozostalo">Liczba nieudzielonych odpowiedzi</label>
<?php
                $remains=$_SESSION['QUESTIONS']-$_SESSION['answer'];
                echo "<input type=\"text\" name=\"pozostalo\" value=\"".$remains."\">";
?>
              </div>
              <div>
                <p>Do końca egzaminu pozostało</p>
                <input type="text" class="time" id="timer" value="">
              </div>
              
                
                <input type="submit" value="Zakończ egzamin">
              </form>
            </div>
        </div>
    </div>
    <script>
    let minutes=localStorage.getItem("minuty");
    let seconds=localStorage.getItem("sekundy");
    
    function stoper(){
        let timer=setInterval(function(){
            if(seconds==0){
                if(minutes==0){
                  window.location.replace("end.php");
                }else{
                    minutes--;
                }
                seconds=59;
            }else{
                seconds--;
            }
            if(seconds<10){
                seconds="0"+seconds;
            }
            if(minutes<10){
                minutes="0"+minutes;
            }
            let time=minutes+':'+seconds;
            let place=document.querySelector('#timer');
            place.value=time;
            localStorage.setItem("minuty",minutes);
            localStorage.setItem("sekundy",seconds);
        }, 1000);
    }
    stoper();
</script>
  

</body>
</html> 

