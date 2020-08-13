USE Ventas
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<KARLA>
-- Create date: <10-08-2020>
-- Description:	<AGREGAR>
-- =============================================
CREATE PROCEDURE CONSULTAR_VENTAS_POR_NOMBRE
@NOMBRE AS VARCHAR (100)
AS
BEGIN

SELECT * FROM TotalVentas WHERE Nombre = @NOMBRE;

END
GO


