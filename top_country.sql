/*
	Which country's customers spent the most?
*/

SELECT c.FirstName CustomerName, i.Billingcountry Country, MAX(AmountSum) AmountSpent
FROM (select SUM(i.Total) as AmountSum
			FROM Invoice i, Customer c
			WHERE i.CustomerId = c.CustomerId), Invoice i, Customer c
