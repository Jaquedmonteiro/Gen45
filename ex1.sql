use db_rh;

create table tb_funcionarios(
	id int(1) auto_increment,
    nome varchar(50) not null,
    cpf bigint(11) not null,
    telefone bigint(10) not null,
    departamento  varchar(20) not null,
    salario decimal(6) not null,
	primary key (id)
);

insert into tb_funcionarios(nome, cpf, telefone, departamento) Values ("Jaqueline Domingues Monteiro", 01234567891, 0123456789, "vendas");
insert into tb_funcionarios(nome, cpf, telefone, departamento) Values ("Ingrid Kis", 01234567891, 0123456789, "financeiro");
insert into tb_funcionarios(nome, cpf, telefone, departamento) Values ("Luciana Soares", 01234567891, 0123456789, "almoxarifado");
insert into tb_funcionarios(nome, cpf, telefone, departamento) Values ("Anita Falchi", 01234567891, 0123456789, "administrativo");
insert into tb_funcionarios(nome, cpf, telefone, departamento) Values ("Jônatas Oliveira", 01234567891, 0123456789, "marketing");

alter table tb_funcionarios add salario decimal(6); /*ops, esqueci de por o atributo SALARIO*/

update tb_funcionarios set salario = 3500 where id=1;
update tb_funcionarios set salario = 1500 where id=2;
update tb_funcionarios set salario = 2900 where id=3;
update tb_funcionarios set salario = 850 where id=4;
update tb_funcionarios set salario = 3600 where id=5; /*preenchendo com os salarios dos funcionarios*/

select * from tb_funcionarios where salario > 2000; /*salarios maiores que 2000*/
select * from tb_funcionarios where salario < 2000; /*salarios menores que 2000*/

select * from tb_funcionarios;
