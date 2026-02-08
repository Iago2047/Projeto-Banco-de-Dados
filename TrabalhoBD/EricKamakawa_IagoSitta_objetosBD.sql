-- Criar o banco
CREATE DATABASE IF NOT EXISTS gestao_projetos;

-- Selecionar o banco
USE gestao_projetos;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL
);
-- Relacionamento tem: Adição de coluna do lado Projeto (0,n)
CREATE TABLE Projeto (
    id_projeto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) 
);

CREATE TABLE Desenvolvedor (
    id_desenvolvedor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    custo_por_hora DECIMAL(10,2) NOT NULL
);
-- Relacionamento alocação: Tabela própria
CREATE TABLE Alocacao (
    id_desenvolvedor INT NOT NULL,
    id_projeto INT NOT NULL,
    data_de DATE NOT NULL,
    data_ate DATE NOT NULL,
    PRIMARY KEY (id_desenvolvedor, id_projeto, data_de),
    FOREIGN KEY (id_desenvolvedor) REFERENCES Desenvolvedor(id_desenvolvedor),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);
-- Relacionamento apontamento: Tabela própria
CREATE TABLE Apontamento (
    id_apontamento INT PRIMARY KEY,
    id_desenvolvedor INT NOT NULL,
    id_projeto INT NOT NULL,
    inicio DATETIME NOT NULL,
    fim DATETIME NOT NULL,
    FOREIGN KEY (id_desenvolvedor) REFERENCES Desenvolvedor(id_desenvolvedor),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);
