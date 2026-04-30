programa
{
	funcao inicio()
	{
		cadeia vSem[7]
		inteiro i

		para (i = 0; i <= 6; i++) 
		{
			escolha (i) 
			{
				caso 0: vSem[i] = "Domingo"
					pare
				caso 1: vSem[i] = "Segunda-feira"
					pare
				caso 2: vSem[i] = "Terça-feira"
					pare
				caso 3: vSem[i] = "Quarta-feira"
					pare
				caso 4: vSem[i] = "Quinta-feira"
					pare
				caso 5: vSem[i] = "Sexta-feira"
					pare
				caso 6: vSem[i] = "Sábado"
					pare
			}
		}

		para (i = 0; i <= 6; i++) 
		{
			escreva("vSem[", i, "] = ", vSem[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 441; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */