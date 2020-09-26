--4. I need a list of sales figures broken down by category name.  Include the total $ amount sold over all time and the total number of items sold.

select c.CategoryName as [Category Name],
	sum(od.quantity) as [Total Items Sold],
	sum(od.quantity * od.unitprice) as [Total Sales]
from Categories c
	join Products p
		on p.CategoryID = c.CategoryID
	join [Order Details] od
		on od.ProductID = p.ProductID
group by c.CategoryName
