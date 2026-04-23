programa
{
	funcao inicio()
	{
		inteiro contador = 1
		inteiro idade, maior = 0, menor = 0
		real soma = 0.0, media

		escreva("=== LEITURA DE IDADES ===\n")

		enquanto (contador <= 20)
		{
			escreva("Digite a idade do ", contador, "º aluno: ")
			leia(idade)

			se (contador == 1)
			{
				maior = idade
				menor = idade
			}
			senao 
			{
				se (idade > maior)
				{
					maior = idade
				}
				
				se (idade < menor)
				{
					menor = idade
				}
			}
			soma = soma + idade
			
			contador = contador + 1
		}
		media = soma / 20

		escreva("\n----------------------------------")
		escreva("\nMaior idade encontrada: ", maior)
		escreva("\nMenor idade encontrada: ", menor)
		escreva("\nMédia das idades: ", media)
		escreva("\n----------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 543; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */