
create view AllDocumentsDetail as
select c.CategoryName, b.BankAccountNumber, cr.CreditorName, d.Description, d.DocumentNumber, d.DocumentDate, d.DueDate, d.Amount,d.PaymenteDate, p.PaymentName from Documents d
join Categories c on c.CategoryId=d.CategoryId
join Creditors cr on cr.CreditorId=d.CreditorId
join BankAccounts b on b.BankAccountId=d.BankAccountId
join PaymentTypes p on p.PaymentTypeId=d.PaymentTypeId

SELECT * FROM AllDocumentsDetail