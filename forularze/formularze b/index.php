<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Mateusz Baran</h1>

    <?php

        $link = new mysqli("localhost", "root", "", "mateusz_baran");
        $sql = "SELECT kategorie, nazwa, cena FROM podzespoly";
        $result = mysqli_query($link, $sql);
        echo "<ol>"
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<li>";
            echo $row['kategorie'];
            echo $row['nazwa'];
            echo $row['cena']
            echo "</li>";
        }
        echo "</ol>";

        $link -> close();
 ?>
       
        <form action="./dodawanie.php">
        <label for="name">Nazwa: </label>
        <input type="text" name="name" id="name"> <br>
        <label for="cena">Cena: </label>
        <input type="text" name="cena" id="cena"> <br>
        <label for="idPro">id producenta: </label>
        <input type="text" name="idPro" id="idPro">
        <br>
        <select name="typ" id="typ">
            <?php
            $link = new mysqli("localhost", "root", "", "mateusz_baran");
            $sql = "SELECT type FROM podzespoly";
            $result = mysqli_query($link, $sql);

            ?>
        </select>
        
        <br>
        <button type="submit" id="send">Dodaj</button>
        </form>
        

</body>
</html>