
ODYSSEY_FILES= \
	index.js \
	lib/odyssey/start.js \
	lib/odyssey/story.js \
	lib/odyssey/actions/*.js \
	lib/odyssey/actions/leaflet/*.js \
	lib/odyssey/triggers/*.js \
	lib/odyssey/end.js 

dist/odyssey.js: $(ODYSSEY_FILES)
	browserify -s Odyssey index.js > $@

clean: 
	rm -rf dist/*
