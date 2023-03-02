/*Fun��es de Agrega��o MIN, MAX, SUM, AVG*/


SELECT TOP 10 SUM(linetotal) AS 'Soma total' FROM Sales.SalesOrderDetail


SELECT TOP 10 MIN(linetotal) AS 'Menor Valor' FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(linetotal) AS 'Maior Valor' FROM Sales.SalesOrderDetail


SELECT TOP 10 AVG(linetotal) AS 'M�dia de Valores' FROM Sales.SalesOrderDetail


/*

GROUP BY

Dividor o resultado das pesquisar em grupo
*/

SELECT SpecialOfferID, SUM(UnitPrice) AS 'Soma dos Valores' FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID


SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "Contagem" FROM Sales.SalesOrderDetail GROUP BY ProductID


SELECT FirstName, COUNT(FirstName) AS "Contagem" from Person.Person GROUP BY FirstName


SELECT * FROM Person.Person


/*color = silver, AVG listPrice*/
SELECT AVG(listPrice) AS "M�dia de Pre�os" FROM Production.Product WHERE Color = 'Silver' GROUP BY listPrice

SELECT Color, AVG(listPrice) FROM Production.Product WHERE Color in('Silver') GROUP BY Color


 SELECT MiddleName, COUNT(FirstName) AS "Quantidade" FROM Person.Person group by MiddleName


 SELECT Name, ListPrice, AVG(ListPrice) AS "Media" FROM Production.Product group by Name


 SELECT SalesOrderID, AVG(UnitPrice) AS "Pre�o M�dio" FROM Sales.SalesOrderDetail GROUP BY SalesOrderID

 SELECT ProductID, AVG(OrderQty) AS "M�dia" FROM sales.SalesOrderDetail GROUP BY ProductID


 SELECT TOP 10 productId, SUM(LineTotal) FROM Sales.SalesOrderDetail group by ProductID ORDER BY SUM(lineTotal) DESC


 SELECT COUNT(productId) AS total_products, AVG(OrderQty) AS avg_order FROM Production.WorkOrder GROUP BY productID;


 /*HAVING - Utilizado junto com o GROUP BY.. Um WHERE para dados agrupados*/


 SELECT FirstName, COUNT(FirstName) as "Quantidade" from Person.Person





