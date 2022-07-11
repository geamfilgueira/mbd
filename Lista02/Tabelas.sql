create schema exercicio2;

use exercicio2;

create table  fornecedor(
codforn int not null primary key,
nome varchar(20) not null,
cidade varchar(15),
estado varchar(10),
telefone int
);

insert into fornecedor values (01, "asf", "dsf", "sfd", 998798);
insert into fornecedor values (02, "asf", "dsf", "sfd", 998798);
insert into fornecedor values (03, "asf", "dsf", "sfd", 998798);
insert into fornecedor values (04, "asf", "dsf", "sfd", 998798);
insert into fornecedor values (05, "asf", "dsf", "sfd", 998798);

create table produto(
codprod int not null primary key,
nome varchar(15)
);

insert into produto values (10, "a");
insert into produto values (11, "a");
insert into produto values (12, "a");
insert into produto values (13, "a");
insert into produto values (14, "b");
insert into produto values (15, "c");




create table fornecimento(
fornecedor int,
produto int,
primary key(fornecedor,produto),
foreign key(fornecedor) references fornecedor(codforn),
foreign key(produto) references produto(codprod)
);

create table loja(
codloja int not null primary key,
bairro varchar(20),
cidade varchar(20)
);

insert into loja values (00, "vc", "vc");

create table armazem(
numero int not null,
bairro varchar(20),
cidade varchar(20),
loja int,
primary key(numero),
foreign key(loja) references loja(codloja)
);

insert into armazem values (20, "xt", "fd", 00);
insert into armazem values (21, "xt", "fd", 00);
insert into armazem values (22, "xt", "fd", 00);
insert into armazem values (23, "xt", "fd", 00);
insert into armazem values (24, "cd", "fd", 00);
insert into armazem values (25, "dfg", "ter", 00);

create table estoque(
produto int,
armazem int,
quant int,
primary key(produto,armazem),
foreign key(produto) references produto(codprod),
foreign key(armazem) references armazem(numero)
);



