# Part 2 – SQL (Rfam Database)

This folder contains SQL queries executed against the public Rfam MySQL database.

The queries answer questions related to taxonomy and DNA sequence lengths.

---

## Prerequisites

- MySQL Shell (mysqlsh)

---

## Database Connection

Open MySQL Shell and connect using:

\connect rfamro@mysql-rfam-public.ebi.ac.uk:4497/Rfam

When prompted for the password, press Enter.

Switch to SQL mode:

\sql

---

## Files

- queries.sql – contains all SQL queries for Part 2
- README.md – setup and usage instructions

---

## Queries Covered

- Count of Acacia plant species
- Wheat species with the longest DNA sequence
- Paginated list of families with DNA sequence length greater than 1,000,000

---

## Notes

- All queries were tested on the public Rfam database.
- Results are included as comments inside the SQL file.
