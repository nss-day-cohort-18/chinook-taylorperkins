/*
	 How many Invoices were there in 2009?
*/

SELECT COUNT(*)
FROM Invoice i
WHERE instr(i.InvoiceDate, '2009')
