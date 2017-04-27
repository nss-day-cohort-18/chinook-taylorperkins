/*
	Provide a query that shows all Invoices 
	but includes the # of invoice line items.
*/

SELECT il.InvoiceLineId, i.*
FROM Invoice i, InvoiceLine il
WHERE i.InvoiceId = il.InvoiceId
ORDER BY il.InvoiceId