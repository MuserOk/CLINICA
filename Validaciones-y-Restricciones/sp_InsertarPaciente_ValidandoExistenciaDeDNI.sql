USE [Gestion_de_Clinica]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarPaciente]    Script Date: 28/2/2025 10:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_InsertarPaciente]
	@nombre_pac VARCHAR (50), 
	@apellido_pac VARCHAR (50), 
	@dni CHAR (10), 
	@fecha_nacimiento DATE, 
	@direccion VARCHAR (50), 
	@telefono CHAR (15),  
	@id_obra_social tinyint
AS
BEGIN
    SET NOCOUNT ON;

    -- Validamos si ya existe un paciente con el mismo DNI
    IF EXISTS (SELECT 1 FROM Pacientes WHERE DNI = @DNI)
    BEGIN
        PRINT 'Error: Ya existe un paciente con este DNI.';
        RETURN;
    END

    -- Insertar el nuevo paciente si no existe
    INSERT INTO Pacientes (nombre_pac, apellido_pac, dni, fecha_nacimiento, direccion, telefono, id_obra_social)
    VALUES (@nombre_pac, @apellido_pac, @dni, @fecha_nacimiento, @direccion, @telefono, @id_obra_social);

    PRINT 'Paciente insertado correctamente.';
END;


