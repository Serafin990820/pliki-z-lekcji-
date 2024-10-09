<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php

        // zad 5 
        echo "zadanie 5";
        echo "<br>";
            $rok = DATE("Y");
            if($rok > 2000){
                echo "XXI wiek - chyba";
               
            }
            else {
                echo "inny wiek";
                
            }
            echo "<br>";
        // zad 6
            echo "<br>";
            echo "zadanie 6";
            echo "<br>";
            for($i=1; $i<=10; $i++){
                echo "$i** =".$i*$i."<br>";
            }

            echo "<br>";
        //zad 7
            echo "zadanie 7";
            echo "<br>";
            $imie = ['1','2','3','4','5','6','7','8','9','10'];

            echo "$imie[1]";
            echo "<br>";
            echo "<br>";

            foreach($imie as $number){
                if($number%2==0){
                    echo $number."<br>";
                }
            }
            echo "<br>";
         //zad 8
         echo "<br>";
         echo "zadanie 8";
         echo "<br>";

         $liczba = 28;
         $liczba = $liczba - 1;
         echo "liczba po zmniejszeniu o 1 wynosi $liczba "; 



    ?>
</body>
</html>