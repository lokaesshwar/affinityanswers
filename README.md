# AffinityAnswers – Take-Home Assignment

This repository contains my solutions to the AffinityAnswers Take-Home Assignment, covering Python scripting, SQL queries, and shell scripting.  
Each part is organized into a separate directory with clear structure and documentation.

---

## Repository Structure

```text
.
├── part 1 web scraping
│   ├── scrape_mdcomputers.py
│   └── README.md
├── part 2 SQL
│   ├── queries.sql
│   └── README.md
├── part 3 Shell
│   ├── extract_companies.sh
│   └── README.md
└── README.md
```




---

## Part 1 – Python (Web Scraping)

**Directory:** `part 1`

This module contains a Python script that extracts product information from the MDComputers website based on a user-provided search keyword.

### Features
- Accepts a search keyword as input  
- Fetches the corresponding search results page  
- Extracts product name, price, and product URL  
- Prints the results in JSON format to standard output  

The script was executed and tested locally.  
No output files are generated.

---

## Part 2 – SQL (Rfam Database)

**Directory:** `part 2`

This module contains SQL queries executed against the public Rfam MySQL database using MySQL Shell.

### Queries Covered
- Count of *Acacia* plant species from the taxonomy table  
- Identification of the wheat species with the longest DNA sequence  
- Paginated list of Rfam families with DNA sequence lengths greater than 1,000,000  

All queries and their corresponding results are included as comments in `queries.sql`.  
The queries were executed directly on the live database and optimized to comply with public database execution limits.

---

## Part 3 – Shell Scripting

**Directory:** `part 3`

This module includes a shell script that processes S&P 500 company data from a publicly available CSV source.

### Features
- Downloads the CSV file using `curl`  
- Parses the data using Python  
- Extracts company name, headquarters location, and founding year  
- Sorts the output by founding year  
- Prints the results to standard output  

The script was executed and verified locally.  
No output or intermediate files are generated.

---

## Execution Notes

- All scripts were executed and tested locally  
- Outputs are printed to standard output and can be reproduced by rerunning the scripts  
- No virtual environments, dependency directories, or generated files are included in the repository  

---


