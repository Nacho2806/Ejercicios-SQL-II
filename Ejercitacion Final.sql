--EVALUACIÓN INTEGRAL 
--EJERCITACIÓN FINAL
--1)Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
SELECT e.legajo, COUNT(*) as 'Cantidad de cursos que realiza'
from estudiante e
 INNER JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo;

--2)Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT e.legajo, COUNT(*) as 'Cantidad de cursos que realiza'
from estudiante e
 INNER JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COunt(*) > 1;

--3)Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT e.*
from estudiante e
Where e.legajo not IN (SELECT i.ESTUDIANTE_legajo 
                       from inscripcion i);