create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_classe bigint auto_increment,
poder varchar(30) not null,
funcao varchar(30) not null,
primary key (id_classe)
);

use db_generation_game_online;
create table tb_personagem(
	id bigint auto_increment,
    nome varchar(30) not null,
    fk_classe bigint(10) not null,
    ataque bigint(10) not null,
    defesa bigint(10) not null,
    primary key (id),
    foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_classe (poder, funcao) Values ("Velocidade", "Fuga");
insert into tb_classe (poder, funcao) Values ("Inteligencia", "Decifrar");
insert into tb_classe (poder, funcao) Values ("Força", "Destruir");
insert into tb_classe (poder, funcao) Values ("Telepatia", "Ler mentes");
insert into tb_classe (poder, funcao) Values ("Vidente", "Prever futuro");

insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Ilustre", 2, 8680, 988);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Zoiudo", 5, 4370, 4250);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Coquito", 4, 2640, 4598);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Sr Cadeira", 3, 3575, 8470);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Mrs Eyes", 5, 1436, 9685);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Flower Girl", 2, 6774, 8796);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Red Force", 1, 1087, 876);
insert into tb_personagem (nome, fk_classe, ataque, defesa) Values ("Heba", 2, 6538, 9749);
update tb_personagem set defesa = 1453 where id = 5;
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa BETWEEN 1000 and 2000; 

select * from tb_personagem where nome LIKE 'c%';

select id, nome, ataque, defesa, poder, funcao from tb_personagem inner join tb_classe on id_classe = fk_classe;

select id, nome, ataque, defesa, poder, funcao from tb_personagem inner join tb_classe on id_classe = fk_classe where poder = "Inteligencia";
