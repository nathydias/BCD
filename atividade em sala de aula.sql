use db_senai;

create table if not exists tb_aluno (
id_aluno int primary key auto_increment ,
nome varchar(45) not null,
nascimento date,
sexo enum ('M' , 'F'),
peso decimal (5,2),
nacionalidade varchar (20) default 'Brasileira');
desc tb_aluno ;	
insert into tb_aluno (nome_aluno, sexo, peso, altura, nacionalidadede)
values 
('Leandromeda rosa', '1919-02-15','M',655.45,1.15,'Italiana');

select * tb_aluno;

insert into tb_aluno(id_aluno,nome_aluno,nascimento,sexo´peso,altura,nacionalidade)
values 
(default,'Pedro francisco' ,' 2001-04-01', 'M' ,
55.1, 1.92,default);

insert into