create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;
create table tb_categoria(
id_categoria bigint(3) auto_increment,
categoria varchar(50) not null,
modalidade varchar(50),
primary key(id_categoria)
);

use db_cursoDaMinhaVida;
create table tb_curso(
id bigint(10) auto_increment,
curso varchar(50) not null,
 instituicao varchar(50),
 fk_categoria bigint(10) not null,
 valor bigint(10) not null,
 primary key(id),
 foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria (categoria, modalidade) Values ("Java", "Básico");
insert into tb_categoria (categoria, modalidade) Values ("C+", "Básico");
insert into tb_categoria (categoria, modalidade) Values ("Phyton", "Básico");
insert into tb_categoria (categoria, modalidade) Values ("JavaScript", "Básico");
insert into tb_categoria (categoria, modalidade) Values ("Banco de Dados", "Básico");

insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Lógica de Programação", "Generation Brasil", 1, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Laço de Repetição", "Generation Brasil", 2, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Orientação a Objeto", "Generation Brasil", 3, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Joins", "Generation Brasil", 5, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Polimorfismo", "Generation Brasil", 2, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Vetor e Matriz", "Generation Brasil", 3, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Programação Sequencial", "Generation Brasil", 4, 0);
insert into tb_curso (curso, instituicao, fk_categoria, valor) Values ("Herança e Collections", "Generation Brasil", 3, 0);

select * from tb_curso where valor > 50;
select * from tb_curso where valor BETWEEN 3 and 60; 

select * from tb_curso where curso LIKE 'j%';

select id, curso, instituicao, valor, categoria, modalidade from tb_curso inner join tb_categoria on id_categoria = fk_categoria;

select id, curso, instituicao, valor, categoria, modalidade from tb_curso inner join tb_categoria on id_categoria = fk_categoria where categoria = "Java";