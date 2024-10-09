<?php
    $link = new mysqli('localhost', 'root', '', 'raporty_baran');
    $sql = "SELECT imie, nazwisko, email
    FROM uzytkownik;";
    $result = $link->query($sql);
    $uzytkownicy = $result -> fetch_all(1);

    $sql = "SELECT model, marka, rocznik
    FROM samochody;";
    $result = $link->query($sql);
    $auta = $result -> fetch_all(1);
    $link -> close();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coś tutaj jest</title>
</head>
<body>
    <h1>Użytkownicy w liście numerowanej</h1>
    <ol>
        <?php
        foreach ($uzytkownicy as $uzytkownik) {
            echo "<li>";
            echo $uzytkownik['imie'];
            echo " ";
            echo $uzytkownik['nazwisko'];
            echo " ";
            echo "<b>";
            echo $uzytkownik['email'];
            echo "</b>";
            echo " ";
            echo "</li>";
        }
       ?>
    </ol>
    <h1>Samochody w liście wypunktowanej</h1>
    <ul>
        <?php
        foreach ($auta as $auto) {
            echo "<li>";
            echo $auto['marka'];
            echo " ";
            echo "-";
            echo " ";
            echo "<i>";
            echo $auto['model'];
            echo "</i>";
            echo " ";
            echo $auto['rocznik'];
            echo " ";
            echo "</li>";
        }
       ?>
    </ul>
    
</body>
</html>