programa {
    funcao inicio() {
        // Declaração da variável
        cadeia mencao
        
        // Entrada da menção
        escreva("Digite a menção do aluno (MB, B, R ou I): ")
        leia(mencao)
              
        // Verificação da menção usando IF
        se (mencao == "MB") {
        	  escreva("Menção: MB - Muito bom")
          
        }
        senao se (mencao == "B") {
            escreva("Menção: B - Bom")
           
        }
        senao se (mencao == "R") {
            escreva("Menção: R - Regular")
            
        }
        senao se (mencao == "I") {
            escreva("Menção: I - Irregular")
           
        }
        senao {
            escreva("Menção inválida!")
            escreva("Digite apenas: MB, B, R ou I")
           
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 768; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */