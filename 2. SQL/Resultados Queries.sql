-------------------------------------------------
-- Task # 1
-- Write a query to return shipper performance
-- This will tell us how much we're using each shipper
-- Tables involved: StoreSample database. Shippers, Orders, and OrderDetails tables
-- No Discount for TotalCostShipped
-- Desired output:

SELECT  A.companyname CompanyName, SUM(DISTINCT B.freight) TotalFreight,SUM(C.unitprice * C.qty) TotalCostShipped,SUM(C.qty) TotalItemsShipped
FROM		Sales.Shippers		A WITH(NOLOCK)
INNER JOIN	Sales.Orders		B WITH(NOLOCK) ON A.shipperid = B.shipperid
INNER JOIN	Sales.OrderDetails	C WITH(NOLOCK) ON C.orderid = B.orderid
GROUP BY A.shipperid,A.companyname
ORDER BY A.companyname ASC

--CompanyName     TotalFreight	TotalCostShipped	TotalItemsShipped
-------------		----------		-----------------	------------------
--Shipper ETYNR	28244.85		572724.58			19945
--Shipper GVSUA	16185.33		373983.19			15919
--Shipper ZHISN	20512.51		407750.82			15453

--(4 row(s) affected)


-------------------------------------------------------
-- Task # 2
-- Write a query to return customer habit information
-- Base the next purchase date on an average of days between orders
-- Tables involved: StoreSample database. Orders, Customers
-- Desired output:


SELECT C.companyname, MAX(B.orderdate),DATEADD(DAY,AVG(DATEDIFF(DAY,B.orderdate,B.orderdate)), MAX(B.orderdate))
FROM		Sales.Customers C WITH(NOLOCK)
INNER JOIN	Sales.Orders	B WITH(NOLOCK)  ON C.custid = B.custid
GROUP BY  C.companyname
ORDER BY companyname ASC

--CustomerName	LastOrderDate			NextPredictedOrder
-------------		----------				-----------------
--Customer AHPOP	2008-02-04 00:00:00.000	2008-03-23 00:00:00.000
--Customer AHXHT	2008-05-05 00:00:00.000	2008-08-09 00:00:00.000
--Customer AZJED	2008-04-09 00:00:00.000	2008-05-20 00:00:00.000




