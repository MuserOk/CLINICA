CREATE PROCEDURE sp_ActualizarMedico
    @id_medico INT,
    @nombre_med VARCHAR(50),
    @apellido_med VARCHAR(50),
    @id_especialidad TINYINT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Medicos WHERE id_medico = @id_medico)
    BEGIN
        UPDATE Medicos
        SET nombre_med = @nombre_med,
            apellido_med = @apellido_med,
            id_especialidad = @id_especialidad
        WHERE id_medico = @id_medico;
    END
    ELSE
    BEGIN
        PRINT 'Error: El médico con ese ID no existe';
    END
END;


/*

EXEC sp_ActualizarMedico 
    @id_medico = 3, 
    @nombre_med = 'Juan', 
    @apellido_med = 'Cruz', 
    @id_especialidad = 2;  -- VERIFICAR ID

*/