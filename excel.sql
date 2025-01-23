-- Aufgabe 2 Produktstatistik

SELECT p.DESCRIP, count(*), SUM(qty) Menge, SUM (ITEMTOT) Umsatz
from ITEM i, PRODUCT p 
where i.PRODID = p.PRODID
group by i.PRODID, p.DESCRIP
order by Umsatz DESC;

-- nur für Item
SELECT PRODID, count(*), SUM(qty) Menge, SUM (ITEMTOT) Umsatz
from ITEM 
group by PRODID
order by Umsatz DESC;

--für gerundete Werte
SELECT p.DESCRIP, count(*), SUM(qty) Menge, round(SUM (ITEMTOT)) Umsatz
from ITEM i, PRODUCT p 
where i.PRODID = p.PRODID
group by i.PRODID, p.DESCRIP
order by Umsatz DESC;


--Aufgabe 3 Mitarbeiter-Statistik

SELECT d.DNAME, e.JOB, count(*) Anzahl
from emp e, dept d
where e.deptno = d.deptno
group by d.DNAME, e.JOB
order by d.DNAME;


-- Aufgabe 4 Kundenstatistik

CREATE VIEW Top5Kunden
as
SELECT Kunde, Umsatz
from
(SELECT c.NAME Kunde, sum(ITEMTOT) Umsatz
from customer c, ord o, item i
where c.custid = o.custid and o.ordid = i.ordid
group by c.custid, c.name
order by Umsatz DESC)
WHERE ROWNUM <= 5;