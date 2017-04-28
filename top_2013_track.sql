/*
	Provide a query that shows the most purchased track of 2013.
*/

SELECT tra.Name as TrackName, COUNT(inl.Trackid) AS NumberOfTimesBought, '$' || printf("%.2f", inl.UnitPrice) as TotalPrice
FROM InvoiceLine inl JOIN Track tra USING (TrackId)
		  JOIN Invoice inv USING (InvoiceId)
WHERE instr(inv.Invoicedate, '2013')
GROUP  BY tra.Name HAVING NumberOfTimesBought > 1
ORDER  BY 2 DESC
