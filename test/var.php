Dynamiczne tworzenie zmiennych

<?php
$a = 'hello';
$$a = 'world';
//echo "$a ${$a}";

$pytania = array();

for( $i=0; $i<10;$i++){
    $q='question'.$i;
    echo $q . "<br>";
    $pytania[$q]=$i;
}
echo $pytania['question1'];
print_r( $pytania );

for( $i=0; $i<10;$i++){
    $q='question'.$i;
    echo 'klucz='. $q . 'value= '.$pytania[$q] ."<br>";
}
foreach( $pytania as $p => $value ){
    echo "Key: " . $p . " value: " . $value . "<br>";
}

//shuffle
$numbers = range(1, 20);
shuffle($numbers);
foreach ($numbers as $number) {
    echo "$number ";
}
?>

?> 

<script>
    let task=[
    ":active", ":autofill", ":checked", ":disabled", ":enabled", ":first", ":first-child", ":first-of-type", ":focus", ":hover", ":last", ":nth-child()", ":visited"];
    let toDo=[];
    let min=0;
    let max=14;
    let start=14;
    for( var i=1; i<start; i++){
        let number=Math.floor( Math.random()*max);
        toDo.push( task.splice( number-1, 1 ) );
        console.log( number);
        max--;
        document.write(  i+ " - " + toDo[i-1] +"<br>");
    }
    console.log( toDo );
</script>
