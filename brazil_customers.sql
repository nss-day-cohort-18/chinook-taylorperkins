/*
  Provide a query only showing the Customers from Brazil.
*/

SELECT *
FROM Customer c
WHERE c.Country IS NOT 'Brazil'