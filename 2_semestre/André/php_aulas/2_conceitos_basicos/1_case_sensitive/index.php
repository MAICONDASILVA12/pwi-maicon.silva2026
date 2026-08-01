<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Case Sensitive em PHP</title>
</head>
<body>
    <?php
    //Não é case sensitive
    echo "teste <br>";
    Echo "Testando 2 <br>";
    ECHO "testando 3 <br>";

    // É Case Sensitive
    $none = "Maicon";
    $NOME = "TESTE";

    echo $nome;
    echo "<br>";
    ?>
    /*Case sensitivity
    Significa sensibilidades a casas maiúsculas e minúsculas;
    Para instruções PHP não temos essa diferença, ou seja: echo = ECHO;
    Porém para variáveis são case senstive;
    Ou seja, $nome != $NOME;
    OBS: Veremos variáveis em detalhes mais adiante;
    */

</body>
</html>