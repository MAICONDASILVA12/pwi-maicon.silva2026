programa
{
	
	funcao inicio()
	{
		inteiro num[10]
		inteiro i

		para (i = 0; i <10; i++){
			escreva("Digite o ", i+1, "º número: ")
			leia (num[i])
		}
		escreva("Números Lidos: ", "\n") 
		para (i = 0; i<10; i++) {
			escreva(num[i], " ")
		}
		escreva("\n")
		}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */