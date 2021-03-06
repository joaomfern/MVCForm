USE [master]
GO
/****** Object:  Database [ExercicioExtra]    Script Date: 07/11/2020 20:31:50 ******/
CREATE DATABASE [ExercicioExtra]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExercicioExtra', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ExercicioExtra.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExercicioExtra_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ExercicioExtra_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ExercicioExtra] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExercicioExtra].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExercicioExtra] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExercicioExtra] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExercicioExtra] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExercicioExtra] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExercicioExtra] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExercicioExtra] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExercicioExtra] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExercicioExtra] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExercicioExtra] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExercicioExtra] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExercicioExtra] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExercicioExtra] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExercicioExtra] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExercicioExtra] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExercicioExtra] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExercicioExtra] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExercicioExtra] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExercicioExtra] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExercicioExtra] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExercicioExtra] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExercicioExtra] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExercicioExtra] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExercicioExtra] SET RECOVERY FULL 
GO
ALTER DATABASE [ExercicioExtra] SET  MULTI_USER 
GO
ALTER DATABASE [ExercicioExtra] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExercicioExtra] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExercicioExtra] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExercicioExtra] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ExercicioExtra] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExercicioExtra', N'ON'
GO
ALTER DATABASE [ExercicioExtra] SET QUERY_STORE = OFF
GO
USE [ExercicioExtra]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[BankAccountId] [int] IDENTITY(1,1) NOT NULL,
	[BankAccountNumber] [nvarchar](100) NOT NULL,
	[CreditorID] [int] NOT NULL,
 CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[BankAccountId] [int] NULL,
	[CreditorId] [int] NULL,
	[Description] [nvarchar](200) NULL,
	[DocumentNumber] [nvarchar](200) NULL,
	[DocumentDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Amount] [float] NULL,
	[PaymenteDate] [datetime] NULL,
	[PaymentTypeId] [int] NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Creditors]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Creditors](
	[CreditorId] [int] IDENTITY(1,1) NOT NULL,
	[CreditorName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Creditors] PRIMARY KEY CLUSTERED 
(
	[CreditorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](100) NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AllDocumentsDetail]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[AllDocumentsDetail] as
select c.CategoryName, b.BankAccountNumber, cr.CreditorName, d.Description, d.DocumentNumber, d.DocumentDate, d.DueDate, d.Amount,d.PaymenteDate, p.PaymentName from Documents d
join Categories c on c.CategoryId=d.CategoryId
join Creditors cr on cr.CreditorId=d.CreditorId
join BankAccounts b on b.BankAccountId=d.BankAccountId
join PaymentTypes p on p.PaymentTypeId=d.PaymentTypeId
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_BankAccounts] FOREIGN KEY([CreditorId])
REFERENCES [dbo].[Creditors] ([CreditorId])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_BankAccounts]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Categories]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Creditors] FOREIGN KEY([CreditorId])
REFERENCES [dbo].[Creditors] ([CreditorId])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Creditors]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_PaymentTypes] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_PaymentTypes]
GO
/****** Object:  StoredProcedure [dbo].[AddDocument]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddDocument]
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
GO
/****** Object:  StoredProcedure [dbo].[EditDocument]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EditDocument]
	@documentid int,
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
	update Documents set
	CategoryId=@categoryId,
	BankAccountId=@bankaccountid  ,
	CreditorId=@creditorid ,
	Description=@description ,
	DocumentNumber=@documentNumber ,
	DocumentDate=@documentdate ,
	DueDate=@duedate ,
	Amount=@amount  ,
	PaymenteDate=@paymentdate  ,
	PaymentTypeId=@paymenttypeid
	where DocumentId=@documentid
End
GO
/****** Object:  StoredProcedure [dbo].[RemoveDocument]    Script Date: 07/11/2020 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RemoveDocument]
	@documentid int
	as
Begin
	delete 
	from Documents 
	where DocumentId = @documentid
End
GO
USE [master]
GO
ALTER DATABASE [ExercicioExtra] SET  READ_WRITE 
GO
