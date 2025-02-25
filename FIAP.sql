// Cria a Estrutura da Tabela 
CREATE TABLE cliente (
    cod_cliente         number,
    nome_cliente        varchar2(30),
    endereco            varchar2(30),
    cidade             varchar2(15),
    cep                 varchar2(9),
    uf                  char(2));
    
// Estrutura da tabela
DESC cliente;

// Apagar a Estrutura da Tabela
DROP TABLE cliente;

DESC cliente;

// Exercícios

// Criação tabela funcionario
CREATE TABLE funcionario(
    cod_func        number(6),
    nome_func       varchar2(30),
    endereco        varchar2(30),
    cidade          varchar2(15),
    uf              char(2),
    telefone        varchar2(20),
    cep             integer,
    salario         number(10,2));

// Desc Tabela Funcionario   
DESC funcionario;


// Criação das Tabelas Vendedor e Produto
CREATE TABLE vendedor(
    codigo_vendedor         number(4),
    nome_vendedor           varchar2(20),
    salario_vendedor        number(5,2),
    sexo_vendedor           char(2));
    
CREATE TABLE produto(
    codigo_produto      number(4),
    nome_produto        varchar2(20),
    preco_produto       number(5,2));

// Desc das Tabelas Vendedor e Produto    
DESC vendedor;
DESC produto;

// Altera qualquer parte da estrutura da tabela
ALTER TABLE produto
    