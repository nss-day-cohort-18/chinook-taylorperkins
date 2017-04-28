/*
	 Provide a query that shows the top 3 best selling artists.
*/

SELECT art.Name, COUNT(inl.TrackId) AS NumOfSales, '$' || printf('%.2f', SUM(inl.UnitPrice)) as SumOfSales
FROM Artist art, Album alb, Track t, InvoiceLine inl
WHERE art.ArtistId = alb.Artistid
AND alb.AlbumId = t.AlbumId
AND t.TrackId = inl.TrackId
GROUP BY art.Name
ORDER BY 2 DESC
LIMIT 3;
