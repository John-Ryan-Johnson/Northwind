--1. What is the undiscounted subtotal for each Order (identified by OrderID).

select orders.orderid as [Order ID], orders.customerid as [Customer ID], [Order Details].unitprice * [Order Details].quantity as [Undiscounted Subtotal]
from orders
	join [Order Details]
	on orders.orderid = [Order Details].orderid



