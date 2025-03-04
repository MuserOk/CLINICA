-- indices: apunta a valor de la columna de una determinada tabla. Eso optimiza la busqueda.

-- buscar paciente 
CREATE INDEX idx_Pacientes_DNI ON Pacientes(dni);
CREATE INDEX idx_Turnos_Paciente ON Turnos(id_paciente, fecha_turno);
-- buscar pagos y estados
CREATE INDEX idx_Pagos_Paciente ON Pagos(id_estado_pago);
CREATE INDEX idx_Pagos_Estado ON Pagos(id_turno) INCLUDE (monto);
CREATE INDEX idx_Turnos_Estado ON Turnos(id_estado_turno);
-- buscar medicos y especialidades
CREATE INDEX idx_Medicos_Especialidad ON Medicos(id_especialidad);
CREATE INDEX idx_Turnos_Medico_Fecha ON Turnos(id_medico, fecha_turno);

