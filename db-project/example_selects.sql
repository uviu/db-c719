--Häufigkeit der Muskelgruppen in workouts
SELECT muskelgruppe, COUNT(*) AS anzahl_uebungen
FROM uebung
GROUP BY muskelgruppe
ORDER BY anzahl_uebungen DESC;

--Gesamte Anzahl der durchgeführten Workouts pro Nutzer
SELECT user_id, COUNT(*) AS anzahl_workouts
FROM trainiert
GROUP BY user_id
ORDER BY anzahl_workouts DESC;;

--Gesamthonorar pro Trainer
SELECT trainer_id, SUM(honorar) AS gesamthonorar
FROM bezahlt
GROUP BY trainer_id
ORDER BY gesamthonorar DESC;

--Anzahl an Cardio- und Kraft-Einheiten in Workouts
SELECT
    workout.workout_id,
    workout.beschreibung,
    COUNT(DISTINCT cardio_einheit.uebung_id) AS Cardio,
    COUNT(DISTINCT kraft_einheit.uebung_id) AS Kraft
FROM
    workout
LEFT JOIN besteht_aus ON workout.workout_id = besteht_aus.workout_id
LEFT JOIN cardio_einheit ON besteht_aus.uebung_id = cardio_einheit.uebung_id
LEFT JOIN kraft_einheit ON besteht_aus.uebung_id = kraft_einheit.uebung_id
GROUP BY
    workout.workout_id, workout.beschreibung;

