<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Variável Estática</title>
</head>
<body>
    <?php
    /*
    Variável Estática
    A variável estática é declarada com a instrunção static;
    O valor da mesma é mantido e alterado a cada execução de uma função;
    É interessante esse comportamento pois as variáveis de escopo local 
    sempre são resetadas;
    */

    function teste() {
        $a = 0;
        $a++;

        echo "$a <br>";

    }

    teste();
    teste();
    teste();

    function testeStatic() {

        static $a = 0;
        $a++;

        echo "$a <br>";

    }

    testeStatic();
    testeStatic();
    testeStatic();
    ?>
        
    
</body>
</html>