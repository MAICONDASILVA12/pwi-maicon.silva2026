programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia nomeCompleto, nomeMaiusculo
		inteiro tamanho, i
		caracter letra

		escreva("Digite seu nome completo: ")
		leia(nomeCompleto)

		// AQUI A MÁGICA: Convertemos tudo para MAIÚSCULO primeiro
		nomeMaiusculo = t.caixa_alta(nomeCompleto)
		tamanho = t.numero_caracteres(nomeMaiusculo)

		escreva("\nIniciais: ")

		para (i = 0; i < tamanho; i++)
		{
			letra = t.obter_caracter(nomeMaiusculo, i)

			// 1. Se for a primeira letra do nome
			// 2. Ou se a letra anterior for um espaço E a letra atual NÃO for um espaço
			se (i == 0 ou (t.obter_caracter(nomeMaiusculo, i - 1) == ' ' e letra != ' '))
			{
				escreva(letra, ". ")
			}
		}
		
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */