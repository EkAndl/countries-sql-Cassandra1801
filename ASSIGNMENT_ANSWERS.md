# SQL Assignment Answers

## 0) Sorted INSERT statements
The initial INSERT statements were sorted alphabetically by `country_name` in the SQL script.

## 1) Run SQL file and create `world_countries`
Used SQLite and ran:

```bash
sqlite3 world_countries.db < world_countries_assignment.sql
```

In SQLite, `world_countries.db` is the database file that gets created.

## 2) How many countries are there?
The query used in the script was:

```sql
SELECT COUNT(*) AS total_countries_after_initial_inserts FROM countries;
```

Result after the initial sorted inserts: **8** countries.

## 3) Added a couple of missing countries
Added `Brazil` and `Canada` with full INSERT statements.

## 4) Added more columns
Added:
- `population_millions`
- `official_language`
- `currency`

## 5) Added more countries using new columns
Added `India` and `Nigeria` using the new columns (`population_millions`, `official_language`, `currency`).

## 6) Bonus: Delete `Langbortistan`
Executed:

```sql
DELETE FROM countries WHERE country_name = 'Langbortistan';
```

Final country total after all inserts/deletes: **11**.
