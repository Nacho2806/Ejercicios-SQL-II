--EJERCITACIÓN SUB-CÁPSULA 4

--1)Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT count(*) AS 'Cantidad de profesores que dictan más de un curso en turno Noche'
from (SELECT p.id, c.codigo
 	  from profesor p Inner JOIN curso c on p.id = c.PROFESOR_id 
	  where c.turno = 'Noche'	
      GROUP by c.codigo
	  HAVING COUNT(*) > 1);

--2)Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT e.*
from estudiante e 
where e.legajo IN (SELECT i.ESTUDIANTE_legajo
 	  			   from inscripcion i
	  			   where i.CURSO_codigo != 105);