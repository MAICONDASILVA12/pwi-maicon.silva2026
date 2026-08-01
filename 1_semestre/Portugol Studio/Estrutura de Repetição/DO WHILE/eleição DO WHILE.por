programa {
	
    funcao inicio() {
        
        inteiro voto
        inteiro candidato[5] 
        inteiro branco, nulo
        inteiro i, cont
        
       
        para (i = 1; i <= 4; i++) {
            candidato[i] = 0
        }
        
        branco = 0
        nulo = 0
        
        escreva("=== ELEIÇÃO PRESIDENCIAL ===\n")
        escreva("Códigos: 1, 2, 3, 4 para candidatos; 5 = branco; 0 = finalizar\n")
        escreva("Outros números = nulo\n")
        escreva("--------------------------------\n")
        
        faca {
            escreva("Digite o código do voto: ")
            leia(voto)
            
            se (voto != 0) {
                escolha (voto) {
                    caso 1:
                    caso 2:
                    caso 3:
                    caso 4:
                        candidato[voto]++
                        pare
                    caso 5:
                        branco++
                        pare
                    caso contrario:
                        nulo++
                }
            }
        } enquanto (voto != 0)
        
        escreva("\n--- RESULTADO DA VOTAÇÃO ---\n")
        cont = 1
        enquanto (cont <= 4) {
            escreva("Candidato ", cont, ": ", candidato[cont], " voto(s)\n")
            cont++
        }
        escreva("Votos em branco: ", branco, "\n")
        escreva("Votos nulos: ", nulo, "\n")
        escreva("--------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */