<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Variável de Variável em PHP</title>
</head>
<body>

<?php
/*Variável de Variável
Podemos criar uma variável por meio do nome de outra variável, com
um valor diferente;
O simbolo para esta função é o $$ EX;
$x = "teste";
$$x= 5;

Após a execução do código, a variável teste (conteudo de $x),. será criada
com valor 5;

*/

$x = "nome"; // valor de nome

echo "$x <br";

$$x = "Roblox"; // var com o nome de x (nome), com valor de Roblox

echo "$nome <br>";

?>

</body>
</html>