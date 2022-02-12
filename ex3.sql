use db_escola;

create table tb_estudantes(
	matricula bigint(10)auto_increment,
    nome varchar(50) not null,
    serie int(1)not null,
    turma char(1)not null,
    nota double not null,
    primary key (matricula)
);

insert into tb_estudantes(nome, serie, turma, nota) Values ("João Pedro", 3, "D", 9);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Maria Clara", 4, "B", 10);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Luiz Henrique", 2, "A", 8);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Melissa", 3, "A", 10);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Pedro", 1, "D", 2);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Carlos", 2, "B", 7);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Ana Vitoria", 2, "A", 6);
insert into tb_estudantes(nome, serie, turma, nota) Values ("Heloísa", 3, "B", 4);

select * from tb_estudantes where nota >= 7;
select * from tb_estudantes where nota <= 7;

update tb_estudantes set nota = 9 where matricula=3;

select * from tb_estudantes;