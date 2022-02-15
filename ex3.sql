create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria(
id_categoria bigint(10) auto_increment,
categoria varchar(10) not null,
receita boolean,
primary key(id_categoria)
);

use db_farmacia_do_bem;
create table tb_produto(
id bigint(10) auto_increment,
nome varchar(50) not null,
 marca varchar(50),
 fk_categoria bigint(10) not null,
 valor bigint(10) not null,
 primary key(id),
 foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria (categoria, receita) Values ("Remédios", true);
insert into tb_categoria (categoria, receita) Values ("Vitaminas", false);
insert into tb_categoria (categoria, receita) Values ("Cosmeticos", false);
insert into tb_categoria (categoria, receita) Values ("Aplicação", true);
insert into tb_categoria (categoria, receita) Values ("Higiene", false);

insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Batom Rosa Claro", "Dailus", 3, 20);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Buscofem", "Buscopan", 1, 18);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Dipirona Monoidratada", "Medley", 1, 4);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Fralda Descartavel XG 20UND", "Pompom", 5, 21);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Esmalte Vermelho Intenso", "Risque", 3, 5);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Kit Cachos Definidos", "Salon Line", 5, 72);
insert into tb_produto (nome, marca, fk_categoria, valor) Values ("Colagéno + Vitamina C", "Maxinutri", 2, 65);
insert into tb_produto (nome, fk_categoria, valor) Values ("Medicamento intramuscular", 4, 15);

select * from tb_produto where valor > 50;
select * from tb_produto where valor BETWEEN 3 and 60; 

select * from tb_produto where nome LIKE 'b%';

select id, nome, marca, valor, categoria, receita from tb_produto inner join tb_categoria on id_categoria = fk_categoria;

select id, nome, marca, valor, categoria, receita from tb_produto inner join tb_categoria on id_categoria = fk_categoria where categoria = "Remédios";
