
/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FamiliaInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FamiliaInsert]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FamiliaUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FamiliaUpdate]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FamiliaDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FamiliaDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FamiliaSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FamiliaSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FamiliaSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FamiliaSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaInsert]
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



/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaDeleteByIdFamiliaHijo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaDeleteByIdFamiliaHijo]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaDeleteByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaDeleteByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaSelectByIdFamiliaHijo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaSelectByIdFamiliaHijo]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_FamiliaSelectByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_FamiliaSelectByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteInsert]
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


/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteDeleteByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteDeleteByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteDeleteByIdPatente]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteDeleteByIdPatente]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteSelectByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteSelectByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Familia_PatenteSelectByIdPatente]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Familia_PatenteSelectByIdPatente]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PatenteInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PatenteInsert]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PatenteUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PatenteUpdate]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PatenteDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PatenteDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PatenteSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PatenteSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PatenteSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PatenteSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UsuarioInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UsuarioInsert]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UsuarioUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UsuarioUpdate]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UsuarioDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UsuarioDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UsuarioSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UsuarioSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UsuarioSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UsuarioSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaInsert]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaDeleteByIdUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaDeleteByIdUsuario]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaDeleteByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaDeleteByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaSelectByIdUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaSelectByIdUsuario]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_FamiliaSelectByIdFamilia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_FamiliaSelectByIdFamilia]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteInsert]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteDelete]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteDeleteByIdPatente]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteDeleteByIdPatente]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteDeleteByIdUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteDeleteByIdUsuario]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteSelect]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteSelectAll]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteSelectByIdPatente]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteSelectByIdPatente]
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

/*******************************************************************************
*******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario_PatenteSelectByIdUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Usuario_PatenteSelectByIdUsuario]
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
