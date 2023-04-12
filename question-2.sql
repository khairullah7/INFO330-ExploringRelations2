-- Show the sales agent's full name and invoices associated with each sales agent.
Select invoices.InvoiceID, employees.FirstName, employees.LastName 
FROM invoices, customers, employees
WHERE invoices.CustomerID = customers.CustomerID
AND customers.SupportRepID = employees.EmployeeID;
