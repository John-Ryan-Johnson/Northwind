--3. What is the cost after discount for each order?  Discounts should be applied as a percentage off.


select [Order Details].OrderID as [Order Id],
	   [Order Details].UnitPrice * [Order Details].Quantity as [Order Total],
	   [Order Details].Discount * 100 as [% Discount],
	   [Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount as [Discount Amount],
	   [Order Details].UnitPrice * [Order Details].Quantity - [Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount as [Discounted Total]
from [Order Details]
where [Order Details].Discount != 0

