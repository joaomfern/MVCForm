USE [ExercicioExtra]
GO
/****** Object:  StoredProcedure [dbo].[AddDocument]    Script Date: 17/10/2020 17:39:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddDocument]
	@categoryId int,
	@bankaccountid int,
	@creditorid int,
	@description nvarchar(200),
	@documentNumber nvarchar(200),
	@documentdate datetime,
	@duedate datetime,
	@amount float,
	@paymentdate datetime,
	@paymenttypeid int
	as
BEGIN
	insert into Documents
		(CategoryId,
	BankAccountId ,
	CreditorId ,
	Description ,
	DocumentNumber ,
	DocumentDate ,
	DueDate ,
	Amount ,
	PaymenteDate ,
	PaymentTypeId)
	values
	(@categoryId,
	@bankaccountid ,
	@creditorid ,
	@description ,
	@documentNumber ,
	@documentdate ,
	@duedate ,
	@amount ,
	@paymentdate ,
	@paymenttypeid )
End


--EXEC AddDocument 	
--	@categoryId=1,
--	@bankaccountid=1 ,
--	@creditorid=1 ,
--	@description='teste' ,
--	@documentNumber='123' ,
--	@documentdate='2000-01-01',
--	@duedate='2000-01-01' ,
--	@amount=20 ,
--	@paymentdate='2000-01-01',
--	@paymenttypeid=1 

select * from AllDocumentsDetail