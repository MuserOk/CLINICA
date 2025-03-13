-- Agregamos esta seguridad que evita duplicados en DNI de Pacientes
ALTER TABLE Pacientes 
ADD CONSTRAINT UQ_Pacientes_DNI UNIQUE (dni);