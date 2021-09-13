--EJERCITACIÓN SUB-CÁPSULA 1
--1)Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.
SELECT COUNT(*)
FROM estudiante
WHERE carrera = 'Mecanica'

--2)Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.
SELECT Min(salario) AS 'Salario Minimo' 
From profesor p
where fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31'

--3)a)Cantidad de pasajeros por país
SELECT p.idpais,COUNT(*) as "Cantidad de pasajeros por pais"
From pasajero p INNER JOIN pais pa on p.idpais = pa.idpais
GROUP BY p.idpais

--b)Suma de todos los pagos realizados
SELECT SUM(monto)
FROM pago

--c)Suma de todos los pagos que realizó un pasajero.El monto debe aparecer con dos decimales.
SELECT p.idpasajero, ROUND(SUM(monto),2)
FROM pago p INNER JOIN pasajero pa on p.idpasajero = pa.idpasajero
GROUP by p.idpasajero

--d)Promedio de los pagos que realizó un pasajero
SELECT p.idpasajero, AVG(monto)
FROM pago p INNER JOIN pasajero pa on p.idpasajero = pa.idpasajero
GROUP by p.idpasajero