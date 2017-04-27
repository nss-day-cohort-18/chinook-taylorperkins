/*
	Provide a query that shows the total number of
	tracks in each playlist. 
	The Playlist name should be include on the resulant table.
*/

SELECT p.Name PlaylistName, COUNT(t.TrackId) NumOfTracks
FROM Playlist p, PlaylistTrack pl, Track t
WHERE p.PlaylistId = pl.PlaylistId
AND t.TrackId = pl.Trackid
GROUP BY p.Name