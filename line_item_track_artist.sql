/* 
	 Provide a query that includes the purchased track
	 name AND artist name with each invoice line item.
*/

SELECT t.Name TrackName, a.Name ArtistName
FROM InvoiceLine il, Track t, Artist a, Album al
WHERE il.Trackid = t.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = a.ArtistId
ORDER BY a.Name