CREATE OR ALTER VIEW vw_Especialidad_de_Medico AS
SELECT 
    m.id_medico,
    m.nombre_med + ' ' + m.apellido_med AS Nombre_Completo,
    e.nombre_esp
FROM Medicos m
INNER JOIN Especialidades e ON m.id_especialidad = e.id_especialidad;



--  SELECT * FROM vw_Especialidad_Medico WHERE id_medico = @id_medico;
