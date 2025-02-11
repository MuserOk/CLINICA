CREATE PROCEDURE sp_InsertarPaciente
    @nombre_pac VARCHAR(50),
    @apellido_pac VARCHAR(50),
    @dni CHAR(10),
    @fecha_nacimiento DATE,
    @direccion VARCHAR(50),
    @telefono CHAR(15)
AS
BEGIN
    INSERT INTO Pacientes(nombre_pac, apellido_pac, dni, fecha_nacimiento, direccion, telefono)
    VALUES (@nombre_pac, @apellido_pac, @dni, @fecha_nacimiento, @direccion, @telefono);
END


/* EJEMPLO PARA EJECUTAR ESTE PROCEDIMIENTO:

EXEC sp_InsertarPaciente 
    @nombre_pac = 'Juan', 
    @apellido_pac = 'Pérez', 
    @dni = '123456789', 
    @fecha_nacimiento = '1990-05-15', 
    @direccion = 'Calle Ficticia 123', 
    @telefono = '1234567890';

*/