CREATE PROCEDURE sp_InsertarMedico
    @nombre_med VARCHAR(50),
    @apellido_med VARCHAR(50),
    @id_especialidad TINYINT
AS
BEGIN
    -- Insertar un nuevo m�dico en la tabla Medicos
    INSERT INTO Medicos (nombre_med, apellido_med, id_especialidad)
    VALUES (@nombre_med, @apellido_med, @id_especialidad);
END


/*

EXEC sp_InsertarMedico 
    @nombre_med = 'Carlos', 
    @apellido_med = 'G�mez', 
    @id_especialidad = 1; -- VRIFICAR LA EXISTENCIA DEL ID

*/