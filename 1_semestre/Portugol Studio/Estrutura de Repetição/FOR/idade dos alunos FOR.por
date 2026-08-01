programa
{
	funcao inicio()
	{
		inteiro idade, maior = 0, menor = 0
		real soma = 0.0, media

		escreva("=== LEITURA DE IDADES (Lógica PARA) ===\n")

		para (inteiro i = 1; i <= 20; i++)
		{
			escreva("Digite a idade do ", i, "º aluno: ")
			leia(idade)

			se (i == 1)
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
		}

		media = soma / 20

		escreva("\n----------------------------------")
		escreva("\n Maior idade encontrada: ", maior)
		escreva("\n Menor idade encontrada: ", menor)
		escreva("\n Média das idades: ", media)
		escreva("\n----------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 661; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */