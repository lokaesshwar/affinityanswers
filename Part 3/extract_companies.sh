#!/bin/bash

# Extract company name, location and founding year
# from S&P 500 CSV and sort by year

URL="${1:-https://raw.githubusercontent.com/datasets/s-and-p-500-companies/refs/heads/main/data/constituents.csv}"

curl -sL "$URL" | python - << 'EOF'
import sys, csv

reader = csv.reader(sys.stdin)

# skip header
next(reader, None)

for row in reader:
    if len(row) > 7:
        name = row[1]
        location = row[4]
        year = row[7]

        if not year.isdigit():
            year = "9999"

        print(f"{name}|{location}|{year}")
EOF
| sort -t "|" -k3n | awk -F"|" '{ print $1 ", " $2 ", " $3 }'

: '
Sample Output:

BNY Mellon, New York City, New York, 1784
State Street Corporation, Boston, Massachusetts, 1792
Colgate-Palmolive, New York City, New York, 1806
Hartford (The), Hartford, Connecticut, 1810
Bunge Global, Chesterfield, Missouri, 1818
Consolidated Edison, New York City, New York, 1823
KeyCorp, Cleveland, Ohio, 1825
Citizens Financial Group, Providence, Rhode Island, 1828
McKesson Corporation, Irving, Texas, 1833
Deere & Company, Moline, Illinois, 1837
'
