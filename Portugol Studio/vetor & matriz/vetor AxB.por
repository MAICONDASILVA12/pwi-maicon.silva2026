programa {
    funcao inicio() {
        // Declaração dos três vetores de 5 posições
        inteiro vetorA[5]
        inteiro vetorB[5]
        inteiro vetorC[5]
        inteiro i

        escreva("--- Multiplicação de Vetores (A x B = C) ---\n\n")

        // 1. Lendo os valores do Vetor A
        escreva("Digite os 5 valores do VETOR A:\n")
        para (i = 0; i < 5; i++) {
            escreva("Vetor A [", i + 1, "]: ")
            leia(vetorA[i])
        }

        escreva("\n-----------------------------------------\n")

        // 2. Lendo os valores do Vetor B
        escreva("Digite os 5 valores do VETOR B:\n")
        para (i = 0; i < 5; i++) {
            escreva("Vetor B [", i + 1, "]: ")
            leia(vetorB[i])
        }

        // 3. Multiplicando A x B e guardando em C
        para (i = 0; i < 5; i++) {
            vetorC[i] = vetorA[i] * vetorB[i]
        }

        // 4. Exibindo o resultado final do Vetor C
        escreva("\n-----------------------------------------")
        escreva("\nRESULTADO - VETOR C (A x B):\n")
        para (i = 0; i < 5; i++) {
            escreva("Posição [", i + 1, "]: ", vetorA[i], " x ", vetorB[i], " = ", vetorC[i], "\n")
        }
        escreva("-----------------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */