# Part 3 – Shell Script Setup

This folder contains a shell script written to process S&P 500 company data
from a public CSV URL.

The script was executed locally using the terminal, and the output was viewed
directly in the terminal itself. No CSV or output files were created.

---

## Setup Used

- Environment: Local terminal
- Shell: Bash
- Python: Python 3
- Tools: curl and Python (csv module)

---

## How the Script Was Run

The script was made executable and run from the terminal:

chmod +x extract_companies.sh
./extract_companies.sh

The default CSV URL was used, and no additional arguments were required.

---

## What Was Done

- Downloaded the CSV file using curl
- Parsed the CSV using Python
- Extracted company name, location, and founding year
- Sorted the output by founding year
- Printed the results directly to the terminal

---

## Output

The output was displayed in the terminal in the following format:

Company Name, Location, Founded Year

The results were verified directly in the terminal during execution.

---

## Notes

- Missing or invalid founding years were placed at the end of the output.
- The script was tested locally and worked as expected.
