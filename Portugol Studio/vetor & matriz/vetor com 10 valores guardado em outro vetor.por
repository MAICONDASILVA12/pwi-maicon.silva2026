programa {
    funcao inicio() {
        // Declaração dos vetores de 10 posições
        inteiro vetor_original[10]
        inteiro vetor_crescente[10]
        inteiro i, j, auxiliar

        escreva("--- Ordenador de Vetores ---\n\n")

        // 1. Recebendo os 10 valores
        para (i = 0; i < 10; i++) {
            escreva("Digite o ", i + 1, "º valor: ")
            leia(vetor_original[i])
            
            // Já copia o valor para o segundo vetor
            vetor_crescente[i] = vetor_original[i]
        }

        // 2. Ordenando o segundo vetor (Algoritmo Bubble Sort)
        para (i = 0; i < 10; i++) {
            para (j = i + 1; j < 10; j++) {
                // Se o número atual for MAIOR que o próximo, eles trocam de lugar
                se (vetor_crescente[i] > vetor_crescente[j]) {
                    auxiliar = vetor_crescente[i]
                    vetor_crescente[i] = vetor_crescente[j]
                    vetor_crescente[j] = auxiliar
                }
            }
        }

        // 3. Exibindo os resultados
        escreva("\n--------------------------------------------------\n")
        escreva("Vetor Original:  ")
        para (i = 0; i < 10; i++) {
            escreva(vetor_original[i], " ")
        }

        escreva("\nVetor Crescente: ")
        para (i = 0; i < 10; i++) {
            escreva(vetor_crescente[i], " ")
        }
        escreva("\n--------------------------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */