--Bilal Ben Mohammadi

use oldtimer

--Vraag 1
SELECT * FROM autos
WHERE bouwjaar = '1930'
ORDER BY typenaam


--Vraag 2
SELECT *FROM leden
WHERE soort = 'JUNIOR' AND
plaats = 'Zandvoort' OR plaats = 'Hillegom'

--Vraag 3
SELECT evenementnaam,evenementdatum,locatie 
FROM evenementen
WHERE evenementnaam LIKE '%tocht' 
AND evenementdatum < '2016'

--Vraag 4
SELECT *FROM autos
SELECT *, DATEDIFF(YEAR,bouwjaar,GETDATE()) as
Leeftijd
FROM autos
WHERE lidnr >= 3 AND lidnr < 8ORDER BY waarde ASC 
--Vraag 5
SELECT autonr, typenaam, upper(LEFT(typenaam, 3)) + '/'+ 
convert(char, RIGHT(bouwjaar,2)) AS CODE  
FROM autos
WHERE passagiers = 2
ORDER BY waarde DESC


