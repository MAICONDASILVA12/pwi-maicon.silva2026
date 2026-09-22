import javax.swing.JOptionPane;

public class SexoFeminino {
    
    public static void main(String[] args) {
        
        // ===== CONTADORES =====
        int totalPessoas = 0;
        int atendemRequisitos = 0;
        int mulheresSolteirasMenor21 = 0;
        
        // ===== ESTATÍSTICAS EXTRAS (para enriquecer o relatório) =====
        int totalFeminino = 0;
        int totalSolteiros = 0;
        int totalMenor21 = 0;
        
        // ===== LOOP DE LEITURA =====
        while (true) {
            
            // ---------- LEITURA DO SEXO ----------
            String sexo = "";
            boolean sexoValido = false;
            
            while (!sexoValido) {
                sexo = JOptionPane.showInputDialog(
                    null,
                    "Pessoa " + (totalPessoas + 1) + "\n\n" +
                    "Digite o sexo:\n" +
                    "  F → Feminino\n" +
                    "  M → Masculino",
                    "Cadastro - Sexo",
                    JOptionPane.QUESTION_MESSAGE
                );
                
                if (sexo == null) {
                    cancelarPrograma();
                    return;
                }
                
                sexo = sexo.trim().toUpperCase();
                
                if (sexo.equals("F") || sexo.equals("M")) {
                    sexoValido = true;
                } else {
                    JOptionPane.showMessageDialog(
                        null,
                        "Sexo inválido! Digite apenas 'F' ou 'M'.",
                        "Erro",
                        JOptionPane.ERROR_MESSAGE
                    );
                }
            }
            
            // ---------- LEITURA DA IDADE ----------
            int idade = 0;
            boolean idadeValida = false;
            
            while (!idadeValida) {
                String idadeStr = JOptionPane.showInputDialog(
                    null,
                    "Pessoa " + (totalPessoas + 1) + "\n\n" +
                    "Digite a idade:",
                    "Cadastro - Idade",
                    JOptionPane.QUESTION_MESSAGE
                );
                
                if (idadeStr == null) {
                    cancelarPrograma();
                    return;
                }
                
                try {
                    idade = Integer.parseInt(idadeStr.trim());
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
            
            // ---------- LEITURA DO ESTADO CIVIL ----------
            String estadoCivil = "";
            boolean estadoValido = false;
            
            while (!estadoValido) {
                estadoCivil = JOptionPane.showInputDialog(
                    null,
                    "Pessoa " + (totalPessoas + 1) + "\n\n" +
                    "Digite o estado civil:\n" +
                    "  S → Solteiro(a)\n" +
                    "  C → Casado(a)\n" +
                    "  D → Divorciado(a)\n" +
                    "  V → Viúvo(a)",
                    "Cadastro - Estado Civil",
                    JOptionPane.QUESTION_MESSAGE
                );
                
                if (estadoCivil == null) {
                    cancelarPrograma();
                    return;
                }
                
                estadoCivil = estadoCivil.trim().toUpperCase();
                
                if (estadoCivil.equals("S") || estadoCivil.equals("C") ||
                    estadoCivil.equals("D") || estadoCivil.equals("V")) {
                    estadoValido = true;
                } else {
                    JOptionPane.showMessageDialog(
                        null,
                        "Estado civil inválido! Digite S, C, D ou V.",
                        "Erro",
                        JOptionPane.ERROR_MESSAGE
                    );
                }
            }
            
            // ===== PROCESSAMENTO DOS DADOS =====
            totalPessoas++;
            
            if (sexo.equals("F")) totalFeminino++;
            if (estadoCivil.equals("S")) totalSolteiros++;
            if (idade < 21) totalMenor21++;
            
            // Verifica se atende TODOS os requisitos:
            // Sexo feminino E idade < 21 E solteira
            if (sexo.equals("F") && idade < 21 && estadoCivil.equals("S")) {
                atendemRequisitos++;
                mulheresSolteirasMenor21++;
                
                JOptionPane.showMessageDialog(
                    null,
                    "✅ Pessoa " + totalPessoas + " atende aos requisitos!\n\n" +
                    "  Sexo..........: Feminino\n" +
                    "  Idade.........: " + idade + " anos\n" +
                    "  Estado Civil..: Solteira",
                    "Pessoa Contabilizada",
                    JOptionPane.INFORMATION_MESSAGE
                );
            } else {
                JOptionPane.showMessageDialog(
                    null,
                    "ℹ Pessoa " + totalPessoas + " NÃO atende a todos os requisitos.",
                    "Pessoa não contabilizada",
                    JOptionPane.PLAIN_MESSAGE
                );
            }
            
            // ---------- PERGUNTA SE DESEJA CONTINUAR ----------
            int resposta = JOptionPane.showConfirmDialog(
                null,
                "Deseja continuar a leitura de dados?",
                "Continuar?",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE
            );
            
            // Se "Não" ou fechou a janela → encerra
            if (resposta != JOptionPane.YES_OPTION) {
                break;
            }
        }
        
        // ===== EXIBIÇÃO DOS RESULTADOS =====
        if (totalPessoas == 0) {
            JOptionPane.showMessageDialog(
                null,
                "Nenhuma pessoa foi cadastrada.",
                "Resultado",
                JOptionPane.WARNING_MESSAGE
            );
            System.exit(0);
        }
        
        double percentual = (atendemRequisitos * 100.0) / totalPessoas;
        
        String resultado = String.format(
            "======= RESULTADO DA PESQUISA =======%n%n" +
            "Total de pessoas cadastradas..: %d%n%n" +
            "------- ESTATÍSTICAS GERAIS -------%n" +
            "Total do sexo feminino........: %d%n" +
            "Total de solteiros(as)........: %d%n" +
            "Total com menos de 21 anos....: %d%n%n" +
            "========= RESPOSTA =========%n" +
            "Pessoas que atendem a TODOS%n" +
            "os requisitos (F + <21 + S)...: %d%n" +
            "Percentual do grupo...........: %.2f%%",
            totalPessoas,
            totalFeminino,
            totalSolteiros,
            totalMenor21,
            atendemRequisitos,
            percentual
        );
        
        JOptionPane.showMessageDialog(
            null,
            resultado,
            "Resultado Final",
            JOptionPane.INFORMATION_MESSAGE
        );
        
        System.exit(0);
    }
    
    // ===== MÉTODO AUXILIAR: Cancelamento =====
    private static void cancelarPrograma() {
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
    }
}