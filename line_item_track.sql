/* 
	Provide a query that includes the purchased track name with each invoice line item.
*/

SELECT t.Name
FROM Track t, InvoiceLine il
WHERE il.Trackid = t.TrackId
ORDER BY t.Name