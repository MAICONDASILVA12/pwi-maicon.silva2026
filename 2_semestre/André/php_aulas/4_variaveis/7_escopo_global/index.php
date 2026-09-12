<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escopo Global</title>
</head>
<body>
    <?php
    /* Variável Global
    A principal caracteristica da variável global é ser declarada fora de funções;
    Por comportamento padrão não são acessíveis dentro de funções;
    Precisamos utilizar a palavra global para isso;
    Essa função da variável global não ser acessível dentro de funções;
    previne 
    */
    $teste = "asd";
    echo "teste global 1 <br>";

    if(5 > 2) {

        $teste = "dsa";

        echo "$teste if <br>";

    }

    echo "$teste global 2 <br";

    function funcao() {
        $teste = "xsxs";

        echo "$teste local <br>";

    }

    funcao();

    function testandoGlobal() {

        global $teste;

        $teste = 2;

        echo "$teste global função <br>";

    }
    
    testandoGlobal();

    echo "$teste global 3 <br>";

    ?>
</body>
</html>