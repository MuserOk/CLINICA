-- Me faltó agregar la relacion de la tabla obra sociales

ALTER TABLE Pacientes
ADD id_obra_social TINYINT NULL,  -- Permitir NULL en caso de que algunos pacientes no tengan obra social
    CONSTRAINT FK_Pacientes_ObrasSociales FOREIGN KEY (id_obra_social)
    REFERENCES Obras_Sociales(id_obra_social);
