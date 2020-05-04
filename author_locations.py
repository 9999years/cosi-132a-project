#!/usr/bin/env python3.8
"""Display author-locations.
"""

from src import Corpus


def main() -> None:
    """Display author-locations.
    """
    corpus = Corpus()
    print("Parsing article metadata...")
    articles = corpus.articles
    print("Done.")
    for article in articles:
        if not article.has_pdf_parse:
            continue
        for full_text in article.pdf_json():
            for author in full_text.metadata.authors:
                if (affiliation := author.affiliation) is not None and (
                    location := affiliation.location
                ) is not None:
                    print(article.cord_uid, "\t", author, location)
            for entry in full_text.bib_entries.values():
                for author in entry.authors:
                    if (affiliation := author.affiliation) is not None and (
                        location := affiliation.location
                    ) is not None:
                        print(article.cord_uid, "\t", author, location)


if __name__ == "__main__":
    main()
