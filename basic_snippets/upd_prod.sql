CREATE OR REPLACE PROCEDURE upd_prod
(v_prodid IN product.prodid%type,
    v_proddescrip IN product.descrip%type)
IS
BEGIN
    UPDATE product
    SET DESCRIP = v_proddescrip
    WHERE prodid = v_prodid;
    IF SQL%NOTFOUND THEN
        --RAISE_APPLICATION_ERROR(-20001, 'no product (' || v_prodid || ') found: update dropped');
        DBMS_OUTPUT.PUT_LINE('There are no ' || v_prodid || ' items in stock.');
    END IF;
    COMMIT;
END upd_prod;
