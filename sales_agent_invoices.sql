/* 
	Provide a query that shows the invoices associated 
	with each sales agent. 
	The resultant table should include the Sales Agent's full name.
*/

SELECT e.FirstName, e.LastName, i.InvoiceId
FROM Customer c, Invoice i, Employee e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
ORDER BY e.FirstName ASC