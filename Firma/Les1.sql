USE Firma
--Vraag 1 
SELECT * FROM vestigingen 
WHERE plaats = 'Antwerpen' 
order by vesnaam

--Vraag 2 
SELECT DISTINCT vervangernr FROM vervangingen
WHERE wnr IN(5,8,9) 

--Vraag 3
SELECT TOP(10) WITH ties* FROM werknemers 
ORDER BY salaris DESC

--Vraag 4 
SELECT* FROM vestigingen WHERE vesnaam LIKE '%computer%'
ORDER BY vesnaam

--Vraag 5
SELECT wnaam FROM werknemers 
WHERE salaris BETWEEN 80000 AND 120000

--Vraag 6
SELECT wnr,wnaam FROM werknemers
WHERE (ftienaam = 'programmeur' or ftienaam = 'lesgever')
AND salaris > 60000 -- haakjes gebruiken om die funtie voorang te geven

--Vraag 7
SELECT vesnaam  FROM vestigingen
WHERE vesnaam LIKE '_____t%'

--Vraag 8 
SELECT wnaam FROM werknemers
WHERE afdeling is null 

--Vraag 9
SELECT wnaam FROM werknemers
WHERE afdeling is null

--Vraag 10
SELECT vesnaam,plaats FROM vestigingen
WHERE plaats != 'Brussel' AND plaats != 'Antwerpen'
ORDER BY plaats ASC, vesnaam DESC

USE MijnBoeken

--Vraag 11
SELECT * FROM boeken
WHERE categorie = 'Roman' AND prijs >= 19 
ORDER BY titel ASC 

--Vraag 12 
SELECT TOP(10) WITH TIES* FROM boeken
ORDER BY uitgiftedatum ASC

--Vraag 13
SELECT titel FROM boeken
WHERE categorie = 'Informatica' AND categorie = 'Filosofie'
ORDER BY categorie ASC, titel ASC
















