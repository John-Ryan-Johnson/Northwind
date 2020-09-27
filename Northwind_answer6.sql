--6. In which quarter in 1997 did we have the most revenue?

select top 1 datepart(quarter,ShippedDate) as Quarter, 
	sum(Subtotal) as [Total Sales] 
from [Summary of Sales by Quarter]
where year(shippedDate) = 1997
group by datepart(quarter,ShippedDate)
order by [Total Sales] desc
