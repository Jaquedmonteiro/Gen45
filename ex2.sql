create database db_pizzaria_legal;

use db_pizzaria_legal; 
create table tb_categoria(
id_categoria bigint (3) auto_increment,
nome varchar (50) not null,
brinde varchar(50),
primary key (id_categoria)
);

use db_pizzaria_legal; 
create table tb_pizza(
id bigint (3) auto_increment,
nome varchar(50) not null,
valor bigint(100)  not null,
tamanho char(1),
fk_categoria bigint(3) not null,
primary key (id),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria (nome, brinde) Values ("Pizza Salgada", "Brinde: Dolly Guaraná 2L");
insert into tb_categoria (nome, brinde) Values ("Pizza Doce", "Brinde: Dolly Guaraná 2L");
insert into tb_categoria (nome, brinde) Values ("Pizza Trem", "Brinde: Coca-cola 2L");
insert into tb_categoria (nome) Values ("Esfiha");
insert into tb_categoria (nome) Values ("Brotinho");

insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Calabresa com Queijo", 29, "m", 1);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Romeu e Julieta", 46, "m", 2);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Escolha 4 Sabores", 99, "g", 3);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Queijo Qualho", 15, "p", 4);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Frango com Catupiry", 35, "m", 2);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Brócolis com Bacon", 50, "m", 1);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Peito de Peru com Catupiry", 50, "m", 1);
insert into tb_pizza (nome, valor, tamanho, fk_categoria) Values ("Banana com Doce de Leite", 46, "m", 2);

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor BETWEEN 29 and 60; 

select * from tb_pizza where nome LIKE 'c%';

select a.*,b.* from tb_categoria A inner join tb_pizza B on b.fk_categoria = a.id_categoria;

select a.*,b.* from tb_categoria A inner join tb_pizza B on b.fk_categoria = a.id_categoria where a.nome = "Pizza Salgada";
