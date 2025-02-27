create table Pacientes(
	id_paciente int primary key identity(1,1) not null,
	nombre_pac varchar(50) not null,
	apellido_pac varchar(50) not null,
	dni char(10) not null,
	fecha_nacimiento date not null,
	direccion varchar(50) not null,
	telefono char(15) not null
	);

create table Especialidades(
	id_especialidad tinyint primary key not null,
	nombre_esp varchar(50), -- 5 especialidades 
	precio_esp decimal(8,2)
	);

create table Medicos(
	id_medico int primary key identity(1,1) not null,
	nombre_med varchar(50) not null,
	apellido_med varchar(50) not null,
	id_especialidad tinyint not null foreign key references Especialidades(id_especialidad)
	);

create table Obras_Sociales(
	id_obra_social tinyint primary key not null,
	nombre_obra varchar(100)not null,
	descuentos decimal(4,2) not null  --ejemplo 10% de descuento =0,1
	);

create table Turnos(
	id_turno int primary key identity(1,1) not null,
	fecha_turno date  not null,
	id_paciente int not null foreign key references Pacientes(id_paciente),
	id_medico int not null foreign key references Medicos(id_medico)
	);

create table Historias_Clinica(
	id_historia int primary key identity(1,1) not null,
	fecha_historia datetime2(0) not null, --datetime2 es mas eficiente en espacio, estandares internacionales, presicion y mas amplio
	id_turno int not null foreign key references Turnos(id_turno),
	observacion_medica varchar(2000)
	);

create table Medios_de_Pagos(
	id_medio_pago tinyint primary key not null,
	medio_pago varchar(50) not null
	);

create table Estados_de_Pagos(
	id_estado_pago tinyint primary key not null,
	nombre_estado_pago varchar(50) not null -- pendiente, pagado, rechazado
	);

create table Pagos(
	id_pago int primary key identity(1,1) not null,
	id_turno int not null foreign key references Turnos(id_turno),
	monto decimal(8,2) not null, -- se calcula precio base segun especialidad - descuento si tiene obra social
	id_medio_pago tinyint not null foreign key references Medios_de_Pagos(id_medio_pago),
	id_estado_pago tinyint not null foreign key references Estados_de_Pagos(id_estado_pago)
	);
