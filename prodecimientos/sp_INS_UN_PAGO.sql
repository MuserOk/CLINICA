-- Realizar pagos y asociarlos correctamente a los turnos y pacientes.

create procedure sp_Pagar
    @id_turno tinyint,
    @monto decimal(10, 2),
    @id_medio_pago tinyint,
    @id_estado_pago tinyint
as
begin
    -- Verificar que el turno exista
    if not exists (select 1 from Turnos where id_turno = @id_turno)
    begin
        PRINT 'Error: El turno no existe.'
        return
    end

    -- Verificar que el turno esté asociado a un paciente válido
    if not exists (select 1 
                   from Turnos t
                   join Pacientes p on t.id_paciente = p.id_paciente
                   where t.id_turno = @id_turno)
    begin
        PRINT 'Error: El turno no está asociado a un paciente válido.'
        return
    end

    -- Insertar el pago en la tabla Pagos
    insert into Pagos (id_turno, monto, id_medio_pago, id_estado_pago)
    values (@id_turno, @monto, @id_medio_pago, @id_estado_pago)
    PRINT 'Se regisstró el ago correctamente'
end
