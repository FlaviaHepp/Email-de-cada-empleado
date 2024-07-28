USE AdventureWorks2019
GO

--Se necesita enviar el recibo de sueldo correspondiente a cada empleado para lo cual se solicita el email de cada empleado


SELECT hre.BusinessEntityID, hre.NationalIDNumber AS Numero_identificacion_empleado, pea.EmailAddress AS Email
FROM HumanResources.Employee hre
INNER JOIN Person.EmailAddress pea
ON hre.BusinessEntityID = pea.BusinessEntityID
ORDER BY BusinessEntityID