 <?php
    session_start();
    $_SESSION['nygus']='wartosc';


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   
    <p>Witamy w naszej sesjii nasza sesja została otwarta</p>
    <p>id naszej sesji to <?php echo session_id(); ?></p>

    <p>Wartością zmiennej jest 
        <?php 
            echo $_SESSION['nygus'];
    ?>
    </p>

    <a href="sesje2.php">Sesja link</a>

</body>
</html>