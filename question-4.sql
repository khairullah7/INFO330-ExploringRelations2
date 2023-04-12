-- Which sales agent made the most in sales in 2010?
Select employees.FirstName, employees.LastName, SUM(invoices.Total)
FROM employees, invoices, customers 
WHERE invoices.CustomerId = customers.CustomerId
AND customers.SupportRepId = employees.EmployeeId
AND employees.Title = "Sales Support Agent"
AND invoices.InvoiceDate LIKE "2010%"
GROUP BY employees.FirstName, employees.LastName
order by SUM(invoices.Total) desc
Limit 1;
