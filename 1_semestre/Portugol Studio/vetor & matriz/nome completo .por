programa
{
	// Incluímos a biblioteca para conseguir manipular as letras das palavras
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		// 1. Criamos o vetor com as 4 partes do seu nome
		cadeia nomeCompleto[4] = {"Maicon", "da", "silva", "Elario"}
		
		escreva("Nome completo: Maicon da silva Elario\n")
		escreva("Iniciais: ")

		// 2. Percorremos o vetor usando um laço de repetição
		para (inteiro i = 0; i < 4; i++)
		{
			cadeia palavra = nomeCompleto[i]
			
			// 3. Extraímos apenas o primeiro caractere (índice 0 até 1)
			cadeia inicial = t.extrair_subtexto(palavra, 0, 1)
			
			// 4. Transformamos em Maiúsculo para manter um padrão visual
			escreva(t.caixa_alta(inicial), ". ")
		}
		
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 724; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */