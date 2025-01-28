-- Beispielfälle für die Tabelle "nutzer"
INSERT INTO nutzer (user_id, name, email, groesse, gewicht) VALUES
(100000001, 'Max Mustermann', 'max.mustermann@email.com', 1.80, 75.5),
(100000002, 'Anna Schmidt', 'anna.schmidt@email.com', 1.65, 60.0),
(100000003, 'Tom Bauer', 'tom.bauer@email.com', 1.90, 85.0),
(100000004, 'Lisa Müller', 'lisa.mueller@email.com', 1.70, 65.0),
(100000005, 'Peter Schneider', 'peter.schneider@email.com', 1.75, 80.0),
(100000006, 'Sarah Wagner', 'sarah.wagner@email.com', 1.68, 58.0),
(100000007, 'Michael Becker', 'michael.becker@email.com', 1.82, 90.0),
(100000008, 'Julia Fischer', 'julia.fischer@email.com', 1.60, 55.0),
(100000009, 'Daniel Weber', 'daniel.weber@email.com', 1.78, 77.0),
(100000010, 'Laura Hoffmann', 'laura.hoffmann@email.com', 1.73, 62.0),
(100000011, 'Markus Schwarz', 'markus.schwarz@email.com', 1.85, 88.0),
(100000012, 'Nina Köhler', 'nina.kohler@email.com', 1.67, 59.0),
(100000013, 'Stefan Braun', 'stefan.braun@email.com', 1.79, 81.0),
(100000014, 'Katja Wolf', 'katja.wolf@email.com', 1.72, 63.0),
(100000015, 'Christian Zimmermann', 'christian.zimmermann@email.com', 1.83, 86.0);

-- Beispielfälle für die Tabelle "trainer" 
INSERT INTO trainer (trainer_id, name, lizenz, spezialisierung, biografie, rating) VALUES
(10001, 'John Doe', 'Sportlizenz', 'personalTraining', 'Experte in Personal Training', 4.5),
(10002, 'Jane Smith', 'Fitnesslizenz', 'Gruppentraining', 'Spezialistin für Gruppentraining', 4.8),
(10003, 'Mike Johnson', 'Ernährungsberater-Lizenz', 'Ernährungsberatung', 'Ernährungsberater und Coach', 4.7),
(10004, 'Emily Davis', 'Sportlizenz', 'Reha-Training', 'Reha-Spezialistin', 4.6),
(10005, 'Chris Brown', 'Fitnesslizenz', 'Motivationstraining', 'Motivationstrainer', 4.9),
(10006, 'Laura Wilson', 'Ernährungsberater-Lizenz', 'Ernährungsberatung', 'Ernährungsexpertin', 4.8),
(10007, 'David Martinez', 'Sportlizenz', 'personalTraining', 'Personal Trainer', 4.7),
(10008, 'Sophia Anderson', 'Fitnesslizenz', 'Gruppentraining', 'Gruppentrainerin', 4.6),
(10009, 'James Taylor', 'Ernährungsberater-Lizenz', 'Ernährungsberatung', 'Ernährungscoach', 4.5),
(10010, 'Olivia Thomas', 'Sportlizenz', 'Reha-Training', 'Reha-Trainerin', 4.8),
(10011, 'Robert Garcia', 'Fitnesslizenz', 'Motivationstraining', 'Motivationstrainer', 4.7),
(10012, 'Emma Hernandez', 'Ernährungsberater-Lizenz', 'Ernährungsberatung', 'Ernährungsexpertin', 4.9),
(10013, 'Michael Lopez', 'Sportlizenz', 'personalTraining', 'Personal Trainer', 4.6),
(10014, 'Charlotte Lee', 'Fitnesslizenz', 'Gruppentraining', 'Gruppentrainerin', 4.8),
(10015, 'William Clark', 'Ernährungsberater-Lizenz', 'Ernährungsberatung', 'Ernährungscoach', 4.7);


-- Beispielfälle für die Tabelle "uebung"
INSERT INTO uebung (uebung_id, name, beschreibung, muskelgruppe) VALUES
(201, 'Bankdrücken', 'Kraftübung für die Brustmuskulatur', 'Brust'),
(202, 'Kniebeugen', 'Übung für die Beinmuskulatur', 'Beine'),
(203, 'Rudern', 'Übung für den Rücken', 'Rücken'),
(204, 'Laufen', 'Cardio-Übung zur Verbesserung der Ausdauer', 'Beine'),
(205, 'Liegestütze', 'Ganzkörperübung', 'Brust'),
(206, 'Klimmzüge', 'Übung für den Rücken und Arme', 'Rücken'),
(207, 'Crunches', 'Bauchmuskelübung', 'Bauch'),
(208, 'Plank', 'Core-Übung', 'Bauch'),
(209, 'Schulterdrücken', 'Übung für die Schultern', 'Schultern'),
(210, 'Bizeps-Curls', 'Übung für die Arme', 'Arme'),
(211, 'Trizeps-Dips', 'Übung für die Arme', 'Arme'),
(212, 'Beinpresse', 'Übung für die Beine', 'Beine'),
(213, 'Seitheben', 'Übung für die Schultern', 'Schultern'),
(214, 'Russian Twists', 'Bauchmuskelübung', 'Bauch'),
(215, 'Burpees', 'Ganzkörperübung', 'Beine');

-- Beispielfälle für die Tabelle "cardio_einheit"
INSERT INTO cardio_einheit (uebung_id, uebungsdauer, pausendauer) VALUES
(204, 30, 5),
(215, 20, 3),
(203, 25, 4),
(208, 20, 3),
(210, 15, 2);

