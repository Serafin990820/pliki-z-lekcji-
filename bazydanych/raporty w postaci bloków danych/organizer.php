<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizer</title>
    <link rel="stylesheet" href="styl6.css">
</head>
<body>

    <section id="banner">
        <div id="header1">
            <h2>MÓJ ORGANIZER</h2>
        </div>
        <div id="header2">
            <form method="POST" action="organizer.php">
                <label for="event">Wpis wydarzenia: </label>
                <input type="text" id="event" name="event">
                <button type="submit">ZAPISZ</button>
            </form>
        </div>
        <div id="header3">
            <img src="logo2.png" alt="Mój organizer">
        </div>
    </section>

    <section id="main">
       <?php
    $conn = new mysqli("localhost", "root", "", "egzamin6");

    // Sprawdzenie metody POST
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['event']) && !empty($_POST['event'])) {
        $event = $conn->real_escape_string($_POST['event']);
        $conn->query("UPDATE zadania SET wpis='$event' WHERE dataZadania='2020-08-27'");
    }

    // Pobieranie danych do wyświetlenia
    $result1 = $conn->query("SELECT dataZadania, miesiac, wpis FROM zadania");
    if ($result1->num_rows > 0) {
        while($row = $result1->fetch_assoc()) {
            echo "<section class='day'>
                    <h6>" .$row['dataZadania']." ".ucwords($row["miesiac"])."</h6>
                    <p>".'<br>'.ucwords($row['wpis'])."</p>
                  </section>";
        }
    }

   

    $conn->close();
?>

    </section>

    <section id="footer">
        <?php
         $conn = new mysqli("localhost", "root", "", "egzamin6");
     // Wyświetlanie miesiąca i roku
        $result2 = $conn->query("SELECT miesiac, YEAR(dataZadania) as rok FROM zadania WHERE dataZadania='2020-08-27'");
        if ($row = $result2->fetch_assoc()) {
            echo "<br>"."<h1>miesiąc: ".$row['miesiac'].", rok: ".$row['rok']."</h1>"."<br>";
       }
       $conn->close();

    ?>     
      
        <div id="down">
            <p>Stronę wykonał: 05282001817</p>
        </div>

    </section>

</body>
</html>
