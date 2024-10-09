<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>szkoła</title>
</head>
<body>
    <h1>Uczniowie</h1>
    <section>
        <h2>Lista uczniów</h2>
            <table>
                <?php 
                    $link = new mysqli("localhost", "root", "", "szkola");
                    $sql = "SELECT * FROM uczen";
                    $result = $link->query($sql);
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        foreach ($row as $field) {
                            echo "<td>".$field."</td>";
                        }
                        echo "</tr>";
                    }


                    $link -> close();
                ?>
            </table>
    </section>
</body>
</html>