-- Beispielfälle für die Tabelle "kraft_einheit"
INSERT INTO kraft_einheit (uebung_id, wiederholungen, saetze) VALUES
(201, 12, 4),
(202, 15, 3),
(205, 20, 4),
(206, 10, 5),
(209, 12, 4);

-- Beispielfälle für die Tabelle "workout"
INSERT INTO workout (workout_id, beschreibung, dauer, trainer_id) VALUES
(1001, 'Krafttraining für den Oberkörper', 60, 10001),
(1002, 'Cardio-Training für Ausdauer', 45, 10002),
(1003, 'Full-Body Workout', 75, 10003),
(1004, 'Core Training für den Bauch', 40, 10004),
(1005, 'HIIT für schnelle Fettverbrennung', 30, 10005),
(1006, 'Schultertraining für die Muskeln', 50, 10006),
(1007, 'Beintraining für mehr Kraft', 60, 10007),
(1008, 'Arme & Rücken Workout', 45, 10008),
(1009, 'Bauchtraining für eine starke Mitte', 40, 10009),
(1010, 'Ganzkörpertraining für maximale Fitness', 60, 10010),
(1011, 'Kombination von Kraft & Ausdauer', 55, 10011),
(1012, 'Intensives Cardio-Training', 30, 10012);

-- Beispielfälle für die Tabelle "trainingsplan"
INSERT INTO trainingsplan (plan_id, name, dauer, ziel, trainer_id) VALUES
(3001, 'Muskelaufbau Plan', 12, 'Muskelaufbau und Stärke', 10001),
(3002, 'Ausdauersteigerung', 8, 'Verbesserung der Ausdauer', 10002),
(3003, 'Ganzkörper-Training', 10, 'Stärkung des gesamten Körpers', 10003),
(3004, 'Core-Training für den Bauch', 6, 'Bauchmuskeln aufbauen', 10004),
(3005, 'Fettverbrennung & HIIT', 8, 'Reduktion von Körperfett', 10005),
(3006, 'Schulter- und Arm-Training', 10, 'Stärkung von Schultern und Armen', 10006),
(3007, 'Beinmuskelaufbau', 12, 'Kraft in den Beinen erhöhen', 10007),
(3008, 'Kombinationsworkout', 9, 'Ausdauer und Kraft kombinieren', 10008),
(3009, 'Bauchmuskeln stärken', 8, 'Perfekte Bauchmuskeln', 10009),
(3010, 'Ganzkörper-Fitness', 12, 'Maximale Fitness für den Körper', 10010),
(3011, 'Kombination von Cardio & Kraft', 10, 'Fettabbau und Muskelaufbau', 10011),
(3012, 'Schnelles Ausdauertraining', 6, 'Ausdauer schnell verbessern', 10012);

-- Beispielfälle für die Tabelle "trainiert"
INSERT INTO trainiert (user_id, workout_id) VALUES
(100000001, 1001),
(100000002, 1002),
(100000003, 1003),
(100000004, 1004),
(100000005, 1005),
(100000006, 1006),
(100000007, 1007),
(100000008, 1008),
(100000009, 1009),
(100000010, 1010),
(100000011, 1011),
(100000012, 1012);

-- Beispielfälle für die Tabelle "bezahlt"
INSERT INTO bezahlt (user_id, trainer_id, honorar, datum) VALUES
(100000001, 10001, 50.00, '2025-01-01'),
(100000002, 10002, 60.00, '2025-01-02'),
(100000003, 10003, 40.00, '2025-01-03'),
(100000004, 10004, 55.00, '2025-01-04'),
(100000005, 10005, 65.00, '2025-01-05'),
(100000006, 10006, 50.00, '2025-01-06'),
(100000007, 10007, 45.00, '2025-01-07'),
(100000008, 10008, 60.00, '2025-01-08'),
(100000009, 10009, 70.00, '2025-01-09'),
(100000010, 10010, 55.00, '2025-01-10'),
(100000011, 10011, 50.00, '2025-01-11'),
(100000012, 10012, 60.00, '2025-01-12');

-- Beispielfälle für die Tabelle "bewertet"
INSERT INTO bewertet (user_id, trainer_id, bewertung) VALUES
(100000001, 10001, 4.5),
(100000002, 10002, 4.8),
(100000003, 10003, 4.7),
(100000004, 10004, 4.6),
(100000005, 10005, 4.9),
(100000006, 10006, 4.8),
(100000007, 10007, 4.7),
(100000008, 10008, 4.6),
(100000009, 10009, 4.5),
(100000010, 10010, 4.8),
(100000011, 10011, 4.7),
(100000012, 10012, 4.9);

-- Beispielfälle für die Tabelle "gehoert_zu"
INSERT INTO gehoert_zu (plan_id, workout_id) VALUES
(3001, 1001),
(3002, 1002),
(3003, 1003),
(3004, 1004),
(3005, 1005),
(3006, 1006),
(3007, 1007),
(3008, 1008),
(3009, 1009),
(3010, 1010),
(3011, 1011),
(3012, 1012);

-- Beispielfälle für die Tabelle "besteht_aus"
INSERT INTO besteht_aus (uebung_id, workout_id) VALUES
(201, 1001),
(202, 1002),
(203, 1003),
(204, 1004),
(205, 1005),
(206, 1006),
(207, 1007),
(208, 1008),
(209, 1009),
(210, 1010),
(211, 1011),
(212, 1012);
