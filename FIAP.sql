CREATE TABLE cliente (
    cod_cliente      number(4),
    nome_cliente        varchar2(30),
    endereco            varchar2(30),
    cidade              varchar2(15),
    cep                 varchar2(9),
    uf                  char(2));
    
DESC cliente
    
ALTER TABLE cliente
    ADD CONSTRAINT cod_cliente_pk PRIMARY KEY (cod_cliente);

DESC cliente

CREATE TABLE nf(
    numero_nf           number(4) PRIMARY KEY,
    data_emissao        date NOT NULL,
    cod_cliente         number(4),
    codigo_vendedor     number(4));

DESC nf

ALTER TABLE VENDEDOR
    ADD CONSTRAINT cod_vendedor_pk PRIMARY KEY (codigo_vendedor);

ALTER TABLE nf
    ADD CONSTRAINT cod_cliente_fk FOREIGN KEY(cod_cliente) REFERENCES cliente(cod_cliente);

ALTER TABLE nf
    ADD CONSTRAINT cod_vend_fk FOREIGN KEY(codigo_vendedor) REFERENCES VENDEDOR(codigo_vendedor);

ALTER TABLE cliente
    ADD data_nasc DATE;

DESC cliente

ALTER TABLE cliente
    MODIFY cep NUMBER(10);

DESC cliente

ALTER TABLE cliente
    DROP COLUMN cep;
    
ALTER TABLE cliente DROP CONSTRAINT cod_cliente_pk;

DROP TABLE cliente CASCADE CONSTRAINTS;

ALTER TABLE cliente
    RENAME COLUMN data_nasc TO dt_nasc;
    
DESC cliente

ALTER TABLE cliente RENAME TO teste;

DESC teste

RENAME teste to cliente;




