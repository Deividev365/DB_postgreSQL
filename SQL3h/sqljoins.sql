SELECT PP.BusinessEntityId, PT.name, PT.PhoneNumberTypeId, PP.PhoneNumber FROM person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PT ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID



SELECT TOP 10 * FROM Person.StateProvince

SELECT TOP 10 * FROM Person.Address

/*AddressId, city, stateProvinceId, Nome do Estado*/

SELECT PA.AddressId, PA.city, PS.StateProvinceId, PS.Name FROM Person.StateProvince PS
INNER JOIN Person.Address PA ON PA.StateProvinceID = PS.StateProvinceID


SELECT TOP 1 * FROM Production.Product

SELECT TOP 1 * FROM Production.ProductSubcategory

/*
primeira tabela:
Name, Color, listprice

segunda tabela:
Name, 
*/

/*Exibindo 10 registros da tabela Production.Product*/
SELECT TOP 10 * FROM Production.Product

/*Exibindo 10 registros da tabela Production.ProductSubcategory*/
SELECT TOP 10 * FROM Production.ProductSubcategory

/*Junção de duas tabelas, filtrando colunas específicas de cada tabela*/

SELECT TOP 10 PP.Name, PP.color, PP.listprice, PS.Name FROM Production.Product PP INNER JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID

/*Utilizando o AS para criar relatórios e renomear o nome de uma coluna*/
SELECT PP.Name AS "TESTE", PP.ProductNumber, PP.color, PS.Name, PS.ProductCategoryID  FROM Production.Product PP INNER JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID


/*Junção de duas tabelas, selecionando algumas colunas de uma tabela e de outra juntas e apresentando em um select */
SELECT PP.ProductSubcategoryID FROM Production.Product PP INNER JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID


/*Junção de todas as colunas de duas tabelas, selecionando tudo*/
SELECT * FROM Production.Product PP INNER JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID


SELECT TOP 1 * FROM Production.Product PP INNER JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID

SELECT TOP 1 * FROM Production.Product PP RIGHT JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID

SELECT TOP 1 * FROM Production.Product PP LEFT JOIN Production.ProductSubcategory PS ON PS.ProductSubcategoryID = PP.ProductSubcategoryID
