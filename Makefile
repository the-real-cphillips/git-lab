##MKDocs Targets			Description
##-----------------------------------------------------------

##venv 		Create Virtualenv named "gh-pages"
venv: 
	@echo "[docs] Setting up VirtualEnv"
	@python3 -m venv gh-pages

##deps 		Install Dependencies into gh-pages Virtualenv
deps: venv
	@echo "[docs] Installing Deps"
	@( \
        source gh-pages/bin/activate; \
        python3 -m pip install -q -r mkdocs-requirements.txt; \
    )


##build 		Builds docs
build: 
	@echo "[docs] Building..."
	@find . -type f \( \
		-iname \.pages \
		-o -iname \*.pdf \
		-o -iname \*.pem \
		-o -iname \*.png \
		-o -iname \*.md \
		-o -iname \*.yml \
		\) \
		-not -path "./mkdocs.yml" \
		-not -path "./docs/*" \
		-not -path "./gh-pages/*" \
		-not -path "./env/*" \
		-not -path ".README.md" \
		-exec rsync -q -av --relative "{}" docs/ \;
	@echo "[docs] Ready to be Serve..."

##refresh		While editing, Refreshes content in docs/ directory
refresh: build


##run 		Active the virtualenv and run MKDocs to serve the pages
run: venv deps build
	@( \
        source gh-pages/bin/activate; \
		echo "[docs] Serving on localhost:8000..."; \
        mkdocs serve; \
    )

##full 		Cleans, Creates, Installs, Runs...
full: deps run

# If you need to clear out all edits for files tracked in `docs/`
# Then use this.
##clean-docs	Cleans all the docs, use if having an issue with tracked files in `docs/`
clean-docs:
	@echo "[docs] Cleaning Directory"
	@rm -rf docs/ && /usr/bin/git checkout docs/

##clean-venv 	Cleans the Virtualenv
clean-venv:
	@echo "[docs] Cleaning Virtualenv"
	@rm -rf gh-pages/

##clean-all	Cleans the Virtualenv and Docs
clean-all: clean-docs clean-venv

.PHONY=help
help: Makefile
	@sed -n 's/^##//p' $<
