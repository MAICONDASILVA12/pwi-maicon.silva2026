programa {
    funcao inicio() {
        inteiro canal
        
        escreva("=== SELETOR DE CANAL DE TV ===\n")
        escreva("Digite o número do canal: ")
        leia(canal)

        escolha (canal) {
            caso 2:
                escreva("Cultura")
                pare
            caso 4:
                escreva("SBT")
                pare
            caso 5:
                escreva("Globo")
                pare
            caso 7:
                escreva("Record")
                pare
            caso 9:
                escreva("Manchete")
                pare
            caso 11:
                escreva("Gazeta")
                pare
            caso 13:
                escreva("Bandeirantes")
                pare
            caso contrario:
                escreva("Canal inválido! Digite um dos canais: 2, 4, 5, 7, 9, 11 ou 13")
        }

        escreva("\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 855; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */