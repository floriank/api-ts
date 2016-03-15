all:
	npm i
	typings install
	./node_modules/.bin/tsc --sourcemap --module commonjs ./bin/www.ts
clean:
	rm -rf bin/www.js
	rm -rf node_modules
	rm -rf typings
