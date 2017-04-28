/*
	Provide a query that shows the most purchased Media Type.
*/

SELECT m.Name, MAX(HighestCount) AS TotalPurchases
FROM MediaType m, (select COUNT(inl.InvoiceLineId) as Highestcount
			FROM Track t, InvoiceLine inl, MediaType m
			WHERE m.MediaTypeId = t.MediaTypeId
			AND t.TrackId = inl.TrackId
			GROUP BY m.Name)