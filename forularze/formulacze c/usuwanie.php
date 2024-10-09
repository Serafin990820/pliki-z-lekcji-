<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>usuwanie</title>
</head>
<body>  
        <?php 
        $link = new mysqli("localhost", "root", "", "mateusz_baran");
             if( empty($_POST["id"])) {
                echo "Uzupełnij dane!";
            }
            else {
                $id = $_POST["id"];
                $sql = "DELETE FROM wypozyczenia WHERE id_czytelnik = '$id'";
                $result = $link->query($sql);
                if($result) {
                    echo "wypozyczenia czytalnika o id $id zostały usuniete!";
                } else {
                    echo "Wystąpił błąd!";
                }
                $link -> close();
            }


        ?>
    
</body>
</html>