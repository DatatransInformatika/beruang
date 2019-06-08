#!/bin/bash

extradeps=`cat <<EOF
node_modules/@webcomponents/**/*.js
node_modules/@webcomponents/**/**/*.js
node_modules/@polymer/**/*.js
node_modules/@polymer/**/**/*.js
node_modules/@polymer/**/**/**/*.js
node_modules/@beruang/theme/font/**/*
EOF`

sources=`cat <<EOF
manifest.json
node_modules/@beruang/*.js
node_modules/@beruang/tool/*.js
node_modules/@beruang/mvp/*.js
node_modules/@beruang/brown/*.js
node_modules/@beruang/polar/*.js
node_modules/@beruang/theme/*.js
node_modules/@beruang/theme/**/*.js
EOF`

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

function build-es5 {
rm -rf build/es5
mkdir build/es5
polymer build --name beruang-es5 --entrypoint index.html --js-compile --js-transform-modules-to-amd --js-minify \
--extra-dependencies ${extradeps} \
--sources ${sources} node_modules/@beruang/tool/loader/loader-es5.js
build-es5-home
build-es5-home2
build-es5-home3
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

function build-es6 {
rm -rf build/es6
mkdir build/es6
polymer build --name beruang-es6 --entrypoint index.html --js-minify \
--extra-dependencies ${extradeps} \
--sources ${sources} node_modules/@beruang/tool/loader/loader-es6.js
build-es6-home
build-es6-home2
build-es6-home3
}

function build-all {
build-es5
build-es6
}

mkdir -p build

case $1 in
	es5) build-es5;;
	es5-home) build-es5-home;;
	es5-home2) build-es5-home2;;
	es5-home3) build-es5-home3;;
	es6) build-es6;;
	es6-home) build-es6-home;;
	es6-home2) build-es6-home2;;
	es6-home3) build-es6-home3;;
	*) build-all;;
esac
