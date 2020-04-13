USE Firma

--Vraag 1
SELECT V.*, (SELECT COUNT(*)
             FROM werknemers W
			 WHERE W.vesnaam = V.vesnaam) AS TOTAALWRK 
FROM vestigingen V

--Vraag 2
SELECT*FROM 

--Vraag 3
SELECT * FROM werknemers W1
WHERE salaris = (SELECT MIN(salaris) 
                 FROM werknemers W2
				 WHERE W1.vesnaam = W2.vesnaam)
ORDER BY wnaam ASC

--Vraag 4

--Vraag 5
--Vraag 6
