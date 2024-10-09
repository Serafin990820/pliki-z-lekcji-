<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka</title>
</head>
<body>
    <form action="./dodaj.php" method="post">
        <label for="imie">Imię:</label>
        <input type="text" name="imie" id="imie"> <br>
        <label for="nazwisko">Nazwisko:</label>
        <input type="text" name="nazwisko" id="nazwisko"> <br>
        <label for="kod">Kod:</label>
        <input type="text" name="kod" id="kod">
        <br>
        <button type="submit" id="send">Dodaj</button>
    </form>

    <form action="./usun.php" method="post">
        <label for="id">Podaj ID: </label>
        <input type="text" name="id" id="id"> <br>
        <button type="submit" id="usun">Usuń</button>
    </form>
    
    
</body>
</html>