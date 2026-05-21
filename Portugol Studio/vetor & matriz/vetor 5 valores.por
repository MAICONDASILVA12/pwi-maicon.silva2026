programa {
    funcao inicio() {
        // Declaração do vetor de 5 posições e das variáveis
        real valores[5]
        real valor_total = 0.0
        inteiro i

        escreva("--- Calculadora de Valor Total ---\n\n")

        // Laço para ler os 5 valores
        para (i = 0; i < 5; i++) {
            escreva("Digite o ", i + 1, "º valor: ")
            leia(valores[i])
            
            // Soma o valor digitado diretamente ao total
            valor_total = valor_total + valores[i]
        }

        // Exibe o resultado final
        escreva("\n---------------------------------")
        escreva("\nO valor total da soma é: R$ ", valor_total)
        escreva("\n---------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 732; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */