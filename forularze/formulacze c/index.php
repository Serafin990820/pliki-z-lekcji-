<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
</head>
<body>
    <h1>Mateusz Baran</h1>
    <?php
        $link = new mysqli("localhost", "root", "", "mateusz_baran");
        $sql = "SELECT tytul, imie, nazwisko
        FROM ksiazki 
            INNER JOIN autorzy ON ksiazki.id_autor = autorzy.id;";
        $result = $link->query($sql);
        echo "<ol>";
        while ($row = $result->fetch_assoc()) {
    
            
                echo "<li>".$row['imie']." ".$row['nazwisko']." "."-"." ".'"'."<b>".$row['tytul']."</b>".'"'."</li>"."  ";
            
            
        }
        echo "</ol> <br>";
    ?>

        <form action="./usuwanie.php" method="post">
            <label for="id">Wybierz id użytkownika do usunięcia</label>
            <select name="id" id="id">
            
                <?php
                    $link = new mysqli("localhost", "root", "", "mateusz_baran");
                    $sql = "SELECT id FROM czytelnicy";
                    $result = $link->query($sql);
                    while ($row = $result->fetch_assoc()) {
                        echo "<option value=".$row['id'].">".$row['id']."</option>";
                    }
              ?>
            </select>
            <br>
            <button>Usuń</button>

        </form>

</body>
</html>