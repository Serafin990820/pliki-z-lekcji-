<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


        <form action="04.php" method="get">
            <label for="name">Nazwa Pliku</label>
            <input type="text" name="name" id="name"> <br>
            <button>Wyślij</button>

        </form>

        <?php 
            if(empty($_GET['name'])){
                echo "Brak nazwy pliku";
            }
            else{
                $name = $_GET['name'];
                echo "$name";
            }
        ?>

</body>
</html>