use firma 

--Vraag 1
SELECT V.*, W.* FROM vestigingen V
JOIN werknemers W 
ON V.vesnaam = W.vesnaam
ORDER BY V.vesnaam , W.wnaam

--Vraag 2 
SELECT W.wnaam FROM werknemers W
JOIN functies F 
ON F.ftienaam = W.ftienaam
WHERE F.maxsal < W.salaris
ORDER BY W.salaris DESC

--Vraag 3
SELECT W.wnaam, V.* FROM werknemers W
JOIN functies  F
ON F.ftienaam = W.ftienaam
JOIN vestigingen V
ON  V.vesnaam = W.vesnaam
WHERE F.maxsal < W.salaris
ORDER BY W.salaris DESC

--Vraag 4
SELECT (W.salaris -F.minsal)AS berekenig*FROM werknemers W 
JOIN functies F 
ON F.ftienaam = W.ftienaam
WHERE W.salaris -F.minsal
ORDER BY berekn