programa {
    funcao inicio() {
        // Declaração das variáveis
        real peso, altura, imc
        
        // Entrada de dados
        escreva("Digite o peso do cliente (em kg): ")
        leia(peso)
        escreva("Digite a altura do cliente (em metros): ")
        leia(altura)
              
        imc = peso / (altura * altura)
               
      
        escreva("Peso informado: ", peso, " kg \n")
        escreva("Altura informada: ", altura, " m \n")
        escreva("IMC calculado: ", imc, " kg/m² \n")
             
        escreva("Classificação: ")
        
        se (imc < 18.5) { 
            escreva("Abaixo do peso")
                   }
        senao se (imc >= 18.5 e imc <= 24.9) {
            escreva("Eutrófico (Peso normal)")
           }
        senao se (imc >= 25 e imc <= 29.9) {
            escreva("Sobrepeso")
           }
        senao se (imc >= 30 e imc <= 34.9) {
            escreva("Obesidade Grau I")
           }
        senao se (imc >= 35 e imc <= 39.9) {
            escreva("Obesidade Grau II")
           }
        senao se (imc >= 40) {
            escreva("Obesidade Grau III (Obesidade Mórbida)")
           }
            
           }
        
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */