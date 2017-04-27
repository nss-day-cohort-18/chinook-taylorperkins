/* 
	 Looking at the InvoiceLine table, 
	 provide a query that COUNTs the number of line items
	 for each Invoice. HINT: GROUP BY
*/

SELECT COUNT(il.InvoiceId)
FROM InvoiceLine il, Invoice i
WHERE il.InvoiceId = i.invoiceid
GROUP BY i.InvoiceId
