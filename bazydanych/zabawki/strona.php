<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php 
        $link = new mysqli("localhost", "root", "", "zabawki"); 
   
        $result = $link->query('SELECT sklep_informacje.id_sklepu as id, adres_sklepu as adres, AVG(cena) as cena1
            FROM sklep_informacje
	            INNER JOIN sklep_magazyn ON sklep_magazyn.id_sklepu = sklep_informacje.id_sklepu
                INNER JOIN zabawka_informacje ON sklep_magazyn.id_zabawki = zabawka_informacje.id_zabawki
            GROUP BY sklep_informacje.id_sklepu;');

    echo "<ol>";

    while($row = $result->fetch_assoc()){
        echo "<li><b>";
        echo $row['id'];
        echo ' '.$row['adres'].' ';
        echo ' '.$row['cena1'];
        echo "</li></b>";
    };

    echo "</ol>";

    echo "<br> <br>";

    $result2 = $link->query('
        SELECT adres_sklepu as adres, zabawka, stan_magazynu as magazyn
        FROM sklep_informacje
	        INNER JOIN sklep_magazyn ON sklep_magazyn.id_sklepu = sklep_informacje.id_sklepu
            INNER JOIN zabawka_informacje ON sklep_magazyn.id_zabawki = zabawka_informacje.id_zabawki;
        
    ');
    echo "<table>";
    while($row = $result2-> fetch_assoc()){
        echo "<tr>"."<td>"."<i>".$row['adres']."</i>"."</td>"."<td>"."<i>".$row['zabawka']."</i>"."</td>"."<td>"."<i>".$row['magazyn']."</i>"."</td>"."</tr>";
    }
    echo "</table>";

    $link -> close();
?>
    
</body>
</html>