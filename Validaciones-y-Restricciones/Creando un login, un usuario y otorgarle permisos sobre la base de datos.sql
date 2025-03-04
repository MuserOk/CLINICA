
--crear un login --
create login Muser with password = 'sinSeguridad';

--crear un user -- roles db
create user uMuser for login Muser;


-- grant y revoke --
-- dar permisos a mi usuario sobre la base de datos --- por DCL

USE Gestion_de_Clinica;  -- base de datos
EXEC sp_addrolemember 'db_owner', 'uMuser';  -- Otorga el rol db_owner a uMuser