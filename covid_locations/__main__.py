"""Entry script.
"""
import json
import argparse
import shlex

from . import ir
from .corpus import Corpus


def argparser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--data",
        help="""
        Data directory containing an unzipped CORD-19-research-challenge.zip
        corpus, which can be downloaded from https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge.
        """,
    )
    parser.add_argument(
        "--geoindex",
        help="""
        Prebuilt lucene geoindex used by the CLAVIN location and reverse-geocoding server.
        https://github.com/Novetta/CLAVIN
        """,
    )
    parser.add_argument(
        "--ner-server",
        type=shlex.split,
        help="""
        NER server binary; spaces will be split with shlex.
        """,
    )
    return parser


def main() -> None:
    """Entry point.
    """
    args = argparser().parse_args()
    corpus = Corpus(
        data_dir=args.data, geoindex=args.geoindex, ner_server=args.ner_server,
    )
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
                    "matched_text": loc.match,
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
