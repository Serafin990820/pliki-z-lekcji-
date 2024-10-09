<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <h1>Mateusz Baran</h1>

    <?php
    
        $link = new mysqli("localhost", "root", "", "mateusz_baran");
      
        if( empty($_POST["nazwa"]) || empty($_POST["cena"]) || empty($_POST["idPro"])) {
            echo "Wypełnij wszystkie pola!";
        }
        else {
            $nazwa = $_POST["nazwa"];
            $cena = $_POST["cena"];
            $idPro = $_POST["idPro"];
            $link = new mysqli("localhost", "root", "", "biblioteka_2");
            $sql = "INSERT INTO podzespoly (nazwa, cena, idPro) VALUES ('$nazwa', '$cena', '$idPro')";
            $result = $link->query($sql);
            if($result) {
                echo "Dane zostały dodane!";
            } else {
                echo "Wystąpił błąd!";
            }
            $link -> close();
        }
    ?>

</body>
</html>