CREATE DATABASE alura;

USE alura;

SHOW tables;

CREATE TABLE aluno(
	id SERIAL PRIMARY KEY,
	primeiro_nome VARCHAR(255) NOT NULL,
	ultimo_nome VARCHAR(255) NOT NULL, 
	data_nascimento DATE

);

SHOW TABLES
DROP TABLE curso

CREATE TABLE categoria(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE curso(

	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	
	categoria_id INTEGER,
	
	constraint fk_categoria_id
	FOREIGN KEY (id) 
	REFERENCES categoria(id)

);


CREATE TABLE aluno_curso (

	aluno_id INTEGER NOT NULL,
	curso_id INTEGER NOT NULL,
	
	PRIMARY KEY(aluno_id, curso_id),
	
	FOREIGN KEY(aluno_id)
	REFERENCES aluno(id),
	
	FOREIGN KEY(curso_id)
	REFERENCES curso(id)
	
);