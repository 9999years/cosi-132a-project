"""Entry script.
"""
import json
import pprint

from . import ir
from .corpus import Corpus


def main() -> None:
    """Entry point.
    """
    corpus = Corpus()
    tagger = corpus.location_tagger
    window = 50
    for article, fulltext in corpus.article_text():
        record = {
            "cord_uid": article.cord_uid,
            "title": article.title,
        }
        text = "\n\n".join(paragraph.text for paragraph in fulltext.paragraphs())
        locs = tagger.classify(text)
        # record["locations"] = locs
        # pprint.pp(record)
        display_locations = []
        for loc in locs:
            display_locations.append(
                {
                    "location": loc.locationName,
                    "country": loc.country,
                    "window": "..."
                    + text[loc.start - window : loc.end + window]
                    + "...",
                    "latitude": loc.latitude,
                    "longitude": loc.longitude,
                }
            )
        record["locations"] = display_locations
        print(json.dumps(record, indent=4))


if __name__ == "__main__":
    main()
