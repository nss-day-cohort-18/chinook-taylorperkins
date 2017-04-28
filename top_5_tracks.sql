/*
	Provide a query that shows the top 5 most purchased tracks over all.
*/

SELECT tra.Name as TrackName, COUNT(inl.Trackid) AS NumberOfTimesBought, '$' || printf("%.2f", inl.UnitPrice) as TotalPrice
FROM InvoiceLine inl JOIN Track tra USING (TrackId)
		  JOIN Invoice inv USING (InvoiceId)
GROUP  BY tra.Name HAVING NumberOfTimesBought > 1
ORDER  BY 2 DESC
LIMIT 5
