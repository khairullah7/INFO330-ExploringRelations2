-- What was the most purchased track of 2013?
Select tracks.Name, COUNT(invoice_items.TrackId)
FROM tracks, invoice_items, invoices
WHERE invoice_items.TrackId = tracks.TrackId
AND invoice_items.InvoiceId = invoices.InvoiceId
AND invoices.InvoiceDate LIKE "2013%"
GROUP BY tracks.Name
ORDER BY COUNT(invoice_items.TrackId) desc
Limit 1;
