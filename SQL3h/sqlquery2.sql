
/* ORDER BY 

ASC = Crescente (do menor para o maior)
DESC = Descrscente (do maior para o menor)

*/
SELECT FirstName, LastName, MiddleName FROM person.Person
ORDER BY FirstName ASC, LastName DESC, MiddleName ASC

SELECT * FROM person.Person

/* Desafios 1 ORDER BY */

SELECT * FROM  Production.Product

SELECT TOP 10 ProductID, ListPrice FROM Production.Product ORDER BY ListPrice DESC

/* Desafios 2 ORDER BY */

SELECT Name, ProductNumber FROM Production.Product WHERE ProductID BETWEEN 1 AND 4

SELECT TOP 4 Name, ProductNumber FROM Production.Product ORDER BY ProductID ASC

/*----------------------------*/

/* BETWEEN */

SELECT * FROM Production.Product WHERE ListPrice NOT BETWEEN 1000 AND 1500

SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' ORDER BY HireDate

/* IN */

SELECT * FROM Person.Person WHERE BusinessEntityID IN(2, 7, 13)

/*Sem usar o IN, a query bem mais polu�da*/
SELECT * FROM Person.Person WHERE BusinessEntityID = 2 OR BusinessEntityID = 7 OR BusinessEntityID = 13


/* LIKE */

/*verificar o final, s� sabemos o come�o*/
SELECT * FROM Person.Person WHERE FirstName like 'ovi%'
/*Verificar o come�o, s� sabemos o final*/
SELECT * FROM Person.Person WHERE FirstName like '%to'

/*N�o sabemos nem o come�o e nem no final, apenas no meio*/
SELECT * FROM Person.Person WHERE FirstName like '%to%'

/*---------------------------------------*/
/* Desafios 3 */

SELECT * FROM Production.Product WHERE ListPrice > 1500

SELECT COUNT(ProductID) FROM Production.Product WHERE ListPrice NOT BETWEEN 0 and 1500

SELECT COUNT(LastName) FROM Person.Person WHERE LastName LIKE 'P%'


SELECT COUNT(DISTINCT(city)) FROM Person.Address

SELECT DISTINCT city AS 'Cidades �nicas Cadastradas' FROM Person.Address


/*listPrice and Color*/ 

SELECT COUNT(*) FROM Production.Product WHERE color = 'red' AND ListPrice Between 500 and 100
SELECT * FROM Production.Product 

SELECT COUNT(*) FROM Production.Product WHERE Name LIKE '%road%'

SELECT * FROM Production.Product







