CREATE PROCEDURE sp_InsertarEspecialidad
    @id_especialidad TINYINT,       -- ID de la especialidad, si se necesita especificar manualmente
    @nombre_esp VARCHAR(50),        -- Nombre de la especialidad
    @precio_esp DECIMAL(10, 2)      -- Precio de la especialidad
AS
BEGIN
    -- Insertar una nueva especialidad en la tabla Especialidades
    INSERT INTO Especialidades (id_especialidad, nombre_esp, precio_esp)
    VALUES (@id_especialidad, @nombre_esp, @precio_esp);
END


/*

EXEC sp_InsertarEspecialidad 
    @id_especialidad = 6,   -- VERIFICAR ID
    @nombre_esp = 'Dermatología', 
    @precio_esp = 2000;

*/