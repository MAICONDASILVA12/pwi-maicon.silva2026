programa
{
	
	funcao inicio()
	{
		  // Declaração das variáveis
        real salario, imposto, base_calculo
        real aliquota, deducao
        
        // Entrada do salário
        escreva("Digite o valor do salário: R$ ")
        leia(salario)
     
        se (salario >= 2428.81 e salario <= 2826.65) {
            aliquota = 7.5
            deducao = 182.16
            base_calculo = salario
                        }
        senao se (salario >= 2826.66 e salario <= 3751.05) {
            aliquota = 15.0
            deducao = 394.16
            base_calculo = salario
                           }
        senao se (salario >= 3751.06 e salario <= 4664.68) {
            aliquota = 22.5
            deducao = 675.49
            base_calculo = salario
            
        }
        senao se (salario > 4664.68) {
            aliquota = 27.5
            deducao = 908.73
            base_calculo = salario
                    }
        senao {
            // Isento de imposto de renda
            aliquota = 0.0
            deducao = 0.0
            base_calculo = salario
            imposto = 0.0
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */