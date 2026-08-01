DROP DATABASE IF EXISTS locadora_veiculos; -- CUIDADO: Isso apaga todos os dados inseridos!
CREATE DATABASE locadora_veiculos;
USE locadora_veiculos;

-- Agora seguem os seus comandos CREATE TABLE normais...


-- 1. Tabela Categoria
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor_diaria DECIMAL(10, 2) NOT NULL
);

-- 2. Tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cnh VARCHAR(20) UNIQUE NOT NULL,
    validade_cnh DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- 3. Tabela Filial
CREATE TABLE Filial (
    id_filial INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- 4. Tabela Veículo
CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    chassi VARCHAR(50) UNIQUE NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Disponível',
    fk_categoria_id INT NOT NULL,
    FOREIGN KEY (fk_categoria_id) REFERENCES Categoria(id_categoria)
);

-- 5. Tabela Reserva
CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    fk_cliente_id INT NOT NULL,
    fk_categoria_id INT NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    FOREIGN KEY (fk_cliente_id) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (fk_categoria_id) REFERENCES Categoria(id_categoria)
);

-- 6. Tabela Locação
CREATE TABLE Locacao (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    fk_cliente_id INT NOT NULL,
    fk_veiculo_id INT NOT NULL,
    fk_filial_retirada_id INT NOT NULL,
    fk_filial_devolucao_id INT NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (fk_cliente_id) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (fk_veiculo_id) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (fk_filial_retirada_id) REFERENCES Filial(id_filial),
    FOREIGN KEY (fk_filial_devolucao_id) REFERENCES Filial(id_filial)
);

-- 7. Tabela Pagamento
CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    fk_locacao_id INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data DATETIME NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    FOREIGN KEY (fk_locacao_id) REFERENCES Locacao(id_locacao)
);

-- 8. Tabela Multa
CREATE TABLE Multa (
    id_multa INT AUTO_INCREMENT PRIMARY KEY,
    fk_locacao_id INT NOT NULL,
    descricao TEXT,
    valor DECIMAL(10, 2) NOT NULL,
    data DATETIME NOT NULL,
    FOREIGN KEY (fk_locacao_id) REFERENCES Locacao(id_locacao)
);

-- 9. Tabela Checklist
CREATE TABLE Checklist (
    id_checklist INT AUTO_INCREMENT PRIMARY KEY,
    fk_locacao_id INT NOT NULL,
    tipo ENUM('Entrega', 'Devolucao') NOT NULL,
    quilometragem INT NOT NULL,
    combustivel VARCHAR(50),
    avarias TEXT,
    observacoes TEXT,
    FOREIGN KEY (fk_locacao_id) REFERENCES Locacao(id_locacao)
);

-- 10. Tabela Manutenção
CREATE TABLE Manutencao (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    fk_veiculo_id INT NOT NULL,
    descricao TEXT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (fk_veiculo_id) REFERENCES Veiculo(id_veiculo)
);