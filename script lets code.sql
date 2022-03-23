create table cliente(
	id int not null primary key,

	nome varchar(100) not null,
	nascimento date not null,
	email varchar(45)
);

create table dependente(
	id int not null primary key,

	titular_id int not null,
	dependente_id int not null,

	constraint titular_id  foreign key (titular_id) references cliente(id),
	constraint dependente_id foreign key (dependente_id) references Cliente(id)
);

create table produto(
	ans_id int primary key not null,

	descricao varchar(250) not null, 
	valor decimal (5,2) not null
);

create table contrato(
	id int not null primary key,

	data_de_inicio date not null,
	titular_id int not null,

	constraint titular_id  foreign key (titular_id) references cliente(id)
);

create table contrato_produto(
	id int not null primary key,

	contrato_id int not null ,
	produto_id int not null ,

	constraint contrato_id foreign key (contrato_id) references contrato(id),
	constraint produto_id foreign key (produto_id) references produto(ans_id)
);
