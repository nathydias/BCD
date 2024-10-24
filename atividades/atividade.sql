create database db_loja;

use db_loja;

create table tb_vendidas (
id_nf int,
id_item int,
cod_prod int,
valor_unit decimal (4,2),
quantidade int,
desconto int
);

insert into tb_vendidas (id_nf, id_item, cod_prod, valor_unit, quantidade, desconto);