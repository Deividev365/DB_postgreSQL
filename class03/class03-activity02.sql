
SELECT * FROM students WHERE nome LIKE '_eiv_d'

SELECT * FROM students WHERE nome NOT LIKE '_eiv_d'


SELECT * FROM students WHERE nome LIKE "%d"

SELECT * FROM students WHERE nome LIKE "% %"


SELECT * FROM  students WHERE idade IS NULL 

SELECT * FROM  students WHERE idade IS NOT NULL 


SELECT * FROM  students WHERE idade BETWEEN 10 AND 20