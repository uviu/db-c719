CREATE TABLE nutzer (
    user_id NUMERIC(9),
    PRIMARY KEY (user_id),
    name VARCHAR(99),
    email VARCHAR (100),
    groesse DECIMAL(3,2),
    gewicht DECIMAL(4,1)
)

CREATE TABLE trainer (
    trainer_id NUMERIC(5),
    PRIMARY KEY (trainer_id),
    name VARCHAR(99),
    lizenz VARCHAR (99) CHECK (lizenz IN ('Sportlizenz', 'Fitnesslizenz', 'Ernährungsberater-Lizenz')),
    spezialisierung VARCHAR (99) CHECK (spezialisierung IN ('personalTraining', 'Gruppentraining', 'Reha-Training', 'Motivationstraining', 'Ernährungsberatung')),
    biografie VARCHAR(100),
    rating DECIMAL(2,1)
)

CREATE TABLE uebung (
    uebung_id NUMERIC (5),
    PRIMARY KEY (uebung_id),
    name VARCHAR (99),
    beschreibung VARCHAR (200),
    muskelgruppe VARCHAR (9) CHECK(muskelgruppe IN ('Arme', 'Schultern', 'Bauch', 'Beine', 'Brust', 'Rücken'))
)

CREATE TABLE cardio_einheit (
    uebung_id NUMERIC (5),
    PRIMARY KEY (uebung_id),
    FOREIGN KEY (uebung_id) REFERENCES uebung ON DELETE CASCADE,
    uebungsdauer NUMERIC (2),
    pausendauer NUMERIC (2)
)

CREATE TABLE kraft_einheit (
    uebung_id NUMERIC (5),
    PRIMARY KEY (uebung_id),
    FOREIGN KEY (uebung_id) REFERENCES uebung ON DELETE CASCADE,
    wiederholungen NUMERIC (2),
    saetze NUMERIC (1)
)

CREATE TABLE workout (
    workout_id NUMERIC(4),
    PRIMARY KEY (workout_id),
    beschreibung VARCHAR (200),
    dauer NUMERIC (3),
    trainer_id NUMERIC(5),
    FOREIGN KEY (trainer_id) REFERENCES trainer ON DELETE SET NULL
)

CREATE TABLE trainingsplan (
    plan_id NUMERIC (5),
    PRIMARY KEY (plan_id),
    name VARCHAR (99),
    dauer NUMERIC (3),
    ziel VARCHAR (100),
    trainer_id NUMERIC(5),
    FOREIGN KEY (trainer_id) REFERENCES trainer ON DELETE SET  NULL
)

CREATE TABLE trainiert (
    user_id NUMERIC(9),
    FOREIGN KEY (user_id) REFERENCES nutzer ON DELETE CASCADE,
    workout_id NUMERIC(4),
    FOREIGN KEY (workout_id) REFERENCES workout ON DELETE CASCADE,
    PRIMARY KEY (user_id, workout_id)
)

CREATE TABLE bezahlt (
    user_id NUMERIC(9),
    FOREIGN KEY (user_id) REFERENCES nutzer,
    trainer_id NUMERIC(5),
    FOREIGN KEY (trainer_id) REFERENCES trainer,
    honorar DECIMAL (6,2),
    datum DATETIME
)

CREATE TABLE bewertet (
    user_id NUMERIC(9),
    FOREIGN KEY (user_id) REFERENCES nutzer,
    trainer_id NUMERIC(5),
    FOREIGN KEY (trainer_id) REFERENCES trainer ON DELETE CASCADE,
    bewertung DECIMAL (6,2),
    PRIMARY KEY (user_id, trainer_id)
)

CREATE TABLE gehoert_zu (
    plan_id NUMERIC(5),
    FOREIGN KEY (plan_id) REFERENCES trainingsplan ON DELETE CASCADE,
    workout_id NUMERIC(4),
    FOREIGN KEY (workout_id) REFERENCES workout ON DELETE CASCADE,
    PRIMARY KEY (plan_id, workout_id)
)

CREATE TABLE besteht_aus (
    uebung_id NUMERIC(5),
    FOREIGN KEY (uebung_id) REFERENCES uebung ON DELETE CASCADE,
    workout_id NUMERIC(4),
    FOREIGN KEY (workout_id) REFERENCES workout ON DELETE CASCADE,
    PRIMARY KEY (uebung_id, workout_id)
)
    
CREATE TABLE dbo.bewertungshistorie (
    historien_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id NUMERIC(9),                        
    trainer_id NUMERIC(5),                       
    alte_bewertung DECIMAL(6,2),                 
    neue_bewertung DECIMAL(6,2),                
    aenderungsdatum DATETIME                     
);
