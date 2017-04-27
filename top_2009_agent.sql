/*
	 Which sales agent made the most in sales in 2009?
*/

SELECT e.FirstName, e.LastName, printf("%.2f", MAX(AmountSum)) TotalSales
FROM (select SUM(i.Total) AS AmountSum
	FROM Invoice i, Employee e, Customer c
	WHERE e.title = 'Sales Support Agent'
	AND e.EmployeeId = c.SupportRepId
	AND c.CustomerId = i.CustomerId
	AND instr(i.InvoiceDate, '2009')
	GROUP BY e.EmployeeId), Employee e
