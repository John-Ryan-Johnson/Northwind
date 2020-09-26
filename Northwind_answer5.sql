--5. What are our 10 most expensive products?

select top(10) p.ProductName as [Product Name], p.UnitPrice as [Product Price]
from products p
order by UnitPrice desc

