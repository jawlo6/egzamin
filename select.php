<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Egzamin zawodowy</title>
</head>
<body>
<script>
    localStorage.setItem("minuty",60);
    localStorage.setItem("sekundy",0);
</script>

<?php
  session_start();
  require  "db_connect.php";      
  $con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );

//  echo "host".$host;
  $user=$_POST['login'];
  $pass=$_POST['password'];
  $_SESSION["login"]=$user;

//echo "user: ". $user."<br>";
  if( isset( $_POST['login'])){ // 
    

    $sql="SELECT * FROM USER 
          WHERE login=\"".$user."\" and password=\"".sha1(".$pass.")."\""; 
   // echo "sql: " . $sql."<br>";
    
    $result = mysqli_query($con,$sql);
  //print_r( $result );
    if( $row=mysqli_fetch_assoc( $result) ){
      $_SESSION["IDuser"]=$row['id'];
      $_SESSION["kwalifikacja"]=$row['kwalifikacja1'];
      echo "typ ".$row['typ'];
      switch( $row['typ'] ){  
        case 1:   //admin
          login_admin();
          break;
        case 2:   //trener
          login_trener();
          break;  
        case 3:   //test
          login_test();
          break;
        case 4: 
          login_uczen();
          break;  
        default:
          
      }

      echo  $row['id']." - ".
            $row['login'] . " - " . 
            $row['password'] . " - ". 
            $row['typ'] . " - ". 
            $row['kwalifikacja1']." - ".
            $row['kwalifikacja2'] ."<br>";
      
    }else{
      echo  "Nie ma takiego użytkownika";
    }

  }else{
   // echo "unset $user";
  }

  function login_admin(){

  }
  
 
  function login_trener(){
    require  "db_connect.php";   
    $con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );

    $sql="SELECT * from kwalifikacje where id=".$_SESSION["kwalifikacja"]; 
    $result = mysqli_query($con,$sql);
    $row=mysqli_fetch_row( $result);
    $_SESSION['kwalifikacjaSymbol']=$row[1];
    $_SESSION['kwalifikacjaNazwa']=$row[2];

    echo "<script>window.location.replace(\"trener.php?\");</script>"; 
    
  }

  function login_uczen(){
    $user=$_SESSION["login"];
    require  "db_connect.php";   
    $con = mysqli_connect( $host, $db_user, $db_pasword, $db_name );
    $sql="INSERT into SESJA( user ) VALUES ( \"".$user ."\" );"; 
  
    $result = mysqli_query($con,$sql);
    
    $sql="SELECT kwalifikacja1 from user where id=".$_SESSION["IDuser"]; 
  
    $result = mysqli_query($con,$sql);
    $tab=[0,0,0,0,0,0,0];
    $_SESSION['odpowiedzi']=$tab;
    $_SESSION['answer']=0;
    $_SESSION['stoper']=0;

    /// time 
    $start_time=date("Y-m-d H:i");
    $_SESSION['start_time']=$start_time;
    $time=time();
    $end_time=date("Y-m-d H:i",$time+60*60);
    $_SESSION['end_time']=$end_time;

      
    $row=mysqli_fetch_row( $result);
    $kwalifikacja=$row[0];
    $_SESSION['kwalifikacjaID']=$kwalifikacja;
      
    //$MAX_QUESTION=$result->num_rows; 

    $sql="SELECT * from kwalifikacje where id=".$kwalifikacja; 
    $result = mysqli_query($con,$sql);
    $row=mysqli_fetch_row( $result);
    $_SESSION['kwalifikacjaSymbol']=$row[1];

   // echo "$row[1]: ".$row[1];

   echo "<script>window.location.replace(\"egzam.php?k=". $kwalifikacja ."&s=".$_SESSION['kwalifikacjaSymbol']."\");</script>"; 

  }
  
/*

    $kwal=[0,0];
    if( isset( $_POST['submit'] )){
      if( !empty($_POST['checkArr'])){
        $i=0;
        foreach( $_POST['checkArr'] as $checked ){
          $kwal[$i++]= $checked ;
        }
      }
    }
    $sql="INSERT INTO USER( login, password, kwalifikacja1, kwalifikacja2) ".
                     "VALUES( \"".$nowy."\",\"".sha1(".$pass.")."\", $kwal[0], $kwal[1] )"; 
                     
    $result = mysqli_query($con,$sql);
   
    $sql="SELECT * from USER ";
    echo "id, login, password, kwalifikacja1, kwalifikacja2 <br>";
    $result = mysqli_query($con,$sql);
    while( $row=mysqli_fetch_assoc( $result) ){
      echo $row['id']." - ".$row['login'] . " - " . $row['password'] . " - ". $row['kwalifikacja1']." - ".$row['kwalifikacja2'] ."<br>";
   }
         
  }
  */
?>



</body>
</html>