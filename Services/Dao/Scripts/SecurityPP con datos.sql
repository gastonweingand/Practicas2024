USE [ServicesPP]
GO
/****** Object:  User [servicespp]    Script Date: 16/5/2024 21:22:50 ******/
CREATE USER [servicespp] FOR LOGIN [servicespp] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [servicespp]
GO
/****** Object:  Table [dbo].[Familia]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familia](
	[IdFamilia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](1000) NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__Familia__751F80CFAEC6D605] PRIMARY KEY CLUSTERED 
(
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Familia_Familia]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familia_Familia](
	[IdFamilia] [uniqueidentifier] NOT NULL,
	[IdFamiliaHijo] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__Familia___ABFCC67EA96FECF5] PRIMARY KEY CLUSTERED 
(
	[IdFamilia] ASC,
	[IdFamiliaHijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Familia_Patente]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familia_Patente](
	[IdFamilia] [uniqueidentifier] NOT NULL,
	[IdPatente] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__FamiliaE__166FEEA61367E606] PRIMARY KEY CLUSTERED 
(
	[IdFamilia] ASC,
	[IdPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patente]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patente](
	[IdPatente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](1000) NULL,
	[DataKey] [varchar](1000) NULL,
	[TipoAcceso] [int] NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__Patente__9F4EF95C34290DD0] PRIMARY KEY CLUSTERED 
(
	[IdPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[UserName] [varchar](1000) NULL,
	[Password] [varchar](1000) NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__Usuario__5B65BF97B1F8060E] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Familia]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Familia](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdFamilia] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK__Usuario___BC34479BE7F15ED7] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Patente]    Script Date: 16/5/2024 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Patente](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdPatente] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Usuario_Patente] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Familia] ([IdFamilia], [Nombre]) VALUES (N'9a818c81-ba52-490c-a4c3-97f30a5db69c', N'Administrador')
GO
INSERT [dbo].[Familia_Patente] ([IdFamilia], [IdPatente]) VALUES (N'9a818c81-ba52-490c-a4c3-97f30a5db69c', N'7d46556f-58d5-4601-b9f2-30a2bfe5b836')
GO
INSERT [dbo].[Familia_Patente] ([IdFamilia], [IdPatente]) VALUES (N'9a818c81-ba52-490c-a4c3-97f30a5db69c', N'29e0b214-8a5f-4d62-9217-4f3f452a3c4f')
GO
INSERT [dbo].[Familia_Patente] ([IdFamilia], [IdPatente]) VALUES (N'9a818c81-ba52-490c-a4c3-97f30a5db69c', N'5ce4dfe9-a3e2-4877-860f-502793df78e2')
GO
INSERT [dbo].[Patente] ([IdPatente], [Nombre], [DataKey], [TipoAcceso]) VALUES (N'7d46556f-58d5-4601-b9f2-30a2bfe5b836', N'Dashboard general', N'mnuDashboardGeneral', 0)
GO
INSERT [dbo].[Patente] ([IdPatente], [Nombre], [DataKey], [TipoAcceso]) VALUES (N'29e0b214-8a5f-4d62-9217-4f3f452a3c4f', N'Visualización de Gestión de ventas', N'mnuVisualizacionGestionVentas', 0)
GO
INSERT [dbo].[Patente] ([IdPatente], [Nombre], [DataKey], [TipoAcceso]) VALUES (N'5ce4dfe9-a3e2-4877-860f-502793df78e2', N'Gestión de ventas', N'mnuGestionVentas', 0)
GO
ALTER TABLE [dbo].[Familia_Familia]  WITH CHECK ADD  CONSTRAINT [FK__Familia_A__Famil__37A5467C] FOREIGN KEY([IdFamiliaHijo])
REFERENCES [dbo].[Familia] ([IdFamilia])
GO
ALTER TABLE [dbo].[Familia_Familia] CHECK CONSTRAINT [FK__Familia_A__Famil__37A5467C]
GO
ALTER TABLE [dbo].[Familia_Familia]  WITH CHECK ADD  CONSTRAINT [FK__Familia_F__IdFam__656C112C] FOREIGN KEY([IdFamilia])
REFERENCES [dbo].[Familia] ([IdFamilia])
GO
ALTER TABLE [dbo].[Familia_Familia] CHECK CONSTRAINT [FK__Familia_F__IdFam__656C112C]
GO
ALTER TABLE [dbo].[Familia_Patente]  WITH CHECK ADD  CONSTRAINT [FK_Familia_Patente_Familia] FOREIGN KEY([IdFamilia])
REFERENCES [dbo].[Familia] ([IdFamilia])
GO
ALTER TABLE [dbo].[Familia_Patente] CHECK CONSTRAINT [FK_Familia_Patente_Familia]
GO
ALTER TABLE [dbo].[Familia_Patente]  WITH CHECK ADD  CONSTRAINT [FK_FamiliaElement_Patente] FOREIGN KEY([IdPatente])
REFERENCES [dbo].[Patente] ([IdPatente])
GO
ALTER TABLE [dbo].[Familia_Patente] CHECK CONSTRAINT [FK_FamiliaElement_Patente]
GO
ALTER TABLE [dbo].[Usuario_Familia]  WITH CHECK ADD  CONSTRAINT [FK__Usuario_F__IdUsu__693CA210] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Usuario_Familia] CHECK CONSTRAINT [FK__Usuario_F__IdUsu__693CA210]
GO
ALTER TABLE [dbo].[Usuario_Familia]  WITH CHECK ADD  CONSTRAINT [FK__Usuario_P__Famil__35BCFE0A] FOREIGN KEY([IdFamilia])
REFERENCES [dbo].[Familia] ([IdFamilia])
GO
ALTER TABLE [dbo].[Usuario_Familia] CHECK CONSTRAINT [FK__Usuario_P__Famil__35BCFE0A]
GO
ALTER TABLE [dbo].[Usuario_Patente]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Patente_Patente] FOREIGN KEY([IdPatente])
REFERENCES [dbo].[Patente] ([IdPatente])
GO
ALTER TABLE [dbo].[Usuario_Patente] CHECK CONSTRAINT [FK_Usuario_Patente_Patente]
GO
ALTER TABLE [dbo].[Usuario_Patente]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Patente_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Usuario_Patente] CHECK CONSTRAINT [FK_Usuario_Patente_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaDelete] (
	@IdFamilia uniqueidentifier,
	@IdFamiliaHijo uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Familia]
WHERE
	[IdFamilia] = @IdFamilia
	AND [IdFamiliaHijo] = @IdFamiliaHijo


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaDeleteByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaDeleteByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaDeleteByIdFamiliaHijo]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaDeleteByIdFamiliaHijo] (
	@IdFamiliaHijo uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Familia]
WHERE
	[IdFamiliaHijo] = @IdFamiliaHijo


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaInsert] (
	@IdFamilia uniqueidentifier,
	@IdFamiliaHijo uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Familia_Familia] (
	[IdFamilia],
	[IdFamiliaHijo]
) VALUES (
	@IdFamilia,
	@IdFamiliaHijo
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaSelect] (
	@IdFamilia uniqueidentifier,
	@IdFamiliaHijo uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdFamiliaHijo]
FROM
	[Familia_Familia]
WHERE
	[IdFamilia] = @IdFamilia
	AND [IdFamiliaHijo] = @IdFamiliaHijo


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdFamiliaHijo]
FROM
	[Familia_Familia]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaSelectByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaSelectByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdFamiliaHijo]
FROM
	[Familia_Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_FamiliaSelectByIdFamiliaHijo]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_FamiliaSelectByIdFamiliaHijo] (
	@IdFamiliaHijo uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdFamiliaHijo]
FROM
	[Familia_Familia]
WHERE
	[IdFamiliaHijo] = @IdFamiliaHijo


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteDelete] (
	@IdFamilia uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Patente]
WHERE
	[IdFamilia] = @IdFamilia
	AND [IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteDeleteByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteDeleteByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Patente]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteDeleteByIdPatente]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteDeleteByIdPatente] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia_Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteInsert] (
	@IdFamilia uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Familia_Patente] (
	[IdFamilia],
	[IdPatente]
) VALUES (
	@IdFamilia,
	@IdPatente
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteSelect] (
	@IdFamilia uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdPatente]
FROM
	[Familia_Patente]
WHERE
	[IdFamilia] = @IdFamilia
	AND [IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdPatente]
FROM
	[Familia_Patente]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteSelectByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteSelectByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdPatente]
FROM
	[Familia_Patente]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Familia_PatenteSelectByIdPatente]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Familia_PatenteSelectByIdPatente] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[IdPatente]
FROM
	[Familia_Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[FamiliaDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FamiliaDelete] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[FamiliaInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FamiliaInsert] (
	@IdFamilia uniqueidentifier,
	@Nombre varchar(1000)
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Familia] (
	[IdFamilia],
	[Nombre]
) VALUES (
	@IdFamilia,
	@Nombre
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[FamiliaSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FamiliaSelect] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[Nombre]
FROM
	[Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[FamiliaSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FamiliaSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdFamilia],
	[Nombre]
FROM
	[Familia]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[FamiliaUpdate]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FamiliaUpdate] (
	@IdFamilia uniqueidentifier,
	@Nombre varchar(1000)
	
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

UPDATE
	[Familia]
SET
	[Nombre] = @Nombre
WHERE
	 [IdFamilia] = @IdFamilia

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[PatenteDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatenteDelete] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[PatenteInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatenteInsert] (
	@IdPatente uniqueidentifier,
	@Nombre varchar(1000),
	@DataKey varchar(1000),
	@TipoAcceso int
	
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Patente] (
	[IdPatente],
	[Nombre],
	[DataKey],
	[TipoAcceso]
) VALUES (
	@IdPatente,
	@Nombre,
	@DataKey,
	@TipoAcceso
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[PatenteSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatenteSelect] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdPatente],
	[Nombre],
	[DataKey],
	[TipoAcceso]
FROM
	[Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[PatenteSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatenteSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdPatente],
	[Nombre],
	[DataKey],
	[TipoAcceso]
FROM
	[Patente]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[PatenteUpdate]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatenteUpdate] (
	@IdPatente uniqueidentifier,
	@Nombre varchar(1000),
	@DataKey varchar(1000),
	@TipoAcceso int
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

UPDATE
	[Patente]
SET
	[Nombre] = @Nombre,
	[DataKey] = @DataKey,
	[TipoAcceso] = @TipoAcceso
WHERE
	 [IdPatente] = @IdPatente

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaDelete] (
	@IdUsuario uniqueidentifier,
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Familia]
WHERE
	[IdUsuario] = @IdUsuario
	AND [IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaDeleteByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaDeleteByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaDeleteByIdUsuario]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaDeleteByIdUsuario] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Familia]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaInsert] (
	@IdUsuario uniqueidentifier,
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Usuario_Familia] (
	[IdUsuario],
	[IdFamilia]
) VALUES (
	@IdUsuario,
	@IdFamilia
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaSelect] (
	@IdUsuario uniqueidentifier,
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdFamilia]
FROM
	[Usuario_Familia]
WHERE
	[IdUsuario] = @IdUsuario
	AND [IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdFamilia]
FROM
	[Usuario_Familia]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaSelectByIdFamilia]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaSelectByIdFamilia] (
	@IdFamilia uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdFamilia]
FROM
	[Usuario_Familia]
WHERE
	[IdFamilia] = @IdFamilia


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_FamiliaSelectByIdUsuario]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_FamiliaSelectByIdUsuario] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdFamilia]
FROM
	[Usuario_Familia]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteDelete] (
	@IdUsuario uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Patente]
WHERE
	[IdUsuario] = @IdUsuario
	AND [IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteDeleteByIdPatente]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteDeleteByIdPatente] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteDeleteByIdUsuario]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteDeleteByIdUsuario] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario_Patente]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteInsert] (
	@IdUsuario uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Usuario_Patente] (
	[IdUsuario],
	[IdPatente]
) VALUES (
	@IdUsuario,
	@IdPatente
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteSelect] (
	@IdUsuario uniqueidentifier,
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdPatente]
FROM
	[Usuario_Patente]
WHERE
	[IdUsuario] = @IdUsuario
	AND [IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdPatente]
FROM
	[Usuario_Patente]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteSelectByIdPatente]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteSelectByIdPatente] (
	@IdPatente uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdPatente]
FROM
	[Usuario_Patente]
WHERE
	[IdPatente] = @IdPatente


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[Usuario_PatenteSelectByIdUsuario]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usuario_PatenteSelectByIdUsuario] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[IdPatente]
FROM
	[Usuario_Patente]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[UsuarioDelete]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsuarioDelete] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

DELETE FROM
	[Usuario]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[UsuarioInsert]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsuarioInsert] (
	@IdUsuario uniqueidentifier,
	@UserName varchar(1000),
	@Password varchar(1000)
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

INSERT INTO [Usuario] (
	[IdUsuario],
	[UserName],
	[Password]
) VALUES (
	@IdUsuario,
	@UserName,
	@Password
)


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[UsuarioSelect]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsuarioSelect] (
	@IdUsuario uniqueidentifier
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[UserName],
	[Password]
FROM
	[Usuario]
WHERE
	[IdUsuario] = @IdUsuario


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[UsuarioSelectAll]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsuarioSelectAll]

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

SELECT
	[IdUsuario],
	[UserName],
	[Password]
FROM
	[Usuario]


IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
/****** Object:  StoredProcedure [dbo].[UsuarioUpdate]    Script Date: 16/5/2024 21:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsuarioUpdate] (
	@IdUsuario uniqueidentifier,
	@UserName varchar(1000),
	@Password varchar(1000)
)

AS

SET NOCOUNT ON

DECLARE @DBID INT, @DBNAME NVARCHAR(128);
SET @DBID = DB_ID();
SET @DBNAME = DB_NAME();

UPDATE
	[Usuario]
SET
	[UserName] = @UserName,
	[Password] = @Password
WHERE
	 [IdUsuario] = @IdUsuario

IF (@@ERROR <> 0)
	RAISERROR
		(N'El ID de la base de datos actual es: %d, con el nombre: %s.', 10, 1, @DBID, @DBNAME);

GO
USE [master]
GO
ALTER DATABASE [ServicesPP] SET  READ_WRITE 
GO
