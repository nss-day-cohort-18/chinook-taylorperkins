/*
	 How many Invoices were there in 2011?
*/

SELECT COUNT(*)
FROM Invoice i
WHERE instr(i.InvoiceDate, '2011')
