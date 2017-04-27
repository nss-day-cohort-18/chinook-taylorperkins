/*
	 Provide a query that shows total sales made by each sales agent.
*/

SELECT e.FirstName, e.LastName, printf("%.2f", SUM(i.Total)) AS TotalSum
FROM Employee e, Customer c, Invoice i
WHERE e.title = 'Sales Support Agent'
AND e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId

