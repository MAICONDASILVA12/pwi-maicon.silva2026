programa {
    funcao inicio() {
        // Declaração do vetor para as 4 notas e variáveis para média e soma
        real notas[4]
        real soma = 0.0
        real media
        inteiro i

        escreva("--- Sistema de Notas Bimestrais ---\n\n")

        // Laço para ler as notas dos 4 bimestres
        para (i = 0; i < 4; i++) {
            escreva("Digite a nota do ", i + 1, "º bimestre: ")
            leia(notas[i])
            
            // Acumula as notas para calcular a média depois
            soma = soma + notas[i]
        }

        // Cálculo da média aritmética
        media = soma / 4

        // Exibição dos resultados e verificação do status do aluno
        escreva("\n-----------------------------------------")
        escreva("\nMédia Final: ", media)
        
        // Estrutura condicional para definir a situação do aluno
        se (media >= 7.0) {
            escreva("\nSituação: APROVADO! 🎉")
        }
        senao se (media >= 5.0 e media < 7.0) {
            escreva("\nSituação: RECUPERAÇÃO. ")
        }
        senao {
            escreva("\nSituação: REPROVADO. ")
        }
        
        escreva("\n-----------------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */