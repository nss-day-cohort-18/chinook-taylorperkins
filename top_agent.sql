/*
	Which sales agent made the most in sales over all?
*/

SELECT e.FirstName, e.LastName, printf("%.2f", MAX(AmountSum)) TotalSales
FROM (select SUM(i.Total) AS AmountSum
	FROM Invoice i, Employee e, Customer c
	WHERE e.title = 'Sales Support Agent'
	AND e.EmployeeId = c.SupportRepId
	AND c.CustomerId = i.CustomerId	
	GROUP BY e.EmployeeId), Employee e