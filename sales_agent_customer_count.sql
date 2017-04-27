/*
	Provide a query that shows the 
	count of customers assigned to each sales agent.
*/

SELECT e.FirstName, e.LastName, COUNT(c.CustomerId) CustAmount
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName