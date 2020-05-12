# Information retrieval final project

Working with the [COVID-19 Open Research Dataset Challenge][CORD-19] corpus.


# Build instructions

With NixOS, the project can be built and packaged with `nix-build -A bin`.
Locations are extracted with `./result/bin/get-locations`, and visualized
with `./result/bin/visualize-locations`.

Python 3.8 is required, and dependencies include `nltk`, `flask`, `attrs`,
`cached-property`.

The NER server requires the `jackson` (de)serialization library, CLAVIN, and
a copy of the `geonames.org` location names (built into a Lucene index by
CLAVIN).

The build process for other platforms can be derived via inspection of the
`default.nix` build file.

[CORD-19]: https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge
