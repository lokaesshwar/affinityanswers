import requests
from bs4 import BeautifulSoup
import argparse
import urllib.parse
import json
import sys

def scrape_mdcomputers(search_term):
    base_url = "https://mdcomputers.in/"
    search_url = f"{base_url}?route=product/search&search={urllib.parse.quote(search_term)}"

    headers = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/91.0.4472.124 Safari/537.36"
        )
    }

    try:
        response = requests.get(search_url, headers=headers)
        response.raise_for_status()
    except requests.RequestException as e:
        print(f"Error fetching search results: {e}", file=sys.stderr)
        return []

    soup = BeautifulSoup(response.content, "html.parser")

    products = []
    product_items = soup.select(".product-grid-item")

    for item in product_items:
        product = {}

        title_tag = item.select_one(".product-entities-title a")
        if title_tag:
            product["name"] = title_tag.get_text(strip=True)
            product["link"] = title_tag.get("href")

        price_tag_ins = item.select_one(".price .ins .amount")
        price_tag_regular = item.select_one(".price .amount")

        if price_tag_ins:
            product["price"] = price_tag_ins.get_text(strip=True)
        elif price_tag_regular:
            product["price"] = price_tag_regular.get_text(strip=True)
        else:
            product["price"] = "N/A"

        img_tag = item.select_one(".product-image-link img")
        if img_tag:
            product["image_url"] = img_tag.get("src")

        products.append(product)

    return products


def main():
    parser = argparse.ArgumentParser(
        description="Fetch product information from MDComputers search results."
    )
    parser.add_argument("search_term", type=str, help="Search keyword")
    args = parser.parse_args()

    results = scrape_mdcomputers(args.search_term)
    print(json.dumps(results, indent=2))


if __name__ == "__main__":
    main()


"""
Sample Output (search term: "external hard drive"):

[
  {
    "name": "Toshiba Canvio Ready 1TB Portable External Hard Drive",
    "price": "₹5,900",
    "link": "https://mdcomputers.in/product/toshiba-canvio-ready-1tb-external-hard-drive-hdtp310ak3aa",
    "image_url": "https://mdcomputers.in/...jpg"
  },
  {
    "name": "Western Digital 1TB My Passport",
    "price": "₹6,350",
    "link": "https://mdcomputers.in/product/wd-my-passport-1tb-external-hard-drive",
    "image_url": "https://mdcomputers.in/...jpg"
  }
]
"""
