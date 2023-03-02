
 SELECT FirstName, COUNT(FirstName) as "Quantidade" from Person.Person WHERE title = 'Mr.' group by FirstName HAVING COUNT(firstName) > 10

 SELECT TOP 10 * FROM Sales.SalesOrderDetail


 SELECT ProductID, sum(LineTotal) AS "TOTAL" FROM sales.SalesOrderDetail GROUP BY ProductID having sum(LineTotal) BETWEEN 162000 and 500000


 /* StateProvinceID */
 SELECT StateProvinceID, COUNT(StateProvinceID) AS "Quantidade" FROM person.Address GROUP by StateProvinceID having count(StateProvinceID) > 1000

 /* ProductID */
 SELECT productID, AVG(LineTotaL) FROM sales.SalesOrderDetail group by ProductID HAVING AVG(LineTotaL) < 1000000



 /*AS : Renomear colunas, renomear agrega��es */

 SELECT AVG(ListPrice) AS "Pre�o M�dio" FROM Production.Product


 SELECT TOP 10 FirstName AS "Primeiro Nome", LastName AS "�ltimo Nome" FROM Person.Person;

 SELECT TOP 10 ProductNumber AS "N�mero do Produto" FROM Production.Product;

 SELECT TOP 10 unitPrice AS "Pre�o Unit�rio" FROM sales.SalesOrderDetail; 


 /* INNER JOIN 
 inner join
 outer join
 self-join
 
 */



 /*BusinessEntityId, FirstName, LastName, EmailAddress*/


 SELECT TOP 10 * FROM person.Person

 SELECT TOP 10 * FROM Person.EmailAddress


 SELECT p.BusinessEntityId, p.FirstName, p.LastName, pe.EmailAddress FROM person.Person AS P
 INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID


 /*listPrice, NomeDoProduto, Nome da subcategoria*/

 /*Name, ListPrice*/
 /*
 
 Product Subcategory ID
 */
 SELECT TOP 10 * FROM Production.Product
 SELECT TOP 10 * FROM Production.ProductSubcategory

 /*ProductSubcategoryID*/
 SELECT pr.ListPrice, pr.Name as "ProductCategoryName", pc.Name as "ProductSubCategoryName" from Production.Product AS pr
 INNER JOIN Production.ProductSubcategory pc on pc.ProductSubcategoryID = pr.ProductSubcategoryID


   

