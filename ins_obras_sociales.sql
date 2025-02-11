-- select * from Obras_Sociales;

insert into Obras_Sociales(id_obra_social, nombre_obra, descuentos)
values
	(1, 'pami', 0.2),
	(2, 'ioma', 0.3),
	(3, 'osecac', 0.15),
	(4, 'swiss_medical', 0.35)
;

--  PARA AGREGAR NUEVA OBRA SOCIAL: VER PROCEDIMIENTO (sp_ISN_OBRA_SOCIAL)