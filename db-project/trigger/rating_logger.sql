CREATE TRIGGER trg_log_bewertung_aenderung
ON bewertet
AFTER UPDATE
AS
BEGIN
    DECLARE @user_id NUMERIC(9);
    DECLARE @trainer_id NUMERIC(5);
    DECLARE @alte_bewertung DECIMAL(6,2);
    DECLARE @neue_bewertung DECIMAL(6,2);

    SELECT 
        @user_id = user_id,
        @trainer_id = trainer_id,
        @alte_bewertung = bewertung
    FROM DELETED;

    SELECT @neue_bewertung = bewertung
    FROM INSERTED;

    IF @alte_bewertung <> @neue_bewertung
    BEGIN
        INSERT INTO dbo.bewertungshistorie (user_id, trainer_id, alte_bewertung, neue_bewertung, aenderungsdatum)
        VALUES (@user_id, @trainer_id, @alte_bewertung, @neue_bewertung, GETDATE());
    END
END;
