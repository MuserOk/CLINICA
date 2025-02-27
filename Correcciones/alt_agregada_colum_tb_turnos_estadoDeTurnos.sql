alter table Turnos
add id_estado_turno int foreign key references Estado_de_Turnos(id_estado_turno);