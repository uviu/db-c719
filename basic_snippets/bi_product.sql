CREATE OR REPLACE TRIGGER bi_product --before-insert
BEFORE INSERT ON product
FOR EACH ROW
WHEN (new.prodid IS NULL)
BEGIN
    :new.prodid := prodid.NEXTVAL;
END;

