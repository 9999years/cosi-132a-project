# Generate the `data` dir from the `raw_data` dir.
data:
	nix-build -A data -o data

# Downloads and extracts the Stanford Named Entity Recognizer.
stanford-ner:
	nix-build -A stanford-ner -o stanford-ner

# Launch a nix-shell for development
shell:
	nix-shell

# Generate the source tar
tar:
	nix-build -A tar --out-link rebeccaturner-hw5.tar.xz

# Generate the source zip
zip:
	nix-build -A zip --out-link rebeccaturner-hw5.zip

# Generate but don't link the source tar
build:
	nix-build --no-out-link -A tar

# Lint and type-check the code (in nix-shell)
lint:
	mypy src/ test/
	pylint src/*.py
	pylint test/*.py \
		--disable=missing-module-docstring \
		--disable=missing-function-docstring
	pydocstyle --add-ignore=D200 src/*.py

# Run doctests (in nix-shell)
doctest:
	find src -name '*.py' -print0 | xargs -0 -n 1 doctestmod

# Run tests (in nix-shell)
test:
	pytest
	just doctest

# Run tests with code coverage (in nix-shell)
coverage:
	coverage run --source=. -m pytest
	coverage report -m
