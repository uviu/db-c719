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

--aufgabe 18
SELECT ename, sal, comm
FROM emp
WHERE sal * 1.1 <= comm;

--aufgabe 19
SELECT ename, e.deptno, dname
FROM emp e, dept d
WHERE e.deptno = d.deptno;

--aufgabe 19 mit join-op
SELECT e.ename, d.deptno, d.dname
FROM emp e join dept d
ON e.deptno = d.deptno;

--aufgabe 19 als equi-join
SELECT ename, deptno, dname
FROM emp join dept 
USING (deptno); --nur wenn spalten gleich heißen

--aufgabe 19 natural join
SELECT *
FROM emp NATURAL JOIN dept;

--aufgabe 19 outer join
SELECT e.ename, e.deptno, d.dname
FROM emp e RIGHT JOIN dept d
ON e.deptno = d.deptno;

--aufgabe 22 join + selection
SELECT e.ename, d.dname
FROM emp e JOIN dept d
ON e.deptno = d.deptno 
WHERE ename LIKE '%A%';

--aufgabe 24
SELECT e.ename, e.sal, k.ename
FROM emp e, emp k
WHERE k.ename = 'KING' AND e.mgr = k.empno;
--als nested query 
SELECT ename, sal
FROM emp 
WHERE mgr = 
(SELECT empno FROM emp WHERE ename = 'KING');

--aufgabe 25 
SELECT p.prodid, p.descrip, c.state
FROM product p, item i, ord o, customer c
WHERE p.prodid = i.prodid and i.ordid = o.ordid and o.custid = c.custid;

--aufgabe 26
SELECT job, count(*) anz
FROM emp
GROUP BY job
ORDER BY anz desc;

--aufgabe 27
SELECT deptno, max(sal) maxSal, min(sal) minSal, max(sal) - min(sal) difSal
FROM emp
GROUP BY deptno;

--aufgabe 28
SELECT m.ename , min(e.sal) minSal
FROM emp e, emp m
WHERE e.mgr = m.empno and e.mgr IS NOT NULL
GROUP BY e.mgr, m.ename
HAVING min(e.sal) >= 1000
ORDER BY minSal desc;




































