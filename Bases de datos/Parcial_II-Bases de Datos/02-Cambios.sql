ALTER TABLE ESTUDIANTES ADD EDAD INT;
ALTER TABLE ESTUDIANTES ADD TELFIJO INT;

ALTER TABLE DOCENTES MODIFY TITULO VARCHAR (50);
ALTER TABLE DOCENTES ADD CODIGO_U INT NOT NULL;

CREATE TABLE IF NOT EXISTS `UNIVERSIDADES` (
`CODIGO_U` INT NOT NULL,
`NOMBRE_U` VARCHAR (30),
PRIMARY KEY(`CODIGO_U`));

ALTER TABLE MATERIAS ADD HABILITABLE VARCHAR (1);
ALTER TABLE MATERIAS ADD CHECK (HABILITABLE='S' OR HABILITABLE='N');