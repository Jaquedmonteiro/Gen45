create database db_cidade_das_carnes;

use db_cidade_das_carnes;
create table tb_categoria(
id_categoria bigint(3) auto_increment,
categoria varchar(50) not null,
tempero boolean,
primary key(id_categoria)
);

use db_cidade_das_carnes;
create table tb_produto(
id bigint(10) auto_increment,
nome varchar(50) not null,
 marca varchar(50),
 fk_categoria bigint(10) not null,
 valor bigint(10) not null,
 primary key(id),
 foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria (categoria, tempero) Values ("Suíno", true);
insert into tb_categoria (categoria, tempero) Values ("Suíno", false);
insert into tb_categoria (categoria, tempero) Values ("Bovino", true);
insert into tb_categoria (categoria, tempero) Values ("Bovino", false);
insert into tb_categoria (categoria) Values ("Aveario");

insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Bisteca", "Friboi", 2, 19);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Contra Filé", "Swift", 4, 55);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Salsicha", "Seara", 2, 15);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Nuggets", "Aurora", 5, 22);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Linguiça", "Nabrasa", 2, 21);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Acém moído", "Friboi", 3, 44);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Coxão Mole", "Swift", 4, 35);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Asa de Frango", "Friboi", 5, 15);

select * from tb_produto where valor > 50;
select * from tb_produto where valor BETWEEN 3 and 60; 

select * from tb_produto where nome LIKE 'c%';

select id, nome, marca, valor, categoria, tempero from tb_produto inner join tb_categoria on id_categoria = fk_categoria;

select id, nome, marca, valor, categoria, tempero from tb_produto inner join tb_categoria on id_categoria = fk_categoria where categoria = "Aveario";