<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="./opinie.php" method="post">
        <textarea name="opinia" id="opinia" cols="30" rows="10">

        </textarea>
        <button>Wyślij</button>
    </form>

    <?php
         if(empty($_POST['opinia'])){
             echo "Wypełnij wszystkie pola!";
         }
         else {
            $text = substr($_POST['opinia'], 0, 255);
            $text = strip_tags($text)."\n";
            if($plik=fopen('opinie.txt', 'a')){
                echo 'Udało sie';
                fwrite($plik, $text);
                fclose($plik);
            }
         }

    ?>
</body>
</html>