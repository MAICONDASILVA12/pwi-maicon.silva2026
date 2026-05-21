programa {
    funcao inicio() {
        // Declaração do vetor de 10 posições e do contador
        inteiro numeros[10]
        inteiro i

        escreva("--- Identificador de Números Pares ---\n\n")

        // Laço para ler os 10 valores
        para (i = 0; i < 10; i++) {
            escreva("Digite o ", i + 1, "º número inteiro: ")
            leia(numeros[i])
        }

        escreva("\n-----------------------------------------")
        escreva("\nOs valores PARES digitados foram:\n")
        
        // Laço para verificar e mostrar apenas os pares
        para (i = 0; i < 10; i++) {
            // Se o resto da divisão por 2 for igual a zero, o número é par
            se (numeros[i] % 2 == 0) {
                escreva(numeros[i], "  ")
            }
        }
        
        escreva("\n-----------------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 864; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */