<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizer</title>
    <link rel="stylesheet" href="./styl6.css">

</head>
<body>
    <div class="all">
        <div class="banner">
            <div class="banner1">
                <h2>MÓJ ORGANIZER</h2>
            
            </div>

            <div class="banner2">
                <form action="./organizer.php" method="post">
                    <label for="event">Wpisz Wydarzenia: </label>
                    <input type="text" name="event" id="event">
                    <button type="send" id="send">ZAPISZ</button>

                </form>


            </div>

            <div class="banner3">
                <img src="./logo2.png" alt="Moj organizer" width="100px" height="100px">
            
            </div>
            
        </div>
            
        </div>

        <div class="main">
            <?php
                $conn = new mysqli('localhost','root','','egzamin6');
                $event = $_POST['event'];
                echo $event;

                $conn -> close();
                

            ?>



        </div>

        <div class="footer">

        </div>



    </div>
    
</body>
</html>