<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        for($i=1; $i<11; $i++){
            echo " $i <br>";
        };
        echo "<br>";

        for($i=10; $i<=60; $i+=2){
            echo " $i <br>";
        };
        echo "<br>";
        for($i=1; $i<=10; $i++){
            echo "$i * $i= ".$i*$i."<br>";
        };
        for($i='A'; $i<='G'; $i++){
            echo "<h2> $i </h2>";
        };
        echo "<ol>";
        for($i=1;$i<=10; $i++){
            echo "<li>".$i**3;
        };
        echo "</ol>";
    ?>
</body>
</html>