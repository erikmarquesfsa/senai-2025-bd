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


