-- Relacionamento um pra um
create database db_escola;
use db_escola;


create table tb_curso(
id_curso int primary key auto_increment,
nome varchar(50),
carga_horaria int,
materias varchar(50)
);
create table tb_aluno(
id_aluno int primary key auto_increment,
nome  varchar(50) not null,
cpf varchar(10) not null,
rg varchar(50) not null,
idade int,
rm int,
CURSO_id_curso int,
foreign key(CURSO_id_curso) references tb_curso(id_curso)
);

create table tb_professor(
id_professor int primary key auto_increment,
nome varchar(50),
idade int,
cod_professor int,
rg varchar(50),
cpf varchar(50),
curso_id_curso INT,
foreign key(curso_id_curso) references tb_curso(id_curso)
);

insert into tb_curso(id_curso, nome,carga_horaria,materias) values
(default, "Desenvolvedor" ,10, "Banco de dados"),
(default, "Analise de sistemas" ,7, "Lima"),
(default, "Educacao fisica" ,5, "anatomia"),
(default, "Geografia" ,10, "planice"),
(default, "Biologia" ,12, "DNA"),
(default, "Sociologia" ,2, "Moral"),
(default, "Direito" ,10, "Leis"),
(default, "Projeto de vida" ,3, "Futuro"),
(default, "Filosofia" ,11, "etica");

INSERT INTO tb_professor(id_professor, nome, idade, cod_professor, rg, cpf) VALUES
(default, "Nathy",27,24,345678,9876589),
(default, "Laura",27,24,345678,9876589),
(default, "Lola",27,24,345678,9876589),
(default, "Geraldo",27,24,345678,9876589),
(default, "Caetano",27,24,345678,9876589),
(default, "Sophia",27,24,345678,9876589),
(default, "Matheus",27,24,345678,9876589),
(default, "Noah",27,24,345678,9876589),
(default, "Josh",27,24,345678,9876589),
(default, "Maria",27,24,345678,9876589);

INSERT INTO tb_aluno(id_aluno, nome, cpf, rg, idade, rm) values 
(default, "Nathy",27,24,345678,9876589),
(default, "valéria",27,24,345678,9876589),
(default, "gabi",27,24,345678,9876589),
(default, "Julia",27,24,345678,9876589),
(default, "Rafa",27,24,345678,9876589),
(default, "Camily",27,24,345678,9876589),
(default, "Laura",27,24,345678,9876589),
(default, "Leticia",27,24,345678,9876589),
(default, "Liandra",27,24,345678,9876589),
(default, "Alexia",27,24,345678,9876589);

alter table tb_aluno 
add column altura decimal(2,2);

update  tb_cursos 
SET materias = 'Sofware'
where id_curso = 1; 

select tb_professor.nome , tb_curso.nome
from tb_professor 
inner join tb_professor 
on tb_professor.CURSO_id_curso = tb_curso.id_curso;

create view vw_curso as
select tb_aluno.nome , tb_curso.nome
FROM tb_aluno
join tb_curso
on tb_aluno.CURSO_id_curso = tb_curso.id_curso;
