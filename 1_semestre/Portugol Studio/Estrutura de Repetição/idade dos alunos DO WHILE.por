programa
{
	funcao inicio()
	{
		inteiro contador = 1
		inteiro idade, maior = 0, menor = 150 
		real soma = 0.0, media

		faca
		{
			escreva("Digite a idade do ", contador, "º aluno: ")
			leia(idade)

			se (idade > maior)
			{
				maior = idade
			}

			se (idade < menor)
			{
				menor = idade
			}
			soma = soma + idade
			
			contador++
			
		} enquanto (contador <= 20)

		media = soma / 20

		escreva("\n--- Resultados ---")
		escreva("\nMaior idade lida: ", maior)
		escreva("\nMenor idade lida: ", menor)
		escreva("\nMédia das idades: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 30; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */