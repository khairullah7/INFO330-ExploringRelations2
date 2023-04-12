-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
Select FirstName, LastName, InvoiceID, InvoiceDate, BillingCountry
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE Country = 'Brazil';
