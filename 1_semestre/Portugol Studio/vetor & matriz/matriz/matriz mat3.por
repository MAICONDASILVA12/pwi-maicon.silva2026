programa {
    funcao inicio() {
        inteiro mat[3][4], i, j

        // Leitura da matriz
        escreva("Digite os elementos da matriz 3x4:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 4; j++) {
                escreva("Elemento [", (i+1), "][", (j+1), "]: ")
                leia(mat[i][j])
            }
        }

        // Exibição da matriz original
        escreva("\nMatriz original:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 4; j++) {
                escreva(mat[i][j], " ")
            }
            escreva("\n") 
        }

        // Substituição de negativos por 0
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 4; j++) {
                se (mat[i][j] < 0) {
                    mat[i][j] = 0
                }
            }
        }

        // Exibição da matriz modificada
        escreva("\nMatriz modificada (negativos substituídos por 0):\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 4; j++) {
                escreva(mat[i][j], " ")
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
 * @POSICAO-CURSOR = 1091; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */