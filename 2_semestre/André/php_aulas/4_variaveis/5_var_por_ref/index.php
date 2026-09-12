<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Variável por Referência</title>
</head>
<body>

<?php

/* Variável por referência
Em PHP, uma variável por referência permite que duas ou mais variavei
apontem para o mesmo conteudo na memória.
Para criar uma variável por referência, utiliza-se o caractere & 
(e comercial) antes da variável de origem.

*/


//1.Declarando uma variável comum
$original = "Azul";

//2.Criando uma referência para a variável $original
$copiaPorReferencia = &$original; 

//3.Modificando o valor através da variável de referência 
$copiaPorReferencia = "Vermelho";

/*Ambas as variáveis exibem "Vermelho", pois apomtam para o mesmo valor na memória
*/
echo "Original:" $original. "\n"; //Imprime : Original: Vermelho 
echo "Referência: ".$copiaPorReferencia. "\n"; //Imprime: Referência: Vermelho 



 $x = 10;

  $y =& $x;

  echo $x;
  echo "<br>";
  echo $y;
  echo "<br>";

  $y = 15;

  echo "Atribuição após ref";
  echo "<br>";
  echo $x;
  echo "<br>";
  echo $y;
  echo "<br>";

  $x = 20;

  echo "Atribuição após ref 2";
  echo "<br>";
  echo $x;
  echo "<br>";
  echo $y;
  echo "<br>";

  $nome = "DEKKOMAYA";

  $nome2 =& $nome;

  echo $nome;
  echo "<br>";
  echo $nome2;
  echo "<br>";

  $nome2 = "João";

  echo $nome;
  echo "<br>";
  echo $nome2;
  echo "<br>";


</body>
</html>