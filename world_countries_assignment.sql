-- 1) Create and use a database named world_countries.
-- In SQLite, the database is created when running this file against world_countries.db.

DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    country_name TEXT NOT NULL UNIQUE,
    capital_city TEXT NOT NULL,
    continent TEXT NOT NULL
);

-- 0) INSERT statements sorted alphabetically by country_name.
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Argentina', 'Buenos Aires', 'South America');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('France', 'Paris', 'Europe');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Japan', 'Tokyo', 'Asia');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Kenya', 'Nairobi', 'Africa');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Langbortistan', 'Bortograd', 'Asia');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Mexico', 'Mexico City', 'North America');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('New Zealand', 'Wellington', 'Oceania');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Spain', 'Madrid', 'Europe');

-- 2) How many countries are there?
SELECT COUNT(*) AS total_countries_after_initial_inserts FROM countries;

-- 3) Add a couple of missing countries.
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Brazil', 'Brasilia', 'South America');
INSERT INTO countries (country_name, capital_city, continent) VALUES ('Canada', 'Ottawa', 'North America');

-- 4) Add more columns.
ALTER TABLE countries ADD COLUMN population_millions REAL;
ALTER TABLE countries ADD COLUMN official_language TEXT;
ALTER TABLE countries ADD COLUMN currency TEXT;

-- 5) Add even more countries using the new columns.
INSERT INTO countries (country_name, capital_city, continent, population_millions, official_language, currency)
VALUES ('India', 'New Delhi', 'Asia', 1428.6, 'Hindi', 'Indian Rupee');

INSERT INTO countries (country_name, capital_city, continent, population_millions, official_language, currency)
VALUES ('Nigeria', 'Abuja', 'Africa', 223.8, 'English', 'Naira');

-- Also enrich existing rows with values for the new columns.
UPDATE countries
SET population_millions = 45.8,
    official_language = 'Spanish',
    currency = 'Argentine Peso'
WHERE country_name = 'Argentina';

UPDATE countries
SET population_millions = 67.8,
    official_language = 'French',
    currency = 'Euro'
WHERE country_name = 'France';

UPDATE countries
SET population_millions = 125.1,
    official_language = 'Japanese',
    currency = 'Yen'
WHERE country_name = 'Japan';

-- 6) Bonus: Delete 'Langbortistan'.
DELETE FROM countries WHERE country_name = 'Langbortistan';

-- Final check of data.
SELECT country_name, capital_city, continent, population_millions, official_language, currency
FROM countries
ORDER BY country_name;
