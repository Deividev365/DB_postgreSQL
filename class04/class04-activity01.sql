INSERT INTO students(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula)
	VALUES 
	
	("Pedro", "314", "Aluno iniciante", 32, 222, 72, TRUE, "2002-07-18", "18:00:00"),
	("José", "748", "Aluno técnico", 67, 222, 72, TRUE, "2002-07-18", "18:00:00"),
	("Luis", "147", "Aluno inteligente", 87, 222, 72, TRUE, "2002-07-18", "18:00:00"),
	("Fernando", "789", "Aluno em processo", 125, 222, 72, TRUE, "2002-07-18", "18:00:00"),
	("Maria", "385", "Aluno exemplar", 12, 222, 72, TRUE, "2002-07-18", "18:00:00"),
	("Felipe", "701", "Aluno exemplar", 34, 123, 72, TRUE, "2002-07-18", "18:00:00"),
	("Beatriz", "632", "Aluno exemplar", 67, 125, 72, TRUE, "2002-07-18", "18:00:00")
	
	
*/
/*
DROP TABLE course

CREATE TABLE course (
	id INTEGER PRIMARY KEY SERIAL,
	nome VARCHAR(255)
)

*/
/*

*/
/*INSERT INTO course (nome) VALUES ("Turismo")*/



/*CREATE TABLE course (
	id SERIAL 	PRIMARY KEY,
	nome VARCHAR(255)
)*/


/*
SELECT * FROM students
SELECT * FROM course
*/


DROP TABLE student_course


CREATE TABLE student_course (
	
	student_id INTEGER,
	course_id INTEGER,
	
	PRIMARY KEY(student_id, course_id),
	
	CONSTRAINT `fk_student_course`
	
		FOREIGN KEY(student_id) REFERENCES students(id),
	
		FOREIGN KEY(course_id )REFERENCES course(id)
	 
)
	


INSERT INTO student_course(student_id, course_id ) VALUES(10, 1)


SELECT * FROM students WHERE id = 10

SELECT * FROM course WHERE id = 1


CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);


INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');

SELECT * FROM funcionarios

SELECT * FROM funcionarios ORDER BY id LIMIT 5 OFFSET 3


SELECT COUNT(id), SUM(id), MAX(id), MIN(id), AVG(id) FROM funcionarios






