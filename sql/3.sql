DROP DATABASE testbase;

CREATE DATABASE IF NOT EXISTS testbase ;

USE testbase;

CREATE TABLE clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    estado VARCHAR(50)
);

CREATE TABLE pedidos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    VALOR INT
);

DELETE FROM clientes;
INSERT INTO clientes (id, nome, estado)
VALUES
(1, 'João'  , 'SP'),
(2, 'Maria' , 'RJ'),
(3, 'Pedro' , 'MG');

DELETE FROM pedidos;
INSERT INTO pedidos (id, cliente_id, valor)
VALUES
(1, 1, 100),
(2, 2, 50),
(3, 2, 30);

SELECT * FROM clientes;
SELECT * FROM pedidos;


SELECT c.id, c.nome, c.estado, p.id AS pedido_id, p.valor
FROM clientes c INNER JOIN pedidos p 
ON c.id = p.cliente_id;