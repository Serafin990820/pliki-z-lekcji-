<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania na lipiec</title>
    <link rel="stylesheet" href="./styl6.css">
</head>
<body>
    <header>
        <section id="banner1">
            <img src="./logo1.png" alt="lipiec">


        </section>
        <section id="banner2">
            <h1>Terminarz</h1>
            <p>najbliższe zadania: </p>
            <?php 
            $link = new mysqli('localhost','root','','terminarz');
            $sql = 'SELECT DISTINCT wpis
                    FROM zadania
                    where (dataZadania BETWEEN "2020-07-01" AND "2020-07-07") AND wpis is not null AND wpis != "";';
            $result = $link -> query($sql);
            $wpis = $result -> fetch_all(1);

           

            foreach($wpis as $value){
                echo $value['wpis'].";"." ";
            };
            
            $link -> close();

?>

        </section>

    </header>
    <main>
        <?php
        $link = new mysqli('localhost','root','','terminarz');
        $sql2 ='SELECT dataZadania, wpis
                from zadania
                where miesiac = "lipiec";';

        $result2 = $link -> query($sql2);
        $kalendarz = $result2 -> fetch_all(1);

        foreach($kalendarz as $value2){
            echo "<div class='kalendarz'>";
            echo "<h6>".$value2['dataZadania']."</h6>"."<p>".$value2['wpis']."</p>";
            echo "</div>";
        }

        $link -> close();


?>

    </main>
    <footer>
        <a href="./sierpien.html">Terminarz na sierpień</a>
        <p>Stronę wykonał: 11</p>

    </footer>
    
</body>
</html>