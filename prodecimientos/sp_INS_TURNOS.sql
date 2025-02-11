CREATE PROCEDURE sp_InsertarTurno
    @fecha_turno DATE,
    @id_paciente INT,
    @id_medico INT
AS
BEGIN
    -- Insertar un nuevo turno en la tabla Turnos
    INSERT INTO Turnos (fecha_turno, id_paciente, id_medico)
    VALUES (@fecha_turno, @id_paciente, @id_medico);
END


/*

EXEC sp_InsertarTurno 
    @fecha_turno = '2025-02-15', 
    @id_paciente = 1,  --  VERIFICAR EL ID
    @id_medico = 2;    --  VERIFICAR EL ID

*/