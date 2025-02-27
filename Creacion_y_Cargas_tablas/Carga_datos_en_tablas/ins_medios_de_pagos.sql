--   select * from Medios_de_Pagos;

insert into Medios_de_Pagos( id_medio_pago, medio_pago)
values
	(1, 'efectivo'),
	(2, 'transferencia'),
	(3, 'debito'),
	(4, 'credito')
;


--  PARA AGREGAR UN NUEVO MEDIO DE PAGO: VER PROCEDIMIENTO(ps_INS_MEDIO_DE_PAGO)