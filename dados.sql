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

insert into vendas (produto, categoria, 
quantidade, preco_unitario, vendedor,
data_venda) values
('Notebook Dell', 'Informatica', 2,3500.00,
'Ana', '2025-09-01'),
