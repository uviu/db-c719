CREATE OR REPLACE FUNCTION annual_comp
(v_sal emp.sal%TYPE,
 v_comm emp.comm%TYPE)
RETURN NUMBER
IS
BEGIN
    RETURN (12 * nvl(v_sal,0) + nvl(v_comm,0));
END annual_comp;