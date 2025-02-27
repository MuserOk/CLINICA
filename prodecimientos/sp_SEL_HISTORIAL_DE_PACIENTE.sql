create procedure sp_Ver_Historia_de_Paciente
    @id_paciente INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si el paciente existe
    IF NOT EXISTS (SELECT 1 FROM Pacientes WHERE id_paciente = @id_paciente)
    BEGIN
        PRINT 'Paciente no encontrado.';
        RETURN;
    END

    -- Mostrar la historia clínica del paciente
    SELECT 
        hc.id_historia,
        t.fecha_turno AS Fecha_Turno,
        e.nombre_esp,
        m.nombre_med + ' ' + m.apellido_med AS Medico,
        hc.observacion_medica
    FROM Historias_Clinica hc
    INNER JOIN Turnos t ON hc.id_turno = t.id_turno
    INNER JOIN Medicos m ON t.id_medico = m.id_medico
	INNER JOIN Especialidades e ON m.id_especialidad = e.id_especialidad
    WHERE t.id_paciente = @id_paciente
    ORDER BY t.fecha_turno DESC;
END;


-- EXEC sp_Ver_Historia_de_Paciente @id_paciente = 3;