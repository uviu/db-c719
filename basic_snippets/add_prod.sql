CREATE OR REPLACE PROCEDURE add_prod
(v_prodid IN product.prodid%type,
    v_proddescrip IN product.descrip%type)
IS
BEGIN
    INSERT INTO product (prodid, descrip)
    VALUES (v_prodid, v_proddescrip);
    COMMIT;
END add_prod;
