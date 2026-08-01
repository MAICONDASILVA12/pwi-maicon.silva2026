

programa
{
	funcao inicio()
	{
		caracter sexo, estado_civil, continuar = 'S' 
		inteiro idade
		inteiro total_requisitos = 0

		
		enquanto (continuar == 'S' ou continuar == 's')
		{
			escreva("\n--- Cadastro de Pessoa ---\n")
			
			escreva("Sexo (F): ")
			leia(sexo)
			
			escreva("Idade: ")
			leia(idade)
			
			escreva("Estado Civil (S para solteiro): ")
			leia(estado_civil)

			se ((sexo == 'F' ou sexo == 'f') e (idade < 21) e (estado_civil == 'S' ou estado_civil == 's'))
			{
				

			escreva("\nDeseja continuar a leitura de dados? (S/N): ")
			leia(continuar)
		}

		escreva("\n-------------------------------------------")
		escreva("\nTotal de mulheres, solteiras e menores de 21 anos: ")
		escreva("\n-------------------------------------------\n")
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */