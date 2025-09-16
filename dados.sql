create database lojaDB;
use lojaDB;

-- criar tabela de vendas
create table vendas (
id int primary key auto_increment,
produto varchar (100),
categoria varchar(50),
quantidade int,
preco_unitario DECIMAL(10,2),
vendedor varchar(100),
data_venda date
);
-- VISUALIZAR REGISTROS EM VENDA
select * from vendas;

-- INSERIR OS REGISTROS
insert into vendas (produto, categoria, 
quantidade, preco_unitario, vendedor,
data_venda) values
('Notebook Dell', 'Informatica', 2,3500.00,
'Ana', '2025-09-01'),
('Mouse Gamer', 'Informatica', 5, 150.00,
'Carlos', '2025-09-02'),
('Teclado Mecânico', 'Informatica', 3, 400.00,
'Ana', '2025-09-02'),
('Cadeira Gamer', 'Móveis', 1, 1200.00,
'Beatriz', '2025-09-03'),
('Mesa de Escritório', 'Móveis', 2, 2200.00,
'Carlos', '2025-09-04'),
('Smartphone', 'Eletrônico', 4, 2200.00,
'Ana', '2025-09-05'),
('Smartphone Iphone', 'Eletrônico', 2, 6500.00,
'Beatriz', '2025-09-05'),
('TV LG 55', 'Eletrônico', 1, 3800.00,
'Carlos', '2025-09-06'),
('Fone Bluetooth', 'Eletrônico', 6, 300.00,
'Ana', '2025-09-06'),
('Impressora HP', 'Informatica', 6, 300.00,
'Beatriz', '2025-09-07');


-- selecione todos os registros da tabela vendas
select * from vendas;

-- Liste os vendedores de forma única
select distinct(vendedor) from vendas;

-- Liste o nome do produto e valor vendido
select produto, preco_unitario from venda



