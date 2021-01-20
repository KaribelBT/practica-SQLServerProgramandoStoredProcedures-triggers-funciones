if exists (select * from sysobjects where name = 'academic' and xtype = 'U')
DROP TABLE academic


CREATE TABLE academic (
  Anoemplead char(8)   NOT NULL,
  Anombre varchar(42)   NOT NULL,
  Adomicilio varchar(40)   NOT NULL,
  Afecalta date NOT NULL,
  Anumayuda integer NOT NULL,
  Asueldo decimal(5,2) NOT NULL,
  Anocarrera char(4) NOT NULL,
  PRIMARY KEY (Anoemplead)
) 

--
-- Volcado de datos para la tabla 'academic'
--

INSERT INTO academic (Anoemplead, Anombre, Adomicilio, Afecalta, Anumayuda, Asueldo, Anocarrera) VALUES
('72654545', 'Juan Mendez', 'Aragon', '1985-02-01', 2, '999.99', '32'),
('75165232', 'Alberto Alvarez', 'Ecatepec', '1991-02-01', 8, '999.99', '40'),
('75212122', 'Carlos Cuenca', 'Aragon', '1982-01-01', 5, '999.99', '38'),
('75521245', 'Armando Cruz', 'Cd. Neza', '1983-11-01', 2, '999.99', '38'),
('75656566', 'Pedro Benitez', 'Cd. Neza', '1983-02-02', 2, '999.99', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'carrera'
--
if exists (select * from sysobjects where name = 'carrera' and xtype = 'U')
DROP TABLE carrera

CREATE TABLE carrera (
  Cnocarrera char(4)  NOT NULL,
  Cnombre varchar(15)  NOT NULL,
  Cedificio varchar(6)  NOT NULL,
  Ccoord char(8)  NOT NULL,
  PRIMARY KEY (Cnocarrera)
) ;

--
-- Volcado de datos para la tabla 'carrera'
--

INSERT INTO carrera (Cnocarrera, Cnombre, Cedificio, Ccoord) VALUES
('32', 'computacion', 'A202', '75656566'),
('38', 'Electronica', 'A501', '75521245'),
('40', 'Mecanica', 'A501', '75165232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'estudian'
--
if exists (select * from sysobjects where name = 'estudian' and xtype = 'U')
DROP TABLE estudian


CREATE TABLE estudian (
  Enocuenta char(8)  NOT NULL,
  Enombre varchar(40)  NOT NULL,
  Edomicilio varchar(40)  NOT NULL,
  Etelefono char(10)  DEFAULT NULL,
  Efecnacim date NOT NULL,
  Enocarrera char(4)  NOT NULL,
  PRIMARY KEY (Enocuenta),
) ;

--
-- Volcado de datos para la tabla 'estudian'
--

INSERT INTO estudian (Enocuenta, Enombre, Edomicilio, Etelefono, Efecnacim, Enocarrera) VALUES
('82323233', 'Pedro Sauza', 'Ecatepec', NULL, '1967-12-11', '40'),
('84254321', 'Carolina Biset', 'ARAGON', '7715421', '1968-02-01', '32'),
('84254322', 'Alejandro Sauza', 'Cd. Neza', '8545454', '1969-05-05', '38'),
('84321212', 'Juan Bisset', 'Aragon', '7212212', '1953-02-05', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'grupo'
--
if exists (select * from sysobjects where name = 'grupo' and xtype = 'U')
DROP TABLE grupo

CREATE TABLE grupo (
  Gnogrupo char(4)  NOT NULL,
  Gnomateria char(4)  NOT NULL,
  Gnomaestro char(8)  DEFAULT NULL,
  Gdias varchar(6)  NOT NULL,
  Ghora varchar(15)  NOT NULL,
  Gsalon varchar(6)  NOT NULL,
  PRIMARY KEY (Gnogrupo),
) ;

--
-- Volcado de datos para la tabla 'grupo'
--

INSERT INTO grupo (Gnogrupo, Gnomateria, Gnomaestro, Gdias, Ghora, Gsalon) VALUES
('1157', '0076', '72654545', 'LUMIVI', '11:30 13:30', 'A211'),
('1158', '0134', NULL, 'MAJU', '07:00 8:30', 'A521'),
('1159', '0119', '75656566', 'SA', '07:00 12:00', 'A121'),
('2501', '0138', '75165232', 'LUMIVI', '17:00 18:30', 'A213'),
('2504', '0024', '75165232', 'MAJU', '17:00 19:00', 'A212'),
('2705', '0028', '75212122', 'MAJU', '17:00 19:00', 'A525'),
('2706', '0130', '75521245', 'LUMIVI', '17:00 18:30', 'A808');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'inscrip'
--
if exists (select * from sysobjects where name = 'inscrip' and xtype = 'U')
DROP TABLE inscrip


CREATE TABLE inscrip (
  Inogrupo char(4)  DEFAULT NULL,
  Inocuenta char(10)  NOT NULL,
  Ifecalta date NOT NULL,
  Ihoraalta char(6)  NOT NULL,
  Inocarrera char(4)  NOT NULL,
) ;

--
-- Volcado de datos para la tabla inscrip
--

INSERT INTO inscrip (Inogrupo, Inocuenta, Ifecalta, Ihoraalta, Inocarrera) VALUES
('1158', '84254321', '1994-02-01', '1130', '32'),
('1158', '84254321', '1994-02-01', '1130', '32'),
('1157', '84321212', '1994-02-02', '1150', '32'),
('1158', '84321212', '1994-02-02', '1150', '32'),
('1157', '84254322', '1994-02-15', '1550', '38'),
('1158', '84254322', '1994-02-15', '1550', '38'),
('1157', '82323233', '1994-02-16', '1420', '40'),
('1158', '82323233', '1994-02-16', '1420', '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'materia'
--

if exists (select * from sysobjects where name = 'materia' and xtype = 'U')
DROP TABLE materia

CREATE TABLE materia (
  Mnomateria char(4)  NOT NULL,
  Mnombre varchar(42)  NOT NULL,
  Mcred smallint DEFAULT NULL,
  Mcostolab decimal(5,2) DEFAULT NULL,
  Mnocarrera char(4)  NOT NULL,
  PRIMARY KEY (Mnomateria)
) ;

--
-- Volcado de datos para la tabla materia
--

INSERT INTO materia (Mnomateria, Mnombre, Mcred, Mcostolab, Mnocarrera) VALUES
('0024', 'Circuitos Electricos', 10, '150.00', '40'),
('0028', 'Analisis Dinamico de Maquinas', 8, '100.00', '38'),
('0056', 'Estructuras Discretas', 7, '0.00', '32'),
('0076', 'Bases de Datos', 8, '100.00', '32'),
('0119', 'Estructuras de Datos', 8, '0.00', '32'),
('0130', 'Elementos de Maquinas', 8, '50.00', '38'),
('0134', 'Sistemas Digitales', 8, '50.00', '32'),
('0138', 'Dispositivos Electronicos', 10, '90.00', '40'),
('0559', 'Memorias y Perifericos', 10, '100.00', '32'),
('0561', 'Microcomputadoras', 10, '500.00', '32');

if exists (select * from sysobjects where name = 'cmateria' and xtype = 'U')
DROP TABLE cmateria

CREATE TABLE cmateria (
  Mnomateria char(4)  NOT NULL,
  Mnombre varchar(42)  NOT NULL,
  Mcred smallint DEFAULT NULL,
  Mcostolab decimal(5,2) DEFAULT NULL,
  Mfees decimal(5,2) DEFAULT NULL,
  Mnocarrera char(4)  NOT NULL,
  PRIMARY KEY (Mnomateria)
) ;--

CREATE TABLE carrera2 (
id INT,
nombre VARCHAR(8000)
)

CREATE TABLE carrera2 (
id INT,
nombre VARCHAR(8001)
)

CREATE TABLE carrera2 (
id INT,
nombre VARCHAR(max)
)

DROP TABLE carrera2

DECLARE @calificacion INT
SET @calificacion = 10
PRINT @calificacion

SELECT * FROM materia

DECLARE @v_mascaro DECIMAL, @v_masbarato DECIMAL
SELECT @v_mascaro = max(mcostolab),  @v_masbarato = min(mcostolab) FROM materia
SELECT @v_mascaro, @v_masbarato

DECLARE @prueba INT = 10
PRINT @prueba

DECLARE @costo INT
SET @costo = 100
SELECT * FROM materia
WHERE mcostolab = @costo

DECLARE @varlike CHAR(5)
SET @varlike = '%dro%'
SELECT * from estudian
WHERE enombre LIKE @varlike

DECLARE @numMaterias INT
SELECT @numMaterias = count(*) FROM materia
IF @numMaterias > 20 
	BEGIN
		PRINT 'Sí, hay más de 20 materias'
		PRINT 'Total de materias:'
		PRINT @numMaterias
	END
ELSE
	BEGIN
		PRINT 'No, hay más de 20 materias'
		PRINT 'Total de materias:'
		PRINT @numMaterias
	END

DECLARE @vcount INT = 1
WHILE @vcount <=3
	BEGIN
		PRINT @vcount
		SET @vcount = @vcount +1
	END

DECLARE @vcount INT = 1
WHILE @vcount <= 10
	BEGIN
		IF @vcount = 5 BREAK
		PRINT @vcount
		SET @vcount = @vcount +1
	END

DECLARE @vcount INT = 1
WHILE @vcount <= 10
	BEGIN
		IF @vcount = 5 
			BEGIN
				SET @vcount = @vcount + 1
				CONTINUE
			END
		PRINT @vcount
		SET @vcount = @vcount +1
	END

BEGIN TRY
	SELECT 1/0
	SELECT 1
END TRY
BEGIN CATCH
	SELECT  ERROR_NUMBER(), ERROR_SEVERITY(), ERROR_PROCEDURE(), ERROR_LINE(), ERROR_MESSAGE()
	SELECT 'Eso no se puede hacer'
END CATCH

ALTER TABLE cmateria
ADD CONSTRAINT cm_costo
CHECK (mcostolab <= 600)
INSERT INTO cmateria
VALUES ('1', '1', '1', 700, 0, '32' )

CREATE TABLE ejemplo_default
(
id INT NOT NULL PRIMARY KEY,
fecha SMALLDATETIME NOT NULL DEFAULT GETDATE()
)
INSERT INTO ejemplo_default (id)
VALUES (1)
SELECT * FROM ejemplo_default

ADD CONSTRAINT CN_fechaAlta DEFAULT GETDATE() FOR Ifecalta

CREATE PROCEDURE getMateriasComputacion
AS
SELECT * FROM materia where mnocarrera = '32'
EXECUTE getMateriasComputacion

DROP PROCEDURE getMateriasComputacion

CREATE PROCEDURE getMateria @carrera CHAR(2)
AS
SELECT * FROM materia WHERE mnocarrera = @carrera
EXEC getMateria @carrera = '32'

CREATE PROCEDURE getEstudia @nombre nvarchar(20)
AS
SELECT * FROM estudian WHERE enombre like '%' + @nombre + '%'
EXEC getEstudia @nombre = 'Bis' 

CREATE PROCEDURE getMateria @carrera char(2) = '32'
AS
SELECT * FROM materia WHERE mnocarrera = @carrera
EXEC getMateria

CREATE PROCEDURE getMateriaCreditos @carrera CHAR(2), @creditos INT
AS
SELECT * FROM materia WHERE mnocarrera = @carrera AND mcred = @creditos
EXEC getMateriaCreditos @carrera = '32', @creditos = 8

CREATE PROCEDURE getCountMateria @carrera CHAR(2), @totalMaterias INT OUT
AS
SELECT @totalMaterias = COUNT(*) FROM materia WHERE mnocarrera = @carrera
DECLARE @totMaterias2 INT
EXEC getCountMateria @carrera = '32', @totalMaterias = @totMaterias2 OUT
SELECT @totMaterias2
DECLARE @totMaterias3 INT
EXEC getCountMateria'32', @totMaterias3 OUT
SELECT @totMaterias3

SELECT mnomateria, mnombre
	INTO #temp_computacion
	FROM materia
	WHERE mnocarrera = 32
SELECT * FROM #temp_computacion

DECLARE @numero CHAR(4), @nombre VARCHAR(50), @costo DECIMAL(5,2)
DECLARE materiasComputacion CURSOR
FOR SELECT mnomateria, mnombre, mcostolab FROM materia 
WHERE mnocarrera = 32
OPEN materiasComputacion
FETCH NEXT FROM materiasComputacion
INTO @numero, @nombre, @costo
WHILE @@FETCH_STATUS = 0
BEGIN
SELECT 'La materia:' + @numero + ' - ' + 
@nombre + ' cuesta: ' + CONVERT(varchar(10), @costo)
FETCH NEXT FROM materiasComputacion
INTO @numero, @nombre, @costo
END
CLOSE materiasComputacion
DEALLOCATE materiasComputacion

INSERT INTO carrera
OUTPUT INSERTED.Cnocarrera, INSERTED.Cnombre
VALUES ('50', 'Derecho', 'A500', '75165999')

DELETE FROM carrera
OUTPUT DELETED.Cnocarrera, DELETED.Cedificio, DELETED.Cnombre
WHERE Cnocarrera = '50'

DELETE FROM carrera
OUTPUT DELETED.Cnocarrera, DELETED.Cedificio, DELETED.Cnombre
WHERE Cnocarrera = '50'

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karibel Barco
-- Create date: 04/12/2020
-- Description:	Primer Trigger
-- =============================================
CREATE TRIGGER TR_CalculateTaxes
   ON  cmateria
   AFTER INSERT, UPDATE
AS 
BEGIN
	SELECT * from INSERTED
	PRINT ('Actualización exitosa')
END
GO
INSERT INTO cmateria (mnomateria, mnombre, mnocarrera)
VALUES ('1', 'Materia de prueba', '32')
INSERT INTO cmateria (mnomateria, mnombre, mnocarrera)
SELECT mnomateria, mnombre, mnocarrera FROM materia

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karibel Barco
-- Create date: 04/12/2020
-- Description:	Primer Trigger
-- =============================================
ALTER TRIGGER TR_CalculateTaxes
   ON  cmateria
   AFTER INSERT, UPDATE
AS 
BEGIN
	UPDATE cmateria
	SET cmateria.mfees = i.mcostolab * .10 + 20
	FROM cmateria
	INNER JOIN inserted i
	ON cmateria.mnomateria = i.mnomateria
END
INSERT INTO cmateria (mnomateria, mnombre, mnocarrera)
SELECT mnomateria, mnombre, mnocarrera FROM materia

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karibel Barco
-- Create date: 09/12/2020
-- Description:	Calcular cuotas
-- =============================================
CREATE FUNCTION fn_calCuota 
( @nomateria CHAR(4) )
RETURNS DECIMAL(5,2)
AS
BEGIN
	DECLARE @cuota DECIMAL(5,2)
	SELECT @cuota = mcostolab * 0.15 FROM materia WHERE mnomateria = @nomateria
	RETURN @cuota
END
GO
SELECT dbo.fn_calCuota('0024')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karibel Barco
-- Create date: 09/12/2020
-- Description:	Crear tabla de prueba
-- =============================================
CREATE FUNCTION fn_tablaMateria() 
RETURNS TABLE 
AS
RETURN (SELECT * FROM materia)
SELECT * FROM dbo.fn_tablaMateria()

