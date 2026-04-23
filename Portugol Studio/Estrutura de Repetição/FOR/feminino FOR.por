
	programa
{
	funcao inicio()
	{
		caracter sexo, estado_civil, continuar = 'S'
		inteiro idade
		inteiro total_requisitos = 0

		
		para (inteiro contador = 1; contador <= 1000000; contador++)
		{
			escreva("\n--- Cadastro da ", contador, "ª Pessoa ---\n")
			
			escreva("Sexo (F/M): ")
			leia(sexo)
			
			escreva("Idade: ")
			leia(idade)
			
			escreva("Estado Civil (S para solteiro): ")
			leia(estado_civil)

			se ((sexo == 'F' ou sexo == 'f') e (idade < 21) e (estado_civil == 'S' ou estado_civil == 's'))
			{
				total_requisitos++
			}

			escreva("\n Deseja continuar a leitura de dados? (S/N): ")
			leia(continuar)

			se (continuar != 'S' e continuar != 's')
			{
				pare 
			}
		}

		escreva("\n-------------------------------------------")
		escreva("\nTotal de mulheres, solteiras e menores de 21 anos: ", total_requisitos)
		escreva("\n-------------------------------------------\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 913; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */