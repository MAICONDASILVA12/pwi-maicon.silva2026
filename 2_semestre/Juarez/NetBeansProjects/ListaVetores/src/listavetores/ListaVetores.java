/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package listavetores;

import javax.swing.JOptionPane;
import java.util.Arrays;

/**
 *
 * @author SeuNome
 */
public class ListaVetores {

    public static void main(String[] args) {
        // Menu principal para escolher o exercício
        String menu = "Escolha o exercício para executar:\n"
                + "1 - Iniciais do Nome\n"
                + "2 - Soma de 5 valores\n"
                + "3 - Valores Pares\n"
                + "4 - Média de 4 Bimestres\n"
                + "5 - Ordenar 10 valores\n"
                + "6 - Multiplicar Vetor A x B\n"
                + "0 - Sair";
        
        String opcao = "";
        
        // Laço para o menu continuar aparecendo até o usuário digitar 0
        while (!opcao.equals("0")) {
            opcao = JOptionPane.showInputDialog(menu);
            
            // Se o usuário clicar em Cancelar ou fechar a janela, encerra o programa
            if (opcao == null || opcao.equals("0")) {
                break;
            }
            
            switch (opcao) {
                case "1":
                    exercicio1();
                    break;
                case "2":
                    exercicio2();
                    break;
                case "3":
                    exercicio3();
                    break;
                case "4":
                    exercicio4();
                    break;
                case "5":
                    exercicio5();
                    break;
                case "6":
                    exercicio6();
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opção inválida!");
            }
        }
        JOptionPane.showMessageDialog(null, "Programa encerrado.");
    }

    // ================= EXERCÍCIO 1 =================
    public static void exercicio1() {
        String nomeCompleto = JOptionPane.showInputDialog("Digite seu nome completo:");
        if (nomeCompleto == null || nomeCompleto.trim().isEmpty()) {
            return;
        }
        
        String[] partes = nomeCompleto.trim().split("\\s+"); // Divide por espaços
        String iniciais = "";
        
        for (String parte : partes) {
            iniciais += parte.charAt(0) + ". ";
        }
        
        JOptionPane.showMessageDialog(null, "As iniciais do seu nome são: " + iniciais.toUpperCase());
    }

    // ================= EXERCÍCIO 2 =================
    public static void exercicio2() {
        double[] valores = new double[5];
        double somaTotal = 0;
        
        for (int i = 0; i < 5; i++) {
            String entrada = JOptionPane.showInputDialog("Digite o " + (i + 1) + "º valor:");
            if (entrada == null) return; // Cancela se fechar
            valores[i] = Double.parseDouble(entrada);
            somaTotal += valores[i];
        }
        
        JOptionPane.showMessageDialog(null, "O valor total é: " + somaTotal);
    }

    // ================= EXERCÍCIO 3 =================
    public static void exercicio3() {
        int[] valores = new int[10];
        String mensagem = "Valores pares digitados:\n";
        boolean achouPar = false;
        
        for (int i = 0; i < 10; i++) {
            String entrada = JOptionPane.showInputDialog("Digite o " + (i + 1) + "º valor:");
            if (entrada == null) return;
            valores[i] = Integer.parseInt(entrada);
        }
        
        for (int i = 0; i < 10; i++) {
            if (valores[i] % 2 == 0) {
                mensagem += valores[i] + "\n";
                achouPar = true;
            }
        }
        
        if (!achouPar) {
            mensagem = "Nenhum valor par foi digitado.";
        }
        
        JOptionPane.showMessageDialog(null, mensagem);
    }

    // ================= EXERCÍCIO 4 =================
    public static void exercicio4() {
        double[] notas = new double[4];
        double soma = 0;
        
        for (int i = 0; i < 4; i++) {
            String entrada = JOptionPane.showInputDialog("Digite a nota do " + (i + 1) + "º bimestre:");
            if (entrada == null) return;
            notas[i] = Double.parseDouble(entrada);
            soma += notas[i];
        }
        
        double media = soma / 4;
        String situacao;
        
        if (media >= 7) {
            situacao = "APROVADO";
        } else if (media >= 5) {
            situacao = "RECUPERAÇÃO";
        } else {
            situacao = "REPROVADO";
        }
        
        String resultado = String.format("Média: %.2f\nSituação: %s", media, situacao);
        JOptionPane.showMessageDialog(null, resultado);
    }

    // ================= EXERCÍCIO 5 =================
    public static void exercicio5() {
        int[] original = new int[10];
        int[] crescente = new int[10];
        
        for (int i = 0; i < 10; i++) {
            String entrada = JOptionPane.showInputDialog("Digite o " + (i + 1) + "º valor:");
            if (entrada == null) return;
            original[i] = Integer.parseInt(entrada);
        }
        
        // Copiando os dados
        System.arraycopy(original, 0, crescente, 0, 10);
        
        // Ordenando com o método nativo do Java (Arrays.sort)
        Arrays.sort(crescente);
        
        String msg = "Vetor Original: " + Arrays.toString(original) + "\n\n";
        msg += "Vetor em Ordem Crescente: " + Arrays.toString(crescente);
        
        JOptionPane.showMessageDialog(null, msg);
    }

    // ================= EXERCÍCIO 6 =================
    public static void exercicio6() {
        int[] vetorA = new int[5];
        int[] vetorB = new int[5];
        int[] vetorC = new int[5];
        
        for (int i = 0; i < 5; i++) {
            String entrada = JOptionPane.showInputDialog("Vetor A - Digite o " + (i + 1) + "º valor:");
            if (entrada == null) return;
            vetorA[i] = Integer.parseInt(entrada);
        }
        
        for (int i = 0; i < 5; i++) {
            String entrada = JOptionPane.showInputDialog("Vetor B - Digite o " + (i + 1) + "º valor:");
            if (entrada == null) return;
            vetorB[i] = Integer.parseInt(entrada);
        }
        
        for (int i = 0; i < 5; i++) {
            vetorC[i] = vetorA[i] * vetorB[i];
        }
        
        String msg = "Vetor A: " + Arrays.toString(vetorA) + "\n";
        msg += "Vetor B: " + Arrays.toString(vetorB) + "\n";
        msg += "Vetor C (A x B): " + Arrays.toString(vetorC);
        
        JOptionPane.showMessageDialog(null, msg) ;
    }
}