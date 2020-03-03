Select 
	count(o.OrderID) As NumberOfOrders,
	Round(sum(o.Freight), 2) As FreightSum,
	Round((avg(o.Freight)/count(o.OrderID)), 2) as AvgFreightPerOrders
From Orders o;