
CREATE VIEW vw_Total_Pagos_Paciente AS
SELECT p.id_paciente, SUM(pg.monto) AS Total_Pagado
FROM Turnos t
INNER JOIN Pacientes p on p.id_paciente = t.id_paciente
INNER JOIN Pagos pg on t.id_turno = pg.id_turno
INNER JOIN Estados_de_Pagos ep ON pg.id_estado_pago = ep.id_estado_pago
WHERE ep.nombre_estado_pago = 'pagado'  -- Solo se consideran pagos confirmados
GROUP BY p.id_paciente;



-- SELECT * FROM vw_Total_Pagos_Paciente WHERE id_paciente = @id_paciente;
