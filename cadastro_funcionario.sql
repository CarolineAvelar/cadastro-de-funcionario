create database cadastro_funcionário;
use cadastro_funcionário;

create table departamento(
	depto_id int not null auto_increment primary key,
    depto_nome varchar(45) not null
);
create table funcionario(
	func_id int not null auto_increment primary key,
    func_nome varchar(100) not null,
    func_nasc date not null,
    func_sexto enum('F','M'),
    func_salario decimal(12,2),
    depto_id int not null,
    constraint fk_depto foreign key (depto_id)
    references departamento(depto_id)
    );
    
    create table projeto(
    proj_sigla char(3) not null primary key,
    proj_nome varchar(45) not null,
    proj_interno tinyint
    );
    
    create table alocacao(
    aloca_id int not null primary key,
    func_id int not null,
    proj_sigla char(3) not null,
    aloca_inicio datetime not null,
    aloca_fim datetime not null,
    constraint fk_func foreign key (func_id)
    references funcionario(func_id),
    constraint proj_sigla foreign key (proj_sigla)
    references projeto(proj_sigla)
    );
    
    
    