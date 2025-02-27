CREATE VIEW vw_Turnos_Paciente AS
SELECT 
    t.id_turno, 
    t.fecha_turno, 
    m.nombre_med, 
    t.id_paciente,
	et.estado
FROM Turnos t
INNER JOIN Medicos m ON t.id_medico = m.id_medico
INNER JOIN Estado_de_Turnos et ON t.id_estado_turno = et.id_estado_turno;



/*
-- 
SELECT * FROM vw_Turnos_Paciente 
WHERE id_paciente = @id_paciente 
AND fecha_turno BETWEEN @fecha_inicio AND @fecha_fin;
*/