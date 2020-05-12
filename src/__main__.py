"""Entry script.
"""
import pprint

from . import ir
from .corpus import Corpus


def main() -> None:
    """Entry point.
    """
    corpus = Corpus()
    tagger = corpus._location_tagger
    i = 0
    for article, fulltext in corpus.article_text():
        print(" " * 8, article.cord_uid, ":", article.title, f"({article.url})")
        text = "\n\n".join(paragraph.text for paragraph in fulltext.paragraphs())
        locs = tagger.classify(text)
        for tok in locs:
            print(tok.text, tok.classification, tok.confidence)


if __name__ == "__main__":
    main()
