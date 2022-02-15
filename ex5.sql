create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
create table tb_categoria(
id_categoria bigint(3) auto_increment,
categoria varchar(50) not null,
frete_gratuito boolean,
primary key(id_categoria)
);

use db_construindo_a_nossa_vida;
create table tb_produto(
id bigint(10) auto_increment,
nome varchar(50) not null,
 marca varchar(50),
 fk_categoria bigint(10) not null,
 valor bigint(10) not null,
 primary key(id),
 foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria (categoria, frete_gratuito) Values ("Telhas e Forro", false);
insert into tb_categoria (categoria, frete_gratuito) Values ("Aço e Ferro", false);
insert into tb_categoria (categoria, frete_gratuito) Values ("Eletrico", true);
insert into tb_categoria (categoria, frete_gratuito) Values ("Hidraulico", true);
insert into tb_categoria (categoria, frete_gratuito) Values ("Construção", false);

insert into tb_produto (nome, fk_categoria, valor) Values ("Cimento", 5, 25);
insert into tb_produto (nome, fk_categoria, valor) Values ("Areia", 5, 35);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Rolo fio 6mm vermelho", "Pirelli", 3, 450);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Chuveiro Eletrico", "Lorenzatti", 3, 75);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Espelho tomada", "Tramontina", 3, 17);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Telha 60x90", "Brasilit", 1, 56);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Cabo de Aço 30mm 2M", "Siva", 2, 17);
insert into tb_produto (nome, fk_categoria, valor) Values ("Forro Pvc", 1, 21);

select * from tb_produto where valor > 50;
select * from tb_produto where valor BETWEEN 3 and 60; 

select * from tb_produto where nome LIKE 'c%';

select id, nome, marca, valor, categoria, frete_gratuito from tb_produto inner join tb_categoria on id_categoria = fk_categoria;

select id, nome, marca, valor, categoria, frete_gratuito from tb_produto inner join tb_categoria on id_categoria = fk_categoria where categoria = "Eletrico";