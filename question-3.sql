-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
Select invoice_items.*, tracks.Name, artists.Name
FROM invoice_items, tracks, artists, albums
WHERE invoice_items.TrackID = tracks.TrackID
AND tracks.AlbumID = albums.AlbumID
AND albums.ArtistID = artists.ArtistID;
