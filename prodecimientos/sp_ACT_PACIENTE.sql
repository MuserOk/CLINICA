CREATE PROCEDURE sp_ActualizarPaciente
    @id_paciente INT,
    @nombre_pac VARCHAR(50),
    @apellido_pac VARCHAR(50),
    @dni CHAR(15),
    @fecha_nacimiento DATE,
    @direccion VARCHAR(50),
    @telefono CHAR(15)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Pacientes WHERE id_paciente = @id_paciente)
    BEGIN
        -- Actualizar los datos del paciente
        UPDATE Pacientes
        SET nombre_pac = @nombre_pac,
            apellido_pac = @apellido_pac,
            dni = @dni,
            fecha_nacimiento = @fecha_nacimiento,
            direccion = @direccion,
            telefono = @telefono
        WHERE id_paciente = @id_paciente;
    END
    ELSE
    BEGIN
        PRINT 'Error: El paciente con ese ID no existe';
    END
END;


/*

EXEC sp_ActualizarPaciente 
    @id_paciente = 5, 
    @nombre_pac = 'Carlos', 
    @apellido_pac = 'Gómez', 
    @dni = '12345678', 
    @fecha_nacimiento = '1985-06-15', 
    @direccion = 'Av. Siempre Viva 742', 
    @telefono = '1122334455';

*/