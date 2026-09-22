import javax.swing.JOptionPane;

public class Idade {
    
    public static void main(String[] args) {
        
        final int TOTAL_ALUNOS = 20;
        
        int somaIdades = 0;
        int maiorIdade = Integer.MIN_VALUE;
        int menorIdade = Integer.MAX_VALUE;
        int alunoMaisVelho = 0;
        int alunoMaisNovo = 0;
        
        // ===== LEITURA DAS IDADES =====
        for (int i = 1; i <= TOTAL_ALUNOS; i++) {
            
            int idade = 0;
            boolean idadeValida = false;
            
            // Loop para garantir entrada válida
            while (!idadeValida) {
                String entrada = JOptionPane.showInputDialog(
                    null,
                    "Aluno " + i + " de " + TOTAL_ALUNOS + "\n\n" +
                    "Digite a idade:",
                    "Cadastro de Idades",
                    JOptionPane.QUESTION_MESSAGE
                );
                
                // Usuário cancelou ou fechou a janela
                if (entrada == null) {
                    int opcao = JOptionPane.showConfirmDialog(
                        null,
                        "Deseja realmente cancelar o programa?",
                        "Confirmação",
                        JOptionPane.YES_NO_OPTION,
                        JOptionPane.WARNING_MESSAGE
                    );
                    if (opcao == JOptionPane.YES_OPTION) {
                        JOptionPane.showMessageDialog(
                            null,
                            "Programa encerrado pelo usuário.",
                            "Fim",
                            JOptionPane.WARNING_MESSAGE
                        );
                        System.exit(0);
                    }
                    continue;
                }
                
                // Converte para inteiro com tratamento de erro
                try {
                    idade = Integer.parseInt(entrada.trim());
                    
                    if (idade < 0 || idade > 120) {
                        JOptionPane.showMessageDialog(
                            null,
                            "Idade inválida! Digite um valor entre 0 e 120.",
                            "Erro",
                            JOptionPane.ERROR_MESSAGE
                        );
                        continue;
                    }
                    
                    idadeValida = true;
                    
                } catch (NumberFormatException e) {
                    JOptionPane.showMessageDialog(
                        null,
                        "Valor inválido! Digite apenas números inteiros.",
                        "Erro",
                        JOptionPane.ERROR_MESSAGE
                    );
                }
            }
            
            // ===== PROCESSAMENTO =====
            somaIdades += idade;
            
            if (idade > maiorIdade) {
                maiorIdade = idade;
                alunoMaisVelho = i;
            }
            
            if (idade < menorIdade) {
                menorIdade = idade;
                alunoMaisNovo = i;
            }
        }
        
        // ===== CÁLCULO DA MÉDIA =====
        double media = (double) somaIdades / TOTAL_ALUNOS;
        
        // ===== EXIBIÇÃO DOS RESULTADOS =====
        String resultado = String.format(
            "========= RESULTADO =========%n%n" +
            "Total de alunos........: %d%n" +
            "Soma das idades........: %d%n" +
            "Média das idades.......: %.2f anos%n%n" +
            "---------- EXTREMOS ----------%n" +
            "Maior idade............: %d anos (Aluno %d)%n" +
            "Menor idade............: %d anos (Aluno %d)",
            TOTAL_ALUNOS,
            somaIdades,
            media,
            maiorIdade, alunoMaisVelho,
            menorIdade, alunoMaisNovo
        );
        
        JOptionPane.showMessageDialog(
            null,
            resultado,
            "Resultado Final",
            JOptionPane.INFORMATION_MESSAGE
        );
        
        System.exit(0);
    }
}
