<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <?php

        $dniTygodnia = ['poniedzialek', 'wtorek', 'sroda', 'czwartek', 'piatek', 'sobota', 'niedziela'];

        echo $dniTygodnia[0];
        echo "<br>";
        echo $dniTygodnia[1];
        echo "<br>";


        echo "<ol>";
        foreach($dniTygodnia as $value){
            echo "<li>".$value."</li>"."<br>";
        }
        echo "</ol>";

        $produkt1 = array (
            'nazwa' => 'Samsung',
           'cena' => '1000',
        );
        $produkt2 = array (
            'nazwa' => 'iphone',
           'cena' => '1000000',
        );
        $produkt3 = array (
            'nazwa' => 'innyszajs',
           'cena' => '10',
        );

        echo "<ul>";
        foreach($produkt1 as $key => $value){
            echo "<li>  $key: $value  </li> <br>";
        };
        echo "</ul>";


    $produkty = [$produkt1, $produkt2, $produkt3];

    echo "<table border='1'>";
        echo "<tr>";
            echo "<th> produkt </th>";
            echo "<th> cena </th>";
        echo "</tr>";
        foreach($produkty as $key => $value){
            echo "<tr>";
                echo "<td>".$value['nazwa']."</td>";
                echo "<td>".$value['cena']."</td>";
            echo "</tr>";
        }
        

    echo "</table>";

    $liczby = [1,-2,-5,3,5,-7,6];
        echo "<p> Liczyby podzielne przez 3 </p>";
    foreach($liczby as $value){
            if($value %3 == 0){
                echo $value.",";
            }
    };
    echo "<br>";

    echo "<p> Wszystkie liczby dodatnie plus 1 </p>";
    foreach($liczby as $value){
            if($value >0){
                echo $value+1;
                echo ",";
            };
    };




?>

</body>
</html>