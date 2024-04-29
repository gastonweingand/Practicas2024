USE [master]
GO
/****** Object:  Database [DemoPP]    Script Date: 26/4/2024 22:13:37 ******/
CREATE DATABASE [DemoPP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoPP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemoPP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoPP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemoPP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DemoPP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoPP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoPP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoPP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoPP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoPP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoPP] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoPP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoPP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoPP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoPP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoPP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoPP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoPP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoPP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoPP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoPP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoPP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoPP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoPP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoPP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoPP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoPP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoPP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoPP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoPP] SET  MULTI_USER 
GO
ALTER DATABASE [DemoPP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoPP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoPP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoPP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoPP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoPP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DemoPP] SET QUERY_STORE = ON
GO
ALTER DATABASE [DemoPP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DemoPP]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdCustomer] [uniqueidentifier] NOT NULL,
	[Code] [int] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[IdQuotation] [uniqueidentifier] NOT NULL,
	[OpenDate] [datetime] NULL,
	[CloseDate] [datetime] NULL,
 CONSTRAINT [PK_Quotation] PRIMARY KEY CLUSTERED 
(
	[IdQuotation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'618e754b-0c47-4872-9436-089f6f89aec2', 34, N'test')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'71154af7-e604-446e-8be3-2a41f5694ae3', 1, N'Gabriel Galotta')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'fc7b8926-373c-46c9-9876-42af633d4aac', 500, N'Pablo')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'2c233ff4-c3fd-433e-bdf4-73c1b96821de', 2000, N'Carlitos')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'1ea2e094-ff01-4210-a08b-7eebce4ff44e', 23, N'2604')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'001bcca5-7c96-4c9b-a2a2-90d3596b6c5b', 500, N'Pablo')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'06934758-452e-4ce3-a8fc-a3cd487c5006', 23, N'2604')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'c9ea9085-5e58-4a35-9c32-aa5a928e1742', 20, N'Otra prueba')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'5dada7c9-40a7-44fc-8573-beee9caaefac', 1000, N'Jorgito')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'f54a957d-f027-48fb-80fb-c10731fe77d7', 500, N'Pablo')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'ec52fb04-6d60-4bd6-b716-de8d29b68555', 500, N'Pablo')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'f5705f68-1fbb-44c7-9dff-ed98021bde1e', 45, N'Jorge Gonzalez')
GO
INSERT [dbo].[Customer] ([IdCustomer], [Code], [Name]) VALUES (N'63b9dda5-875b-4810-93b0-f3c807716186', 32, N'Pedro Picapiedra')
GO
/****** Object:  StoredProcedure [dbo].[CustomerDelete]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerDelete] (
	@IdCustomer uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Customer]
WHERE
	[IdCustomer] = @IdCustomer


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[CustomerInsert]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerInsert] (
	@Code int,
	@Name varchar(50)
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

declare @IdCustomer uniqueidentifier = newid()

INSERT INTO [Customer] (
	[IdCustomer],
	[Code],
	[Name]
) VALUES (
	@IdCustomer,
	@Code,
	@Name
)
select @IdCustomer

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[CustomerSelect]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerSelect] (
	@IdCustomer uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdCustomer],
	[Code],
	[Name]
FROM
	[Customer]
WHERE
	[IdCustomer] = @IdCustomer


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[CustomerSelectAll]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdCustomer],
	[Code],
	[Name]
FROM
	[Customer]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[CustomerUpdate]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerUpdate] (
	@IdCustomer uniqueidentifier,
	@Code int,
	@Name varchar(50)
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

UPDATE
	[Customer]
SET
	[Code] = @Code,
	[Name] = @Name
WHERE
	 [IdCustomer] = @IdCustomer

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[QuotationDelete]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationDelete] (
	@IdQuotation uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Quotation]
WHERE
	[IdQuotation] = @IdQuotation


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[QuotationInsert]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationInsert] (
	@IdQuotation uniqueidentifier,
	@OpenDate datetime,
	@CloseDate datetime
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Quotation] (
	[IdQuotation],
	[OpenDate],
	[CloseDate]
) VALUES (
	@IdQuotation,
	@OpenDate,
	@CloseDate
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[QuotationSelect]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationSelect] (
	@IdQuotation uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdQuotation],
	[OpenDate],
	[CloseDate]
FROM
	[Quotation]
WHERE
	[IdQuotation] = @IdQuotation


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[QuotationSelectAll]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdQuotation],
	[OpenDate],
	[CloseDate]
FROM
	[Quotation]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[QuotationUpdate]    Script Date: 26/4/2024 22:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationUpdate] (
	@IdQuotation uniqueidentifier,
	@OpenDate datetime,
	@CloseDate datetime
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

UPDATE
	[Quotation]
SET
	[OpenDate] = @OpenDate,
	[CloseDate] = @CloseDate
WHERE
	 [IdQuotation] = @IdQuotation

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
USE [master]
GO
ALTER DATABASE [DemoPP] SET  READ_WRITE 
GO
