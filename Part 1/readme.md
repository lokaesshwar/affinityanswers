# Part 1 – MDComputers Product Scraper

This folder contains a Python script that extracts product information from
the MDComputers website based on a given search term.

The script sends a request to the MDComputers search endpoint, parses the
resulting HTML page, and extracts product details.

---

## Script

- File: scrape_mdcomputers.py
- Input: Search term (command-line argument)
- Output: Product details printed in JSON format

---

## What the Script Does

- Accepts a search term as input
- Fetches the product search results page
- Extracts product name, price, and product URL
- Prints the results to standard output

---

## Requirements

- Python 3.x
- requests
- beautifulsoup4

---

## How to Run

(Optional) Create and activate a virtual environment:

python -m venv venv  
source venv/Scripts/activate

Install dependencies:

pip install requests beautifulsoup4

Run the script:

python scrape_mdcomputers.py "external hard drive"

---

## Notes

- A browser-style User-Agent header is used while making requests.
- The script depends on the current HTML structure of the MDComputers website.
- The script was tested locally and works as expected.
