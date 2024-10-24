DROP DATABASE IF EXISTS db_senai;

create database if not exists db_senai;

use db_senai; 

create table if not exists tb_curso (
id_curso int primary key auto_increment,
nome_curso varchar(30) not null unique,
carga_horaria int unsigned,
ano year
);
insert into tb_curso (nome_curso, carga_horaria, ano) values
('Engenharia de software' , 360, 2022),
('Administração' , 400, 2021),
('medicina' ,360, null),
('Direito', null, null),
('Arquitetura' , 420,2019),
('Psicologia' , 480, 2023),
('Biomedicina' , null, 2021),
('Educação Fisica', 360, 2022),
('Ciencia da computação', 480, 2020),
('Engenharia Civil', 400, 2018),
('Farmacia', 400,2022),
('veterinária', 500, null),
('Design Gráfico', 360,2023),
('contabilidade', 400,2019),
('gestão de recursos humanos', 360,2021),
('sistema de informação',480,2022),
('engenharia elétrica', 400,2020),
('marketing',320,2021),
('turismo', 320,2023),
('ciencia biológicas', 420,2019); 

select * from tb_curso 
order by nome_curso ASC;

select nome_curso, ano from tb_curso

order by ano Desc;   

select nome_curso, ano from tb_curso
where ano = 2020
order by nome_curso;


select nome_curso, ano from tb_curso
where ano <= 2020
order by nome_curso; 

select  nome_curso, ano from tb_curso 
where ano != 2020
order by nome_curso;

select nome_curso, ano from tb_curso
where carga > 360 and carga_horaria  < 500 
order by ano;

select nome_curso from tb_curso 
where not carga_horaria > 360 or ano = 2018
order by nome_curso;

select nome_curso, ano from tb_curso 
where ano is null;

select nome_curso, ano from tb_curso 
where ano is not null;

select nome, carga_horaria, ano from tb_curso
where carga_horaria between 400 and 480
order by ano ASC, nome_curso desc;

select nome_curso, ano from tb_curso
where ano in(2018, 2020, 2023);

select * from tb_curso
where nome_curso like 'A%';

select * from tb_curso 
where nome_curso like '%A';

select * from tb_curso 
where nome_curso like '%A%';

select * from tb_curso 
where nome_curso not like '%A%';

select * from tb_curso 
where nome_curso like 'Adm%o';

select * from tb_curso
where nome_curso like 'Eng%a';

select * from tb_curso 
where nome_curso like 'Eng%a__';

select * from tb_curso 
where nome_curso like 'Dir__to';

select count(*) from tb_curso;

select count(*) from tb_curso 
where carga_horaria > 400;

select max(carga_horaria) from tb_curso;

select max(carga_horaria) from tb_curso 
where ano = 2018;

select min (carga_horaria) from tb_curso 
where ano = 2020;

select sum(carga_horaria) from tb_curso 
where ano = 2021;

select AVG (carga_horaria) AS Media
from tb_curso
where ano = 2023;

select carga_horaria AS Carga, count(*) AS Contagem 
from tb_curso 
Group by carga_horaria 
Order by carga_horaria;

select carga_horaria AS carga, count(*) AS contagem 
from tb_curso 
where ano > 2019 
group by carga_ horaria 
having carga_horaria > (select AVG(carga_horaria) from tb_curso)
order by carga_horaria ;  


