USE [Gestion_de_Clinica]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarTurno]    Script Date: 28/2/2025 10:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_InsertarTurno]
@fecha_turno DATE, @id_paciente INT, @id_medico INT, @id_estado_turno INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificamos si ya existe un turno para el mismo paciente y médico en la misma fecha
    IF EXISTS (SELECT 1 FROM Turnos WHERE id_paciente = @id_paciente AND fecha_turno = @fecha_turno AND id_medico = @id_medico
    )
    BEGIN
        PRINT 'Error: Ya existe un turno para este paciente con este médico en la misma fecha.';
        RETURN;
    END;

    -- Insertar nuevo turno
    INSERT INTO Turnos (fecha_turno, id_paciente, id_medico, id_estado_turno)
    VALUES (@fecha_turno, @id_paciente, @id_medico, @id_estado_turno);

    PRINT 'Turno registrado correctamente.';
END;
GO