<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Espaços em branco</title>
</head>
<body>
    <?php
    /*
    Espaços em branco
    Para interpretação do código em PHP o espaço em branco é ignorado;
    Isso aconte pois o mesmo é removido antes da execução;
    A quebra de linha também é ignorada;
    Porém se utiliza de má forma pode gerar erros inesperados no código;
    */ 

    echo                     "testando espaços em branco <br>";
    echo "testando espaço <br>";
    echo 
    "quebra de linha <br>"
    ;

    echo "quebra de linha<br>"
    ;

    echo "quebra de
    linha <br>";
    ?>

    
</body>
</html>