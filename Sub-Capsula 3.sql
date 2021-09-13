--EJERCITACIÓN SUB-CÁPSULA 3
--1)Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE persona (
 id int not null,
 nombre varchar(45) not null 
);

--2)Inserte datos siguiendo un orden no secuencial para el id.
INSERT into persona(id, nombre) 
VALUES(10, 'Pablo');

INSERT into persona(id, nombre) 
VALUES(3, 'Pedro');

INSERT into persona(id, nombre) 
VALUES(20, 'Juan');

INSERT into persona(id, nombre) 
VALUES(9, 'Maria');

INSERT into persona(id, nombre) 
VALUES(5, 'Ana');

INSERT into persona(id, nombre) 
VALUES(1, 'Julieta');

--3)Consulte los datos para visualizar el orden de registros.
SELECT * from persona;

--4)Agregue una clave primaria para el campo id.
ALTER TABLE persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (id);
	
--5)Consulte los datos para visualizar el orden de registros.
SELECT * FROM persona;

--6)Conteste a la pregunta: ¿Por qué después de agregar la clave primaria, el orden de los registros es diferente?

--Después de agregar la clave primaria el orden de los registros es diferente, porque automáticamente se crea un índice 
--clousterizado asociado, en paralelo a la creación de la primary key, dándole un orden a los registros de la tabla.