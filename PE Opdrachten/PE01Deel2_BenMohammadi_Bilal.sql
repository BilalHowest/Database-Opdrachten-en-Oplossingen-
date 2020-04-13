--Bilal Ben Mohammadi
use oldtimer

--Vraag 1
SELECT  E.evenementnr,A.autonr, A.bouwjaar, L.lidnaam 
FROM evenementen E
JOIN deelnemers D ON E.evenementnr = D.evenementnr
JOIN autos A ON D.autonr = A.autonr
JOIN leden L ON A.lidnr = L.lidnr
WHERE E.soort = 'Show'

--Vraag 2
SELECT AVG(A.waarde) AS gemiddelde FROM evenementen E
JOIN deelnemers D ON E.evenementnr = D.evenementnr
JOIN autos A ON D.autonr = A.autonr
WHERE E.evenementnr = '201503'

--Vraag 3
SELECT L.lidnr, L.lidnaam, SUM(A.waarde) AS totaleWaarde FROM leden L 
JOIN autos A ON L.lidnr = A.lidnr
GROUP BY L.lidnr, L.lidnaam
ORDER BY L.lidnaam ASC

--Vraag 4
SELECT e.evenementnr, COUNT(DISTINCT A.autonr) AS aantalAutos , AVG(DISTINCT A.waarde) AS totaleWaarde  FROM evenementen E
JOIN deelnemers D ON E.evenementnr = D.evenementnr
JOIN autos A ON D.autonr = A.autonr
GROUP BY E.evenementnr

--Vraag 5
SELECT L.lidnr,L.lidnaam,L.soort FROM leden L
LEFT JOIN autos A ON L.lidnr = A.lidnr
WHERE A.lidnr IS NULL
ORDER BY L.lidnaam

