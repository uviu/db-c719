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




































