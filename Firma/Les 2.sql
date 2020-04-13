use Firma

--Vraag 1
SELECT UPPER(LEFT(wnaam,3)) + '-' + CAST(wnr AS CHAR)
FROM werknemers

--Vraag 2
SELECT * FROM werknemers
WHERE LEFT(wnaam ,1) < 'P' 
ORDER BY wnaam ASC 

--Vraag 3
SELECT distinct wnaam FROM werknemers 
WHERE DIFFERENCE(wnaam,'Luthenborgh') = 4

--Vraag 4
SELECT * FROM werknemers
WHERE count (vesnaam = 'computerland')

--Vraag 5
SELECT count (*) FROM werknemers
WHERE (vesnaam = 'Technica')
AND ftienaam = 'programmeurs'

--Vraag 6
SELECT round (AVG(DISTINCT salaris),0) FROM werknemers
WHERE ftienaam = 'analist'

--Vraag 7 
SELECT COUNT(*) FROM werknemers
WHERE (salaris = 'programmeurs')


use MijnBoeken

--Vraag 8 
Select COUNT(titel) from boeken 
where (categorie = 'roman')

--Vraag 9
SELECT * FROM boeken
WHERE year(uitgiftedatum) > year(getdate()) - '10'

--Vraag 10 
Select fnaam from auteurs
where year(getdate()) - year(gebdatum) = 0






