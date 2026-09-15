/* creacion de usuarios remotos*/
CREATE user 'marco.ramirez'@'%' IDENTIFIED BY 'qwerty123';
CREATE user 'angel.huerta'@'%' IDENTIFIED BY '240046';
CREATE user 'dorian.barrios'@'%' IDENTIFIED BY '240065';
CREATE user 'samuel.vargas'@'%' IDENTIFIED BY '240023';

/*Asignar privilegios de super usuario*/
GRANT ALL PRIVILEGES ON *.* TO 'angel.huerta'@'%';

/*Asignar privilegios de seleccion, inserccion, actualizacion y eliminacion al usuario de la izquierda*/
GRANT SELECT, INSERT, UPDATE, DELETE ON db_test_8b*.* TO 'samuel.vargas'@'%';

/*creacion de roles para el sistema de ecommerce*/
create role 'admin';
create role 'seller';
Create role 'buyer';
create role 'support';
create role 'common';
create role 'user_not_registered';

/*asignar privilegios a los roles creados*/
GRANT ALL PRIVILEGES ON db_test_8b *.* TO 'admin';
--support
grant SELECT, INSERT, UPDATE ON db_test_8b *.* TO 'support';

/*asignar roles a los usuarios creados*/
GRANT 'admin' TO 'marco.ramirez'@'%';
grant 'support' TO 'samuel.vargas'@'%';