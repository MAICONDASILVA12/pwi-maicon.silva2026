package aprendendoform; // Deixe o nome do seu pacote aqui

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Calculo extends JFrame {

    // 1. Declarando os componentes da tela
    private JPanel panelFundo;
    private JLabel lblN1, lblN2, lblResultado;
    private JTextField txt_n1, txt_n2, txt_res;
    private JButton btn_Soma, btn_Sub, btn_Mult, btn_Div, btn_Retornar, btn_Novo, btn_Limpar, btn_Sair;

    public Calculo() {
        // Configurações da janela
        setTitle("Calculadora");
        setSize(550, 400); // Tamanho da tela
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null); // Centraliza na tela
        setLayout(null); // Permite posicionar os itens manualmente

        // 2. Criando o Painel Amarelo
        panelFundo = new JPanel();
        panelFundo.setBackground(new Color(204, 204, 0));
        panelFundo.setBorder(BorderFactory.createTitledBorder(null, "Programação de Computadores", 
                javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, 
                javax.swing.border.TitledBorder.DEFAULT_POSITION, 
                new Font("Tahoma", Font.BOLD | Font.ITALIC, 16)));
        panelFundo.setBounds(10, 10, 510, 340);
        panelFundo.setLayout(null);
        add(panelFundo);

        // 3. Criando os Labels e TextFields (N1, N2, Resultado)
        lblN1 = new JLabel("N1");
        lblN1.setBounds(80, 60, 50, 25);
        panelFundo.add(lblN1);

        txt_n1 = new JTextField();
        txt_n1.setBounds(130, 60, 250, 25);
        panelFundo.add(txt_n1);

        lblN2 = new JLabel("N2");
        lblN2.setBounds(80, 100, 50, 25);
        panelFundo.add(lblN2);

        txt_n2 = new JTextField();
        txt_n2.setBounds(130, 100, 250, 25);
        panelFundo.add(txt_n2);

        lblResultado = new JLabel("Resultado");
        lblResultado.setBounds(80, 160, 80, 25);
        panelFundo.add(lblResultado);

        txt_res = new JTextField();
        txt_res.setBounds(130, 160, 250, 25);
        panelFundo.add(txt_res);

        // 4. Criando os Botões e suas posições
        btn_Soma = new JButton("+");
        btn_Soma.setBounds(60, 230, 50, 30);
        panelFundo.add(btn_Soma);

        btn_Sub = new JButton("-");
        btn_Sub.setBounds(120, 230, 50, 30);
        panelFundo.add(btn_Sub);

        btn_Mult = new JButton("*");
        btn_Mult.setBounds(180, 230, 50, 30);
        panelFundo.add(btn_Mult);

        btn_Div = new JButton("/");
        btn_Div.setBounds(240, 230, 50, 30);
        panelFundo.add(btn_Div);

        btn_Retornar = new JButton("Retornar");
        btn_Retornar.setBounds(330, 230, 100, 30);
        panelFundo.add(btn_Retornar);

        btn_Novo = new JButton("Novo");
        btn_Novo.setBounds(60, 280, 80, 30);
        panelFundo.add(btn_Novo);

        btn_Limpar = new JButton("Limpar");
        btn_Limpar.setBounds(150, 280, 80, 30);
        panelFundo.add(btn_Limpar);

        btn_Sair = new JButton("Sair");
        btn_Sair.setBounds(240, 280, 80, 30);
        panelFundo.add(btn_Sair);

        // 5. Iniciando o programa com os campos travados
        Desabilitar();

        // ================= AÇÕES DOS BOTÕES =================

        // Ação do Botão Somar (+)
        btn_Soma.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double x = Double.parseDouble(txt_n1.getText());
                    double y = Double.parseDouble(txt_n2.getText());
                    double z = x + y;
                    txt_res.setText(String.valueOf(z));
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(null, "Digite apenas números válidos!");
                }
            }
        });

        // Ação do Botão Subtrair (-)
        btn_Sub.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double x = Double.parseDouble(txt_n1.getText());
                    double y = Double.parseDouble(txt_n2.getText());
                    double z = x - y;
                    txt_res.setText(String.valueOf(z));
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(null, "Digite apenas números válidos!");
                }
            }
        });

        // Ação do Botão Multiplicar (*)
        btn_Mult.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double x = Double.parseDouble(txt_n1.getText());
                    double y = Double.parseDouble(txt_n2.getText());
                    double z = x * y;
                    txt_res.setText(String.valueOf(z));
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(null, "Digite apenas números válidos!");
                }
            }
        });

        // Ação do Botão Dividir (/)
        btn_Div.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double x = Double.parseDouble(txt_n1.getText());
                    double y = Double.parseDouble(txt_n2.getText());
                    if (y == 0) {
                        txt_res.setText("Não dividir por zero");
                    } else {
                        double z = x / y;
                        txt_res.setText(String.valueOf(z));
                    }
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(null, "Digite apenas números válidos!");
                }
            }
        });

        // Ação do Botão Novo
        btn_Novo.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                txt_n1.setText("");
                txt_n2.setText("");
                txt_res.setText("");
                Habilitar();
                txt_n1.requestFocus(); // Coloca o cursor no N1
            }
        });

        // Ação do Botão Limpar
        btn_Limpar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                txt_n1.setText("");
                txt_n2.setText("");
                txt_res.setText("");
                txt_n1.requestFocus();
            }
        });

        // Ação do Botão Sair
        btn_Sair.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                System.exit(0);
            }
        });

        // Ação do Botão Retornar (Fecha a janela atual)
        btn_Retornar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
    }

    // Funções de Habilitar e Desabilitar campos (Igual ao PDF)
    public void Desabilitar() {
        txt_n1.setEditable(false);
        txt_n2.setEditable(false);
        txt_res.setEditable(false);
    }

    public void Habilitar() {
        txt_n1.setEditable(true);
        txt_n2.setEditable(true);
        txt_res.setEditable(false); // O resultado continua bloqueado para digitação
    }

    // Método principal para rodar o programa
    public static void main(String[] args) {
        // Faz a janela rodar na thread correta do Java
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                Calculo calc = new Calculo();
                calc.setVisible(true); // Mostra a janela
            }
        });
    }
}