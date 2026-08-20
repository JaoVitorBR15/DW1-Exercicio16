DROP TABLE IF EXISTS LIVRO, ALUNO, VEICULO, CLIENTE, DISCIPLINA, IMOVEL, INSCRICAO;

CREATE TABLE LIVRO(
	id_livro INT PRIMARY KEY,
	titulo VARCHAR(100),
	autor VARCHAR(50),
	ano_publicacao INT,
	genero VARCHAR(30),
	paginas INT
);

CREATE TABLE ALUNO(
	RA_aluno INT PRIMARY KEY,
	nome_completo VARCHAR(80),
	data_nascimento DATE,
	email VARCHAR(50),
	telefone VARCHAR(15),
	curso VARCHAR(40)
);

CREATE TABLE VEICULO(
	id_veiculo INT PRIMARY KEY,
	marca VARCHAR(30),
	modelo VARCHAR(40),
	ano_fabricacao INT,
	cor VARCHAR(20),
	placa CHAR(7)
);

CREATE TABLE CLIENTE(
	id_cliente INT PRIMARY KEY,
	nome VARCHAR(60),
	cpf CHAR(11),
	endereco VARCHAR(100),
	cidade VARCHAR(40),
	uf CHAR(2),
	telefone VARCHAR(15)
);

CREATE TABLE DISCIPLINA(
	id_disciplina INT PRIMARY KEY,
	nome_disciplina VARCHAR(50),
	carga_horaria INT,
	professor VARCHAR(50),
	semestre INT
);

CREATE TABLE IMOVEL(
	id_imovel INT PRIMARY KEY,
	endereco VARCHAR(100),
	bairro VARCHAR(40),
	cidade VARCHAR(40),
	area_m2 INT,
	quartos INT,
	preco_venda decimal(12,2)
);

CREATE TABLE INSCRICAO(
	id_inscricao INT PRIMARY KEY,
	id_evento INT,
	id_participante INT,
	data_inscricao DATE,
	valor_pago DECIMAL(8,2),
	forma_pagamento VARCHAR(20)
);

INSERT INTO LIVRO(id_livro, titulo, autor, ano_publicacao, genero, paginas) VALUES
(1, 'Diário de um Banana', 'Jeff Kinney', 2007, 'Comédia', 221);

INSERT INTO ALUNO(RA_aluno, nome_completo, data_nascimento, email, telefone, curso) VALUES
(2747391, 'João Vitor Brito', '15-10-2009', 'jaovitorbritobr@gmail.com', '(44) 99952-2126', 'Técnico em Informática');

INSERT INTO VEICULO(id_veiculo, marca, modelo, ano_fabricacao, cor, placa) VALUES
(001, 'Chevrolet', 'Cruise', 2016, 'Branco', '1234567');

INSERT INTO CLIENTE(id_cliente, nome, cpf, endereco, cidade, uf, telefone) VALUES
(0001, 'Antedeguemon', '24713690064', 'Rua Antedeguemon 69', 'Antedeguemon', '69', '(69) 99969-2077');

INSERT INTO DISCIPLINA(id_disciplina, nome_disciplina, carga_horaria, professor, semestre) VALUES
(01, 'Desenvolvimento Web', 4, 'Radames Halmeman', '2');

INSERT INTO IMOVEL(id_imovel, endereco, bairro, cidade, area_m2, quartos, preco_venda) VALUES
(00001, 'Rua Antedeguemon 69', 'Antedeguemon', 'Antedeguemon', 69, 6, 69999.99);

INSERT INTO INSCRICAO(id_inscricao, id_evento, id_participante, data_inscricao, valor_pago, forma_pagamento) VALUES
(742, 01, 742, '10-09-2027', 69.99, 'Pix');
