# AffinityAnswers – Take Home Assignment

This repository contains solutions to the take-home assignment covering
Python scripting, SQL queries, and shell scripting.

Each part is organized into a separate folder with the relevant code and setup
details.

---

## Repository Structure

.
├── mdcomputers_scraper
│   ├── scrape_mdcomputers.py
│   └── README.md
├── sql
│   ├── queries.sql
│   └── README.md
├── shell
│   ├── extract_companies.sh
│   └── README.md
└── README.md

---

## Part 1 – Python (Web Scraping)

The `mdcomputers_scraper` folder contains a Python script that extracts product
information from the MDComputers website based on a search term.

What it does:
- Accepts a search keyword as input
- Fetches the MDComputers search results page
- Extracts product name, price, and product URL
- Prints the results in JSON format to the terminal

The script was run locally and verified using terminal output.
No files are generated as output.

---

## Part 2 – SQL (Rfam Database)

The `sql` folder contains SQL queries executed against the public Rfam MySQL
database using MySQL Shell.

Questions answered:
- Number of Acacia plant species in the taxonomy table
- Wheat species with the longest DNA sequence
- Paginated list of families with DNA sequence length greater than 1,000,000

The queries and their corresponding answers are included in `queries.sql`
as comments.
All queries were executed directly on the live database.

---

## Part 3 – Shell Script

The `shell` folder contains a shell script that processes S&P 500 company data
from a public CSV URL.

What it does:
- Downloads the CSV using curl
- Parses it using Python
- Extracts company name, location, and founding year
- Sorts the output by founding year
- Prints the results directly to the terminal

The output was viewed in the terminal during execution.
No CSV or output files were generated.

---

## Notes

- All scripts were executed and tested locally.
- Outputs are printed to standard output and can be reproduced by running
  the code.
- No virtual environments or generated files are included in the repository.

---

## Disclaimer

This repository was created for assignment and learning purposes only.
