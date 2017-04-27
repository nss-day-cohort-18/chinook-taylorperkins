/*
	Provide a query that shows all the Tracks, but displays no IDs.
	The result should include the Album name, Media type and Genre.
*/

SELECT t.Name TrackName, a.Title AlbumName, m.Name MediaType, g.Name Genre
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId = a.AlbumId
AND t.MediaTypeId = m.MediaTypeId
AND t.GenreId = g.GenreId
ORDER BY a.Title