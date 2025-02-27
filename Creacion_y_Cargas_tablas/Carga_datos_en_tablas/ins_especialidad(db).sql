-- select * from Especialidades;

-- AL SER UNA TABLA QUE NO PRETENDE EXTENDERSE DEMASIADO, NO SE CONSIDERA NECESARIO USAR PROPIEDAD IDENTITY

insert into Especialidades(id_especialidad, nombre_esp, precio_esp)
values
	(1,'clinica_medica', 2000),
	(2,'pediatria', 3000),
	(3,'ginecologia', 2500),
	(4,'traumatologia', 4000),
	(5,'odontologia', 5000)
	;


-- PARA AGREGAR NUEVAS ESPECIALIDADES: VER PROCEDIMIENTO (sp_INS_ESPECIALIDAD)
