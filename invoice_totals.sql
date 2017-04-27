/*
	 Provide a query that shows the
	 Invoice Total, Customer name, Country and Sale Agent name
	 for all invoices and customers.
*/

SELECT i.Total, c.FirstName CustomerName, c.Country, e.FirstName SalesAgent
FROM Invoice i, Customer c JOIN Employee e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
ORDER BY c.FirstName ASC