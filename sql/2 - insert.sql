DELETE FROM clientes;
INSERT INTO clientes (cliente_id, cliente_nome, cliente_cel, cliente_pais)
VALUES
(1, 'Ethan'      , '+1 2125556789'  , 'US'),
(2, 'Oliver'     , '+44 2071234567' , 'UK'),
(3, 'Gabriel'    , '+55 11987654321', 'BR'),
(4, 'Liam'       , '+1 4165551234'  , 'CA'),
(5, 'Maximilian' , '+49 3012345678' , 'DE'),
(6, 'Louis'      , '+33 145678910'  , 'FR'),
(7, 'Haruki'     , '+81 312345678'  , 'JP'),
(8, 'Wei'        , '+86 1012345678' , 'CN'),
(9, 'Jack'       , '+61 291234567'  , 'AU'),
(10, 'Alejandro' , '+52 5512345678' , 'MX');

DELETE FROM produtos;
INSERT INTO produtos (produto_id, produto_nome, produto_valor)
VALUES
(1, 'Leite Integral'       ,  48.69),
(2, 'Cereal Matinal'       ,  13.60),
(3, 'Macarrão Instantâneo' ,  76.69),
(4, 'Refrigerante de Cola' ,  16.83),
(5, 'Pão de Forma'         ,  34.33),
(6, 'Queijo Mussarela'     ,  43.12),
(7, 'Biscoito Recheado'    ,  93.75),
(8, 'Molho de Tomate'      ,  45.93),
(9, 'Café em Pó'           ,  77.04),
(10,'Sabonete Líquido'     , 86.85);

DELETE FROM vendas;
INSERT INTO vendas(venda_id, cliente_id, produto_id, venda_data, venda_unidade)
VALUES
(1,  8, 8,  '2023-10-05' ,   10),
(2,  4, 2,  '2023-03-24' ,   3),
(3,  1, 1,  '2023-10-16' ,   1),
(4,  0, 2,  '2023-07-25' ,   8),
(5,  3, 9,  '2023-05-09' ,   1),
(6,  1, 6,  '2023-11-25' ,   3),
(7,  8, 6,  '2023-04-29'  ,  3),
(8,  8, 7,  '2023-02-15'  ,  6),
(9,  6, 6,  '2023-09-17'  ,  8),
(10, 1, 9,  '2023-09-12'  ,  2);

DELETE FROM pessoas;
INSERT INTO pessoas (pessoa_id, pessoa_nome, pessoa_endereco, pessoa_cidade, pessoa_pais)
VALUES
(1, 'Jennifer'	      , 'Main Street'	   , 'Washington'  , 'US'),
(2, 'Florence'	      , 'High Street'	   , 'Londres'     , 'UK'),
(3, 'Alessandra'	  , 'Avenida Paulista' , 'São Paulo'   , 'BR'),
(4, 'Marcelo'	      , 'Shibuya'	       , 'Tóquio'      , 'JP'),
(5, 'Bingbing'	      , 'Nanjing Road'	   , 'Pequim'      , 'CH'),
(6, 'Yang Zi'	      , 'Shiquan Street'   , 'Suzhou'      , 'CH'),
(7, 'Léa Seydoux'	  , 'Grandes Arcades'  , 'Estrasburgo' , 'FR'),
(8, 'Mélanie Laurent' , 'Tonneliers'	   , 'Estrasburgo' , 'FR');

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas;
SELECT * FROM pessoas;