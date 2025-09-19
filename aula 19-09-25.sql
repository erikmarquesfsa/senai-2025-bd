create database EscolaDB;
use EscolaDB;

create table Aluno (
idAluno int auto_increment primary key,
nome varchar(100),
data_nascimento DATE,
curso varchar (100)
);

select * from Aluno;

create table Professor(
idProfessor int auto_increment primary key,
nome varchar(100),
disciplina varchar(100)
);
select * from professor;