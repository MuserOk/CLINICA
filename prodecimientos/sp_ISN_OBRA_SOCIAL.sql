CREATE PROCEDURE sp_InsertarObraSocial
	@id_obra_social tinyint,
	@nombre_obra varchar(50),
	@descuentos decimal(4,2)
AS
BEGIN
	INSERT INTO Obras_Sociales(id_obra_social, nombre_obra, descuentos)
	VALUES (@id_obra_social, @nombre_obra, @descuentos);
END


/*

EXE sp_InsertarObraSocial
	@id_obra_social = 5,
	@nombre_obra = 'tegno',
	@descuentos = 0.3;

*/