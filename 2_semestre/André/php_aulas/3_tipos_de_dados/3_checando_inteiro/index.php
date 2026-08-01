<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Checando numeros inteiros</title>
</head>
<body>
<?php
if(is_int(5)){ //true
echo "É um inteiro <br>";
}
if(is_int("Não é um inteiro")) { //false
echo "É um inteiro 2 <br>";
}

/* Checando números inteiro
Podemos validar se um dado é inteiro com a função in_int();
Caso um número inteiro seja inteiro, será retornado true (Um outro tipo de dado);
Caso não seja, receberemos um retorno false (Tipo de dado também);
Precisamos utilizar a estrutura if para validar valor;

?>

</body>
</html>