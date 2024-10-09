<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php   
        $pogoda=['rain', 'sunshine', 'clouds', 'hail', 'sleet', 'snow', 'wind'];
        echo "We've seen all kinds of weather this month. At the beginning of the month, we had $pogoda[5] and $pogoda[6]. Then came $pogoda[1] with a few $pogoda[2] and some $pogoda[0]. At least we didn't get any $pogoda[3] or $pogoda[4].";
        echo "<br>";
        $inicjaly=['imie', 'nazwisko', 'Teksas', 'Tokio'];
        echo "<table>";
            foreach($inicjaly as $value){
                echo "<tr>";
                echo "<td>".$value."</td>";
                echo "</tr>";
            };
        echo "</table>";
        echo "<br>";
        $imie = [12,23,34,45,56,67,78,89,90,1001];
        foreach($imie as $number){
            if($number%2==0){
                echo $number."<br>";
            }
        };
        echo "<br>";
        $nazwisko=['jabłko','gruszka','Błażej Wojtas w Tanzanii','banan'];
        foreach($nazwisko as $key => $value){
            echo "tablica[$key]"." ".$value."<br>";
           
        };
    ?>
</body>
</html>