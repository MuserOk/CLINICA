CREATE PROCEDURE sp_InsertaMedioDePago
	@id_medio_pago TINYINT,
	@medio_pago VARCHAR(50)
AS
BEGIN
	insert into Medios_de_Pagos(id_medio_pago, medio_pago)
	values (@id_medio_pago, @medio_pago);
END


/*

EXE sp_InsertarMedioDePago
	@id_medio_pago = 5,      -- VERIFICAR ID
	@medio_pago = 'dolar';

*/