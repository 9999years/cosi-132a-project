# Information retrieval final project

Working with the [COVID-19 Open Research Dataset Challenge][CORD-19] corpus.

## Design

### Getting started

- If you're down with using flask and ginja, we can just take the starter code
  for one of the assignments and clear out anything that was
  assignment-specific so that we don't have to start from scratch.
- This way we'll have some of the controller/html stuff done for us.

### Goals

1. Get location data from documents in the corpus
    1. Be able to run IR algorithms on corpus
        1. Download corpus
        2. Read & store corpus in some format (pandas? json?)
        3. EDA - Take a look at whats in there and try to figure out how the
           hell we're gonna extract location. Also, are there any other things
           we should look at extracting? Demographic info? Idk my meds are
           wearing off, but papers will often have keyword sections which might
           be usefull.
    2. Run IR algorithms on corpus
        1. Determine what kind of approach we should take. Is there one that we
           are the most comfortable with? One that makes more sense than the
           others?
        2. Pre-processing. What kind of pre-processing needs to be done for our
           chosen approach?
        3. Run & adjust the chosen approach until we are satasfied with the
           results.

2. Display location data from the corpus
    1. Create a web page. I like flask, but I'm open to any suggestions that
       aren't ruby on rails.
    2. Create visualization
        1. Steal the javascript from this page:
           https://observablehq.com/@mbostock/world-airports-voronoi
        2. Turn locations from strings to long, lat values
        3. Edit the js to take our location data
        4. Stretch goal: make points clickable links and or make map zoomable
           (there's some more d3 code online we can 'borrow' for this)

3. Do all this again with some other attribute that isn't location

[CORD-19]: https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge
