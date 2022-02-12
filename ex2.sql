use db_ecommerce;

create table tb_produto(
ref bigint(10) auto_increment,
nome varchar(20) not null,
marca varchar(20) not null,
prateleira int(4) not null,
categoria varchar(10) not null,
valor double,
primary key (ref)
);

insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("tablet", "samsung", 52, "eletronico", 830);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("batedeira", "philco", 23, "eletro", 210);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("cadeira", "vestcasa", 54, "movel", 99);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("mouse sem fio", "weibo", 2, "informatic", 39);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("vaso","vestcasa", 55, "decoracao", 35.50);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("espelho adnet", "sem_marca", 56, "decoracao", 62);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("smartv32", "samsung", 49, "eletronico", 999);
insert into tb_produto(nome, marca, prateleira, categoria, valor) Values ("smartphone android", "samsung", 47, "celular", 980);

select * from tb_produto;

select * from tb_produto where valor > 500; /*produtos com valores maiores que R$500*/
select * from tb_produto where valor < 500; /*produtos com valores menores que R$500*/

delete from tb_produto where ref = 1; /*deletar item que add duplicado*/

select * from tb_produto;