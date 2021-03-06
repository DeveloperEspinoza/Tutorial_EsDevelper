USE [Ventas]
GO
/****** Object:  Table [dbo].[TotalVentas]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TotalVentas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Total_ventas] [bigint] NOT NULL,
	[Estado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TotalVentas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AGREGAR_VENTAS]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <12-08-2020>
-- Description:	<AGEGAR,,>
-- =============================================
CREATE PROCEDURE [dbo].[AGREGAR_VENTAS]
@NOMBRE AS VARCHAR(100),
@TOTAL_VENTAS AS BIGINT,
@ESTADO AS VARCHAR(100)
AS
BEGIN

INSERT INTO TotalVentas(Nombre, Total_ventas, Estado)
VALUES
(@NOMBRE,@TOTAL_VENTAS, @ESTADO)
	
END

GO
/****** Object:  StoredProcedure [dbo].[CONSULTAR_VENTAS]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <12-08-2020>
-- Description:	<CONSULTAR_VENTAS,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONSULTAR_VENTAS]
AS
BEGIN

SELECT * FROM TotalVentas;
	
END

GO
/****** Object:  StoredProcedure [dbo].[CONSULTAR_VENTAS_POR_NOMBRE]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <12-08-2020>
-- Description:	<CONSULTAR_VENTAS,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONSULTAR_VENTAS_POR_NOMBRE]
@NOMBRE AS VARCHAR(100)
AS
BEGIN

SELECT * FROM TotalVentas WHERE Nombre=@NOMBRE;
	
END

GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_VENTAS]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <12-08-2020>
-- Description:	<ELIMINAR,,>
-- =============================================
CREATE PROCEDURE [dbo].[ELIMINAR_VENTAS]
@ID AS BIGINT
AS
BEGIN

DELETE FROM TotalVentas WHERE  Id= @ID;
	
END

GO
/****** Object:  StoredProcedure [dbo].[MODIFICAR_VENTAS]    Script Date: 12/08/2020 21:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <12-08-2020>
-- Description:	<MODIFICAR,,>
-- =============================================
CREATE PROCEDURE [dbo].[MODIFICAR_VENTAS]
@ID AS BIGINT,
@NOMBRE AS VARCHAR(100),
@TOTAL_VENTAS AS BIGINT,
@ESTADO AS VARCHAR(100)
AS
BEGIN

UPDATE TotalVentas SET Nombre=@NOMBRE, Total_ventas=@TOTAL_VENTAS, Estado=@ESTADO
WHERE Id=@ID;
	
END

GO
