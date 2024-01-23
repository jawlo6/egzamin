<!DOCTYPE html>
<html>
<head>

  <html lang="pl-PL">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<?php

  session_start();
  $pytanie=str_replace('"','\"',$_POST['pytanie']);
  $nr=$_POST['nr'];
  $odp1=str_replace('"','\"',$_POST['odp1']);
  $odp2=str_replace('"','\"',$_POST['odp2']);
  $odp3=str_replace('"','\"',$_POST['odp3']);
  $odp4=str_replace('"','\"',$_POST['odp4']);
  $poprawna=$_POST['correct'];
  $zestaw=$_POST['zestaw'];
  $kategoria=$_POST['kategoria'];
  $kwal= $_SESSION["kwalifikacja"];
echo "kwalifikacja: ". $kwal;
  ////////////////////////  obrazki
  $status="";
  $statusMsg="nie udało się"; 
  print_r( $_POST );
  $target_dir = "img/";

  //if(isset($_POST["submit"])){ 
      $status="error"; 
    
      $czas=date("Ymdhis");
  
      if(!empty($_FILES["imageFile"]["name"])) { 
          // Get file info 
          $fileName = basename($_FILES["imageFile"]["name"]); 
          echo "<br>Nazwa pliku: ". $fileName;
           
          // Allow certain file formats 
          //$allowTypes = array('jpg','png','jpeg','gif'); 
          //if(in_array($fileType,$allowTypes)){ 
            $tempFile = $_FILES['imageFile']['tmp_name']; 
            //echo "plik tymczasowy: " .$tempFile;
            $fileName = $czas.$fileName;    
            
            $target_file = $target_dir . $czas . basename($_FILES["imageFile"]["name"]);
            if (move_uploaded_file($_FILES["imageFile"]["tmp_name"], $target_file)) {
              echo "The file ". htmlspecialchars( basename( $_FILES["imageFile"]["name"])). " has been uploaded.";
            } else {
              echo "Sorry, there was an error uploading your file.";
          }
      }else{ 
          $statusMsg = "Please select an image file to upload."; 
          $fileName=NULL;
      } 


      if(!empty($_FILES["imageAnswer1"]["name"])) { 
        // Get file info 
        $fileName1 = basename($_FILES["imageAnswer1"]["name"]); 
        echo "<br>Nazwa pliku". $fileName1;
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 

        // Allow certain file formats 
        $allowTypes = array('jpg','png','jpeg','gif'); 
        //$nazwaObrazka1 = $fileName1;            
        $target_file = $target_dir . basename($_FILES["imageAnswer1"]["name"]);
        move_uploaded_file($_FILES["imageAnswer1"]["tmp_name"], $target_file);
      }else{ 
        $fileName1=NULL;
      } 
      if(!empty($_FILES["imageAnswer2"]["name"])) { 
        // Get file info 
        $fileName2 = basename($_FILES["imageAnswer2"]["name"]); 
        echo "<br>Nazwa pliku". $fileName2;
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 

        // Allow certain file formats 
        $allowTypes = array('jpg','png','jpeg','gif'); 
        //$nazwaObrazka1 = $fileName1;            
        $target_file = $target_dir . basename($_FILES["imageAnswer2"]["name"]);
        move_uploaded_file($_FILES["imageAnswer2"]["tmp_name"], $target_file);
      }else{ 
        $fileName2=NULL;
      } 
      if(!empty($_FILES["imageAnswer3"]["name"])) { 
        // Get file info 
        $fileName3 = basename($_FILES["imageAnswer3"]["name"]); 
        echo "<br>Nazwa pliku". $fileName3;
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 

        // Allow certain file formats 
        $allowTypes = array('jpg','png','jpeg','gif'); 
        //$nazwaObrazka1 = $fileName1;            
        $target_file = $target_dir . basename($_FILES["imageAnswer3"]["name"]);
        move_uploaded_file($_FILES["imageAnswer3"]["tmp_name"], $target_file);
      }else{ 
        $fileName3=NULL;
      } 
      if(!empty($_FILES["imageAnswer4"]["name"])) { 
        // Get file info 
        $fileName4 = basename($_FILES["imageAnswer4"]["name"]); 
        echo "<br>Nazwa pliku". $fileName4;
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 

        // Allow certain file formats 
        $allowTypes = array('jpg','png','jpeg','gif'); 
        //$nazwaObrazka1 = $fileName1;            
        $target_file = $target_dir . basename($_FILES["imageAnswer4"]["name"]);
        move_uploaded_file($_FILES["imageAnswer4"]["tmp_name"], $target_file);
      }else{ 
        $fileName4=NULL;
      } 

  //} 
   
  // Display status message 
  


///////////////////////   end obrazki





$sql="INSERT into PYTANIA( pytanie, nr, odpowiedz1, odpowiedz2,odpowiedz3,odpowiedz4,poprawna,nazwaObrazka,nazwaObrazka1,nazwaObrazka2,nazwaObrazka3,nazwaObrazka4,kwal,zestaw,kategoria )
    VALUES ( \"".$pytanie ."\", ".$nr . ",        \"". $odp1 ."\", \"". $odp2 ."\", \"". $odp3 ."\", \"". $odp4 ."\",". $poprawna . ",\"". $fileName . "\",\"". $fileName1 ."\","."\"". $fileName2 ."\","."\"". $fileName3 ."\","."\"". $fileName4 ."\",".$kwal.",\"". $zestaw . "\",".$kategoria." )"; 

  
echo "<br> sql=". $sql;       

  $con = mysqli_connect("localhost","root","","egzamin");

  if (!$con){
    die("Could not connect: " . mysqli_error($con));
  }

  $result = mysqli_query($con,$sql);

  echo "<br>błąd: ". mysqli_error($con);
