--Aufgabe1
SELECT BERUF, to_char(round(avg(GEHALT),2),'99999.00')
FROM ANGEST
group by BERUF;
--round(...,2) - rundet auf zwei Stellen; 
--avg - Durchschnitt; 
--to_char(...,99999.00) - forced 2 Nachkommsatellen

--Aufgabe2
SELECT BERUF, count(ANGNR)
FROM ANGEST
GROUP BY BERUF
HAVING COUNT(ANGNR)=1;

--Aufgabe3
SELECT BERUF, COUNT(ANGNR)
FROM ANGEST
group by BERUF
having count(angnr) >= all(
    SELECT COUNT(ANGNR)
    from ANGEST
    GROUP by BERUF
);

SELECT BERUF, count(ANGNR)
FROM ANGEST
group by BERUF
HAVING count(angnr) = 
    (select max(COUNT(angnr))
    from ANGEST
    group by beruf);

--Aufgabe4
SELECT p.angnr, p.flugstd, a.GEHALT
from pilot p, angest a
where p.angnr = a.angnr and p.flugstd < a.GEHALT;

--Aufgabe5
select *
from pilot
where LIZENZ not in('I','II');

SELECT * 
from PILOT
where LIZENZ <>'I' and LIZENZ <>'II';
where not(lizenz = 'I' or LIZENZ = 'II')

--Aufgabe6
select sum(FLUGSTD) Stundenzahl, LIZENZ
from pilot
group by lizenz;

--Aufgabe7
select p.ANGNR, a.aname, o.angnr, b.aname, p.FLUGSTD
from pilot p, pilot o, angest a, angest b 
where p.flugstd = o.flugstd and p.angnr < o.angnr and
      p.angnr = a.angnr and o.angnr = b.angnr;

--Aufgabe8 Kapitän (Name) mit Anzahl unterschiedlicher Typen
select a.kapitaen, b.aname Name, count(distinct typ) Anzahl_Typen
from abflug a join angest b
on a.kapitaen = b.angnr
group by b.aname, a.kapitaen;
