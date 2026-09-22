import javax.swing.JOptionPane;

public class Eleicao {
    
    public static void main(String[] args) {
        
        // ===== CONTADORES DE VOTOS =====
        int votosCandidato1 = 0;
        int votosCandidato2 = 0;
        int votosCandidato3 = 0;
        int votosCandidato4 = 0;
        int votosBrancos = 0;
        int votosNulos = 0;
        int totalVotos = 0;
        
        // ===== CONTROLE DE ELEITORES =====
        String[] eleitoresVotaram = new String[100]; // Título eleitoral já registrado
        int qtdEleitores = 0;
        
        // ===== CABEÇALHO INICIAL =====
        JOptionPane.showMessageDialog(
            null,
            "===== URNA ELETRÔNICA 2026 =====\n\n" +
            "Candidatos:\n" +
            "  1 → Candidato 1\n" +
            "  2 → Candidato 2\n" +
            "  3 → Candidato 3\n" +
            "  4 → Candidato 4\n" +
            "  5 → Voto em Branco\n" +
            "  Outro → Nulo\n\n" +
            "Atenção: cada eleitor deve se identificar.",
            "Bem-vindo",
            JOptionPane.INFORMATION_MESSAGE
        );
        
        // ===== LOOP PRINCIPAL =====
        while (true) {
            
            // ----- MELHORIA 4: Identificação do eleitor -----
            String tituloEleitor = JOptionPane.showInputDialog(
                null,
                "Digite o título de eleitor (ou '0' para encerrar a votação):",
                "Identificação",
                JOptionPane.QUESTION_MESSAGE
            );
            
            // Cancelou ou fechou
            if (tituloEleitor == null) {
                int opc = JOptionPane.showConfirmDialog(
                    null,
                    "Deseja realmente encerrar a votação?",
                    "Confirmação",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.WARNING_MESSAGE
                );
                if (opc == JOptionPane.YES_OPTION) break;
                else continue;
            }
            
            tituloEleitor = tituloEleitor.trim();
            
            // Encerrar votação
            if (tituloEleitor.equals("0")) {
                break;
            }
            
            // Verifica se está vazio
            if (tituloEleitor.isEmpty()) {
                JOptionPane.showMessageDialog(
                    null,
                    "Título de eleitor não pode ser vazio!",
                    "Erro",
                    JOptionPane.ERROR_MESSAGE
                );
                continue;
            }
            
            // ----- MELHORIA 4: Verifica voto duplicado -----
            boolean jaVotou = false;
            for (int i = 0; i < qtdEleitores; i++) {
                if (eleitoresVotaram[i].equals(tituloEleitor)) {
                    jaVotou = true;
                    break;
                }
            }
            
            if (jaVotou) {
                JOptionPane.showMessageDialog(
                    null,
                    "❌ Eleitor com título " + tituloEleitor + " já votou!\n" +
                    "Cada eleitor pode votar apenas uma vez.",
                    "Voto Duplicado",
                    JOptionPane.ERROR_MESSAGE
                );
                continue;
            }
            
            // ----- LEITURA DO VOTO -----
            String entrada = JOptionPane.showInputDialog(
                null,
                "Eleitor: " + tituloEleitor + "\n\n" +
                "Digite o código do voto:\n\n" +
                "1, 2, 3, 4 → Candidatos\n" +
                "5 → Voto em Branco\n" +
                "Outro número → Voto Nulo",
                "Urna Eletrônica - Voto " + (totalVotos + 1),
                JOptionPane.QUESTION_MESSAGE
            );
            
            if (entrada == null) {
                JOptionPane.showMessageDialog(
                    null,
                    "Voto cancelado. Eleitor não foi registrado.",
                    "Aviso",
                    JOptionPane.WARNING_MESSAGE
                );
                continue;
            }
            
            // Converte para inteiro
            int codigo;
            try {
                codigo = Integer.parseInt(entrada.trim());
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(
                    null,
                    "Valor inválido! Digite apenas números.",
                    "Erro",
                    JOptionPane.ERROR_MESSAGE
                );
                continue;
            }
            
            if (codigo == 0) {
                JOptionPane.showMessageDialog(
                    null,
                    "Código '0' é reservado para encerrar a votação.",
                    "Aviso",
                    JOptionPane.WARNING_MESSAGE
                );
                continue;
            }
            
            // ===== MELHORIA 3: Confirmação do voto =====
            String descricaoVoto;
            switch (codigo) {
                case 1: descricaoVoto = "CANDIDATO 1"; break;
                case 2: descricaoVoto = "CANDIDATO 2"; break;
                case 3: descricaoVoto = "CANDIDATO 3"; break;
                case 4: descricaoVoto = "CANDIDATO 4"; break;
                case 5: descricaoVoto = "VOTO EM BRANCO"; break;
                default: descricaoVoto = "VOTO NULO"; break;
            }
            
            int confirmacao = JOptionPane.showConfirmDialog(
                null,
                "Você está votando em:\n\n" +
                "➤ " + descricaoVoto + "\n\n" +
                "Confirma o voto?",
                "Confirmação do Voto",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE
            );
            
            if (confirmacao != JOptionPane.YES_OPTION) {
                JOptionPane.showMessageDialog(
                    null,
                    "Voto cancelado! Vote novamente.",
                    "Voto Cancelado",
                    JOptionPane.WARNING_MESSAGE
                );
                continue;
            }
            
            // ===== PROCESSAMENTO DO VOTO =====
            switch (codigo) {
                case 1: votosCandidato1++; break;
                case 2: votosCandidato2++; break;
                case 3: votosCandidato3++; break;
                case 4: votosCandidato4++; break;
                case 5: votosBrancos++; break;
                default: votosNulos++; break;
            }
            
            // Registra o eleitor
            eleitoresVotaram[qtdEleitores] = tituloEleitor;
            qtdEleitores++;
            totalVotos++;
            
            // Feedback visual
            JOptionPane.showMessageDialog(
                null,
                "✅ VOTO CONFIRMADO!\n\n" +
                "Obrigado por exercer sua cidadania,\n" +
                "eleitor " + tituloEleitor + ".",
                "Voto Registrado",
                JOptionPane.INFORMATION_MESSAGE
            );
        }
        
        // ===== RESULTADO =====
        if (totalVotos == 0) {
            JOptionPane.showMessageDialog(
                null,
                "Nenhum voto foi registrado.",
                "Resultado",
                JOptionPane.WARNING_MESSAGE
            );
            System.exit(0);
        }
        
        // ----- Cálculo de percentuais -----
        double percC1 = votosCandidato1 * 100.0 / totalVotos;
        double percC2 = votosCandidato2 * 100.0 / totalVotos;
        double percC3 = votosCandidato3 * 100.0 / totalVotos;
        double percC4 = votosCandidato4 * 100.0 / totalVotos;
        double percBrancos = votosBrancos * 100.0 / totalVotos;
        double percNulos = votosNulos * 100.0 / totalVotos;
        
        // ----- Votos válidos (exclui brancos e nulos) -----
        int votosValidos = votosCandidato1 + votosCandidato2 + votosCandidato3 + votosCandidato4;
        
        // ===== MELHORIA 1 e 2: Identificar vencedor e segundo turno =====
        String resultadoEleicao;
        
        if (votosValidos == 0) {
            resultadoEleicao = "⚠ Não houve votos válidos.\n" +
                               "A eleição não pode ser decidida.";
        } else {
            // Descobre o mais votado
            int maisVotado = votosCandidato1;
            int numVencedor = 1;
            
            if (votosCandidato2 > maisVotado) { maisVotado = votosCandidato2; numVencedor = 2; }
            if (votosCandidato3 > maisVotado) { maisVotado = votosCandidato3; numVencedor = 3; }
            if (votosCandidato4 > maisVotado) { maisVotado = votosCandidato4; numVencedor = 4; }
            
            double percVencedor = maisVotado * 100.0 / votosValidos;
            
            // ----- MELHORIA 2: Verifica segundo turno -----
            if (percVencedor > 50.0) {
                resultadoEleicao = "🏆 VITÓRIA EM 1º TURNO!\n\n" +
                                   "Candidato " + numVencedor + " eleito com " +
                                   String.format("%.2f%%", percVencedor) + " dos votos válidos.";
            } else {
                // Descobre o 2º colocado
                int segundoMaisVotado = -1;
                int numSegundo = 0;
                
                for (int i = 1; i <= 4; i++) {
                    int votosAtual = (i == 1) ? votosCandidato1 :
                                     (i == 2) ? votosCandidato2 :
                                     (i == 3) ? votosCandidato3 : votosCandidato4;
                    if (i != numVencedor && votosAtual > segundoMaisVotado) {
                        segundoMaisVotado = votosAtual;
                        numSegundo = i;
                    }
                }
                
                resultadoEleicao = "⚠ NENHUM CANDIDATO OBTEVE MAIORIA ABSOLUTA!\n\n" +
                                   "🥇 1º lugar: Candidato " + numVencedor + 
                                   " (" + String.format("%.2f%%", percVencedor) + ")\n" +
                                   "🥈 2º lugar: Candidato " + numSegundo + 
                                   " (" + String.format("%.2f%%", segundoMaisVotado * 100.0 / votosValidos) + ")\n\n" +
                                   "➤ HAVERÁ SEGUNDO TURNO!";
            }
        }
        
        // ===== EXIBIÇÃO DO RESULTADO FINAL =====
        String resultado = String.format(
            "========= RESULTADO DA ELEIÇÃO =========%n%n" +
            "Total de votos apurados: %d%n" +
            "Votos válidos..........: %d%n%n" +
            "---------- VOTOS POR CANDIDATO ----------%n" +
            "Candidato 1 ........: %3d votos (%.2f%%)%n" +
            "Candidato 2 ........: %3d votos (%.2f%%)%n" +
            "Candidato 3 ........: %3d votos (%.2f%%)%n" +
            "Candidato 4 ........: %3d votos (%.2f%%)%n%n" +
            "---------- OUTROS VOTOS ----------%n" +
            "Votos em Branco ....: %3d votos (%.2f%%)%n" +
            "Votos Nulos ........: %3d votos (%.2f%%)%n%n" +
            "========================================%n" +
            "%s",
            totalVotos, votosValidos,
            votosCandidato1, percC1,
            votosCandidato2, percC2,
            votosCandidato3, percC3,
            votosCandidato4, percC4,
            votosBrancos, percBrancos,
            votosNulos, percNulos,
            resultadoEleicao
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
