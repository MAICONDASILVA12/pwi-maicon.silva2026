programa {
    funcao inicio() {
        // Declara uma matriz 4x3 de cadeias de texto
        cadeia mercado[4][3]

        // Preenchendo a primeira linha (cabeçalho)
        mercado[0][0] = "Item"
        mercado[0][1] = "Descrição"
        mercado[0][2] = "Valor"

        // Preenchendo os três itens (linhas 1, 2 e 3)
        mercado[1][0] = "1"
        mercado[1][1] = "Arroz"
        mercado[1][2] = "25,00"

        
        mercado[2][0] = "2"
        mercado[2][1] = "Feijão"
        mercado[2][2] = "12,50"

        mercado[3][0] = "3"
        mercado[3][1] = "Macarrão"
        mercado[3][2] = "8,75"

        // Exibindo a matriz formatada
        escreva("Lista de compras (Matriz 4x3):\n")
        escreva("---------------------------------\n")
        
        para (inteiro linha = 0; linha < 4; linha++) {
            para (inteiro col = 0; col < 3; col++) {
                // Imprime cada elemento com tabulação para alinhar
                escreva(mercado[linha][col], "\t")
            }
            escreva("\n") 
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */