--Creación de tablas
CREATE TABLE curso (
  codigo int PRIMARY KEY not NULL,
  nombre varchar(45) NOT NULL,
  descripcion varchar(45),
  turno varchar(45) not NULL,
  cupo int NOT NULL,
  PROFESOR_id int not NULL,
  FOREIGN KEY (PROFESOR_id)
       REFERENCES profesor (id)
);

CREATE TABLE profesor(
  id int PRIMARY KEY NOT NULL,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) not NULL,
  fecha_nacimiento date not NULL,
  salario float not NULL
);

CREATE table estudiante(
  legajo int PRIMARY KEY not NULL,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) not NULL,
  fecha_nacimiento date not NULL,
  carrera varchar(45) not NULL
);

CREATE table inscripcion(
  numero int PRIMARY KEY not NULL,
  CURSO_codigo int NOT NULL,
  ESTUDIANTE_legajo INT not NULL,
  fecha_hora timestamp not NULL,
  FOREIGN KEY (CURSO_codigo)
  		REFERENCES curso(codigo),
  FOREIGN KEY (ESTUDIANTE_legajo)
       REFERENCES estudiante (legajo)
);

--Inserción de datos a las tablas creadas
INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(1,'Juan','Perez','1990-06-06',55000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(2,'Maria Emilia','Paz','1984-07-15',72000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(3,'Martin','Correa','1987-12-07',63000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(4,'Lucia','Diaz','1991-02-24',45000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(5,'Raul','Martinez','1980-10-15',85000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(6,'Mabel','Rios','1982-06-12',83000);


INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(36485,'Romina','Nieva','1999-11-26','Mecanica');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(39685,'Brenda','Medrano','2000-09-25','Sistemas');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(41258,'Ramiro','Rios','1994-12-06','Sistemas');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(43651,'Cristian','Gomez','1995-03-19','Mecanica');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(47521,'Maria','Velazquez','1998-01-02','Sistemas');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(47961,'Alexis','Reinoso','1994-12-17','Sistemas');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(48952,'Gabriel','Morales','1996-10-03','Sistemas');

INSERT INTO estudiante(legajo,nombre,apellido,fecha_nacimiento,carrera)
VALUES(51200,'Lourdes','Martinez','2001-12-13','Sistemas');


INSERT into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) 
VALUES(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',20,1);

INSERT into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) 
VALUES(102, 'Matemática Discreta','','Tarde',20,2);

INSERT into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) 
VALUES(103, 'Programacion Java','POO en Java','Noche',35,4);

INSERT into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) 
VALUES(104, 'Programacion Web','','Noche',35,5);

INSERT into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) 
VALUES(105, 'Programacion C#','.NET,Visual Studio 2019','Noche',30,6);


INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(1,101,41258,'2012-05-02 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(2,102,41258,'2012-04-02 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(3,102,47961,'2012-01-02 20:01:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(4,103,47961,'2012-04-28 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(5,101,39685,'2012-04-12 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(6,103,36485,'2012-04-28 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(7,103,43651,'2012-04-28 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(8,101,47961,'2012-04-28 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(11,101,43651,'2012-04-21 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(13,102,47521,'2012-04-03 18:45:00');

INSERT INTO inscripcion(numero,curso_codigo,estudiante_legajo,fecha_hora) 
VALUES(14,102,51200,'2012-05-02 18:45:00');