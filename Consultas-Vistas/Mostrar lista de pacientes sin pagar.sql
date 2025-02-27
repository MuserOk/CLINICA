create or alter view vw_pacientes_impagos
as
	select t.id_paciente, sum(pg.monto) as Monto_Impago
	from Turnos t
	inner join Pagos pg on t.id_turno = pg.id_turno
	inner join Estados_de_Pagos ep on pg.id_estado_pago = ep.id_estado_pago
	where ep.nombre_estado_pago <> 'pagado'
	group by t.id_paciente;


--  SELECT * FROM vw_pacientes_impagos;

