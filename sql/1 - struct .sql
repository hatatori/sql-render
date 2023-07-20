DROP DATABASE testbase;

CREATE DATABASE IF NOT EXISTS testbase ;

USE testbase;

CREATE TABLE pessoas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    endereco VARCHAR(50),
    cidade VARCHAR(50),
    pais VARCHAR(50),
);

CREATE TABLE clientes(
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(50),
    cliente_cel VARCHAR(50),
    cliente_pais VARCHAR(50)
);

CREATE TABLE produtos(
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_nome VARCHAR(50),
    produto_valor FLOAT
);

CREATE TABLE vendas(
    venda_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto_id INT, 
    venda_data DATE,
    venda_unidade INT
);
