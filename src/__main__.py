"""Entry script.
"""

from . import ir
from .corpus import Corpus


def main() -> None:
    """Entry point.
    """
    corpus = Corpus()
    tagger = corpus._location_tagger
    for article, fulltext in corpus.article_text():
        print(" " * 8, article.cord_uid, ":", article.title, f"({article.url})")
        text = "\n\n".join(paragraph.text for paragraph in fulltext.paragraphs())
        toks = ir.words(text)
        locs = set(ir.locations(toks, tagger))
        print(f"{locs=}")


if __name__ == "__main__":
    main()
