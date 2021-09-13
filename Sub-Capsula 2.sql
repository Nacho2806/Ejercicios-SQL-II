--EJERCITACIÓN SUB-CÁPSULA 2
--1)Nombre, apellido y cursos que realiza cada estudiante
SELECT e.nombre, e.apellido, c.nombre as 'Curso que realiza'
from estudiante e 
  INNER JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo 
  INNER JOIN curso c on i.CURSO_codigo = c.codigo;

--2)Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT e.nombre, e.apellido, c.nombre as 'Curso que realiza'
from estudiante e 
  INNER JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo 
  INNER JOIN curso c on i.CURSO_codigo = c.codigo
ORDER by c.nombre;

--3)Nombre, apellido y cursos que dicta cada profesor
SELECT p.nombre,p.apellido,c.nombre as 'Curso que dicta'
from profesor p 
 INNER JOIN curso c on p.id = c.PROFESOR_id;

--4)Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT p.nombre,p.apellido,c.nombre as 'Curso que dicta'
from profesor p 
 INNER JOIN curso c on p.id = c.PROFESOR_id
ORDER BY c.nombre;

--5)Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT c.*, COUNT(*), (c.cupo - COUNT(*)) AS 'Cupo disponible'
from curso c
 INNER JOIN inscripcion i on c.codigo = i.CURSO_codigo
GROUP by i.CURSO_codigo; 

--6)Cursos cuyo cupo disponible sea menor a 10
SELECT c.codigo,c.nombre,c.cupo, COUNT(*),
	CASE 
      WHEN (c.cupo - COUNT(*)) < 10 THEN (c.cupo - COUNT(*))
      ELSE 'El cupo disponible es mayor a 10'
    END 'Cupo disponible'
from curso c
 INNER JOIN inscripcion i on c.codigo = i.CURSO_codigo
GROUP by i.CURSO_codigo;