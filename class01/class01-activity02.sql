CREATE TABLE students
(
    id SERIAL,
    name VARCHAR(255),
	cpf CHAR(11),
	observation TEXT,
	age INTEGER,
	money NUMERIC(10,2),
	height REAL,
	isActive BOOLEAN,
	born_date DATE,
	class_date TIME,
	enrolled_in TIMESTAMP
);

SELECT * FROM students;