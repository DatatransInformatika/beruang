#!/bin/bash

function build-es5-home {
rm -rf build/es5/src/home
mkdir -p build/es5/src/home
polymer build --name beruang-es5-home --js-compile --js-transform-modules-to-amd --js-minify \
--sources src/home/*.js
}

function build-es5-home2 {
rm -rf build/es5/src/home2
mkdir -p build/es5/src/home2
polymer build --name beruang-es5-home2 --js-compile --js-transform-modules-to-amd --js-minify \
--sources src/home2/*.js
}

function build-es5-home3 {
rm -rf build/es5/src/home3
mkdir -p build/es5/src/home3
polymer build --name beruang-es5-home3 --js-compile --js-transform-modules-to-amd --js-minify \
--sources src/home3/*.js
}

function build-es5-app {
rm -rf build/es5/index.html build/es5/manifest.json
mkdir -p build/es5
polymer build --name beruang-es5-app --js-compile --js-transform-modules-to-amd --js-minify \
--sources index.html manifest.json
}

function build-es6-home {
rm -rf build/es6/src/home
mkdir -p build/es6/src/home
polymer build --name beruang-es6-home --js-minify \
--sources src/home/*.js
}

function build-es6-home2 {
rm -rf build/es6/src/home2
mkdir -p build/es6/src/home2
polymer build --name beruang-es6-home2 --js-minify \
--sources src/home2/*.js
}

function build-es6-home3 {
rm -rf build/es6/src/home3
mkdir -p build/es6/src/home3
polymer build --name beruang-es6-home3 --js-minify \
--sources src/home3/*.js
}

function build-es6-app {
rm -rf build/es6/index.html build/es5/manifest.json
mkdir -p build/es6
polymer build --name beruang-es6-app --js-minify \
--sources index.html manifest.json
}

function build-all {
es5-app
es6-app
}

mkdir -p build

case $1 in
	es5-home) build-es5-home;;
	es5-home2) build-es5-home2;;
	es5-home3) build-es5-home3;;
	es5-app) build-es5-app;;

	es6-home) build-es6-home;;
	es6-home2) build-es6-home2;;
	es6-home3) build-es6-home3;;
	es6-app) build-es6-app;;

	*) build-all;;
esac
