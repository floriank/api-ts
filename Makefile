all:
	./node_modules/.bin/tsc --sourcemap --module commonjs ./bin/www.ts
clean:
	rm -rf bin/www.js
