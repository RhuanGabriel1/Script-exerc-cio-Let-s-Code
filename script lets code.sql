create table cliente(
id int primary key not null,
nome varchar(100) not null,
nascimento date not null,
email varchar(45)
);

create table dependente(
nome_dependentes varchar(100) primary key not null,
nascimento_dependentes date not null,
parentesco varchar(20) not null,
id_cliente int,
constraint fk_id_cliente foreign key (id_cliente) references CLIENTE (id)
);


create table produto(
ans varchar(8) primary key not null,
descricao varchar(250) not null, 
valor decimal (5,2) not null

);

create table contrato(
data_de_inicio date not null,
fk_contrato_id_cliente int,
fk_ans_produto varchar(8),

constraint fk_contrato_id_cliente foreign key (fk_contrato_id_cliente) references CLIENTE (id),
constraint fk_ans_produto foreign key (fk_ans_produto) references produto (ans)

);










