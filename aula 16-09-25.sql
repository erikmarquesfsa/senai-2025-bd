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

-- tabela de matricula
-- ligação entre o aluno e o professor

create table matricula(
idMatricula int auto_increment primary key,
idAluno int,
idProfessor int,
semestre varchar(10),
foreign key (idAluno) references Aluno(idAluno),
foreign key (idProfessor) references Professor(idProfessor)
);

insert into Aluno(nome, data_nascimento,curso) values 
('Ana Souza','2000-05-12','Engenharia'),
('Carlos Silva','1999-11-23','Direito'),
('Mariana Lima','2001-02-17','Medicina'),
('João Pedro','2000-08-09','Engenharia');

insert into Professor (nome, disciplina) values
('Ricardo Alves','Matemática'),
('Fernando Rocha','Direito Constitucional'),
('Paulo Mendes','Anatomia');

insert into Matricula (idAluno, idProfessor, semestre) values
(1,1,'2024-1'),
(2,2,'2024-1'),
(3,3,'2024-1'),
(4,1,'2024-1'),
(1,3,'2024-2');

select * from aluno;
select * from professor;
select * from matricula;

-- QUESTÕES
-- lISTAR TODOS OS ALUNOS CADASTRADOS
select * from aluno;

-- Mostre apenas o nome e o curso dos alunos
select nome, curso from aluno;

-- listar todos os professores e suas disciplinas
select nome,disciplina from professor;

-- mostre todas as matriculas realizadas no semestre 2024-1
select * from matricula where semestre = '2024-1';

-- exiba o nome do aluno e do professor de todas as matricula
select a.nome,p.nome
from matricula as m
join aluno as a on m.idaluno = a.idAluno
join professor as p on m.idprofessor= p.idprofessor

-- conte quantos alunos estão matriculados em cada professor
select p.nome,count(m.idAluno) as total
from matricula as m
join professor as p on m.idprofessor= p.idprofessor
group by p.nome

-- mostre quais alunos fazem engenharia
select nome 
from aluno
where curso = 'Engenharia';

-- liste todos os professores que possuem alunos matriculados
select distinct(p.nome)
from matricula m
join professor as p on m.idprofessor= p.idprofessor;

-- mostre a quantidade de alunos matriculados por semestre
select semestre, count(idaluno) as T
from matricula
group by semestre;

/* exiba o nome do professor que ministra a disciplina 
  de anatomia e o nome dos seus alunos */

SELECT p.nome as Professor, a.nome as Aluno
from matricula as M
join aluno as a on m.idaluno = a.idAluno
join professor as p on m.idprofessor= p.idprofessor
where p.disciplina = 'Anatomia';





