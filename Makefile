all: deps build
build:
	./node_modules/.bin/tsc --sourcemap --module commonjs ./bin/www.ts
deps:
	npm i
	typings install
clean:
	rm -rf bin/www.js
	rm -rf node_modules
	rm -rf typings
