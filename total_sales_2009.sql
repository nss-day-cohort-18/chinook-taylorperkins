/*
    What are the respective total sales for 2009?
*/

SELECT SUM(i.Total)
FROM Invoice i
WHERE instr(i.InvoiceDate, '2009')