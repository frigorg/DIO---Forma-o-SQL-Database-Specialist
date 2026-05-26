# DROP DATABASE ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE clientes(
	cliente_id smallint unsigned auto_increment primary key,
    tipo_cliente ENUM('PF', 'PJ') not null
);

CREATE TABLE pessoas_fisicas(
	pessoa_id smallint unsigned auto_increment primary key,
    cliente_id  smallint unsigned not null,
    cpf char(11) unique not null,
    primeiro_nome varchar(45) not null,
    ultimo_nome varchar(45) not null,
    data_nascimento date,
    endereco varchar(100),
    endereco_estado char(2),
    ddd char(2),
    telefone varchar(10),
    CONSTRAINT fk_pessoas_fisicas_cliente foreign key(cliente_id) REFERENCES clientes(cliente_id)
    ON DELETE cascade
    ON UPDATE cascade
);

CREATE TABLE pessoas_juridicas(
	pessoa_id smallint unsigned auto_increment primary key,
    cliente_id  smallint unsigned not null,
    cnpj char(14) unique not null,
    razao_social varchar(100) not null,
	endereco varchar(100),
    endereco_estado char(2),
    ddd char(2),
    telefone varchar(10),
    CONSTRAINT fk_pessoas_juridicas_cliente foreign key(cliente_id) REFERENCES clientes(cliente_id)
    ON DELETE cascade
    ON UPDATE cascade
);

CREATE TABLE tabela_status_pedido(
	status_id smallint unsigned auto_increment primary key,
    situacao varchar(20) not null,
    descricao varchar(100) not null
);

CREATE TABLE tabela_status_entrega(
	status_id smallint unsigned auto_increment primary key,
    situacao varchar(20) not null,
    descricao varchar(100) not null
);

CREATE TABLE pedidos(
	pedido_id smallint unsigned auto_increment primary key,
    cliente_id smallint unsigned not null,
    status_pedido_id smallint unsigned not null,
    status_entrega_id smallint unsigned not null,
    data_criacao datetime not null,
    data_entrega datetime,
    valor_produto float,
    valor_frete float,
    pagamento_status ENUM('PAGO', 'PENDENTE'),
    CONSTRAINT fk_pedido_cliente foreign key(cliente_id) REFERENCES clientes(cliente_id),
    CONSTRAINT fk_pedido_status_pedido foreign key(status_pedido_id) REFERENCES tabela_status_pedido(status_id),
    CONSTRAINT fk_pedido_status_entrega foreign key(status_entrega_id) REFERENCES tabela_status_entrega(status_id)    
);

CREATE TABLE pagamentos(
	pagamento_id smallint unsigned auto_increment primary key,
    pedido_id smallint unsigned not null,
    valor_pago float not null,
    descricao varchar(100),
    CONSTRAINT fk_pagamento_pedido foreign key(pedido_id) REFERENCES pedidos(pedido_id)
);

CREATE TABLE fornecedores(
	fornecedor_id smallint unsigned auto_increment primary key,
    razao_social varchar(100) not null,
    cnpj char(14) not null
);

CREATE TABLE produtos(
	produto_id  smallint unsigned auto_increment primary key,
    fornecedor_id smallint unsigned not null,
    nome varchar(45) not null,
    codigo_produto varchar(45) not null,
    preco float not null,
    CONSTRAINT fk_produto_fornecedor foreign key(fornecedor_id) REFERENCES fornecedores(fornecedor_id)
);

CREATE TABLE produtos_por_pedidos(
	pedido_id smallint unsigned,
    produto_id smallint unsigned,
    quantidade int unsigned not null,
    PRIMARY KEY(pedido_id, produto_id),
    CONSTRAINT fk_produtos_por_pedidos_pedido foreign key(pedido_id) REFERENCES pedidos(pedido_id),
    CONSTRAINT fk_produtos_por_pedidos_produto foreign key(produto_id) REFERENCES produtos(produto_id)
);

CREATE TABLE estoques(
	estoque_id smallint unsigned auto_increment primary key,
    endereco varchar(100) not null
);

CREATE TABLE produtos_por_estoques(
	produto_id smallint unsigned,
    estoque_id smallint unsigned,
    quantidade int unsigned not null,
    PRIMARY KEY(produto_id, estoque_id),
    CONSTRAINT fk_produtos_por_estoques_produto foreign key(produto_id) REFERENCES produtos(produto_id),
    CONSTRAINT fk_produtos_por_estoques_estoque foreign key(estoque_id) REFERENCES estoques(estoque_id)
);