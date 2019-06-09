#!/bin/bash

polymersources=`cat <<EOF
node_modules/@webcomponents/**/*.js
node_modules/@webcomponents/**/**/*.js
node_modules/@polymer/**/*.js
node_modules/@polymer/**/**/*.js
node_modules/@polymer/**/**/**/*.js
EOF`

beruangsources=`cat <<EOF
node_modules/@beruang/*.js
EOF`

brownsources=`cat <<EOF
node_modules/@beruang/brown/*.js
node_modules/@beruang/brown/**/*.js
EOF`

brownlabelsources=`cat <<EOF
node_modules/@beruang/brown/brown-label/*.js
EOF`

browntabsources=`cat <<EOF
node_modules/@beruang/brown/brown-tab/*.js
EOF`

mvpsources=`cat <<EOF
node_modules/@beruang/mvp/*.js
EOF`

polarsources=`cat <<EOF
node_modules/@beruang/polar/*.js
node_modules/@beruang/polar/**/*.js
EOF`

polarcolsources=`cat <<EOF
node_modules/@beruang/polar/polar-col/*.js
EOF`

polarrowsources=`cat <<EOF
node_modules/@beruang/polar/polar-row/*.js
EOF`

themesources=`cat <<EOF
node_modules/@beruang/theme/*.js
node_modules/@beruang/theme/**/*.js
node_modules/@beruang/theme/font/**/*
EOF`

toolsources=`cat <<EOF
node_modules/@beruang/tool/*.js
node_modules/@beruang/tool/**/*.js
EOF`

sources=`cat <<EOF
manifest.json
EOF`

function build-es5-polymer {
rm -rf build/es5/node_modules
mkdir -p build/es5/src/node_modules
polymer build --name beruang-es5-polymer --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polymersources}
}

function build-es6-polymer {
rm -rf build/es6/node_modules
mkdir -p build/es6/src/node_modules
polymer build --name beruang-es6-polymer --js-minify \
--sources ${polymersources}
}

function build-polymer {
build-es5-polymer
build-es6-polymer
}

function build-es5-beruang {
rm -rf build/es5/node_modules/@beruang/*.js
mkdir -p build/es5/src/node_modules/@beruang/
polymer build --name beruang-es5-beruang --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${beruangsources}
}

function build-es6-beruang {
rm -rf build/es6/node_modules/@beruang/*.js
mkdir -p build/es6/src/node_modules/@beruang/
polymer build --name beruang-es6-beruang --js-minify \
--sources ${beruangsources}
}

function build-beruang {
build-es5-beruang
build-es6-beruang
}

function build-es5-brown {
rm -rf build/es5/node_modules/@beruang/brown
mkdir -p build/es5/src/node_modules/@beruang/brown
polymer build --name beruang-es5-brown --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${brownsources}
}

function build-es6-brown {
rm -rf build/es6/node_modules/@beruang/brown
mkdir -p build/es6/src/node_modules/@beruang/brown
polymer build --name beruang-es6-brown --js-minify \
--sources ${brownsources}
}

function build-brown {
build-es5-brown
build-es6-brown
}

function build-es5-brown-label {
rm -rf build/es5/node_modules/@beruang/brown/brown-label
mkdir -p build/es5/src/node_modules/@beruang/brown/brown-label
polymer build --name beruang-es5-brown-label --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${brownlabelsources}
}

function build-es6-brown-label {
rm -rf build/es6/node_modules/@beruang/brown/brown-label
mkdir -p build/es6/src/node_modules/@beruang/brown/brown-label
polymer build --name beruang-es6-brown-label --js-minify \
--sources ${brownlabelsources}
}

function build-brown-label {
build-es5-brown-label
build-es6-brown-label
}

function build-es5-brown-tab {
rm -rf build/es5/node_modules/@beruang/brown/brown-tab
mkdir -p build/es5/src/node_modules/@beruang/brown/brown-tab
polymer build --name beruang-es5-brown-tab --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${browntabsources}
}

function build-es6-brown-tab {
rm -rf build/es6/node_modules/@beruang/brown/brown-tab
mkdir -p build/es6/src/node_modules/@beruang/brown/brown-tab
polymer build --name beruang-es6-brown-tab --js-minify \
--sources ${browntabsources}
}

function build-brown-tab {
build-es5-brown-tab
build-es6-brown-tab
}

function build-es5-mvp {
rm -rf build/es5/node_modules/@beruang/mvp
mkdir -p build/es5/src/node_modules/@beruang/mvp
polymer build --name beruang-es5-mvp --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${mvpsources}
}

function build-es6-mvp {
rm -rf build/es6/node_modules/@beruang/mvp
mkdir -p build/es6/src/node_modules/@beruang/mvp
polymer build --name beruang-es6-mvp --js-minify \
--sources ${mvpsources}
}

function build-mvp {
build-es5-mvp
build-es6-mvp
}

function build-es5-polar {
rm -rf build/es5/node_modules/@beruang/polar
mkdir -p build/es5/src/node_modules/@beruang/polar
polymer build --name beruang-es5-polar --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polarsources}
}

function build-es6-polar {
rm -rf build/es6/node_modules/@beruang/polar
mkdir -p build/es6/src/node_modules/@beruang/polar
polymer build --name beruang-es6-polar --js-minify \
--sources ${polarsources}
}

function build-polar {
build-es5-polar
build-es6-polar
}

function build-es5-polar-col {
rm -rf build/es5/node_modules/@beruang/polar/polar-col
mkdir -p build/es5/src/node_modules/@beruang/polar/polar-col
polymer build --name beruang-es5-polar-col --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polarcolsources}
}

function build-es6-polar-col {
rm -rf build/es6/node_modules/@beruang/polar/polar-col
mkdir -p build/es6/src/node_modules/@beruang/polar-col
polymer build --name beruang-es6-polar-col --js-minify \
--sources ${polarcolsources}
}

function build-polar-col {
build-es5-polar-col
build-es6-polar-col
}

function build-es5-polar-row {
rm -rf build/es5/node_modules/@beruang/polar/polar-row
mkdir -p build/es5/src/node_modules/@beruang/polar/polar-row
polymer build --name beruang-es5-polar-row --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polarrowsources}
}

function build-es6-polar-row {
rm -rf build/es6/node_modules/@beruang/polar/polar-row
mkdir -p build/es6/src/node_modules/@beruang/polar-row
polymer build --name beruang-es6-polar-col --js-minify \
--sources ${polarrowsources}
}

function build-polar-row {
build-es5-polar-row
build-es6-polar-row
}

function build-es5-theme {
rm -rf build/es5/node_modules/@beruang/theme
mkdir -p build/es5/src/node_modules/@beruang/theme
polymer build --name beruang-es5-theme --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${themesources}
}

function build-es6-theme {
rm -rf build/es6/node_modules/@beruang/theme
mkdir -p build/es6/src/node_modules/@beruang/theme
polymer build --name beruang-es6-theme --js-minify \
--sources ${themesources}
}

function build-theme {
build-es5-theme
build-es6-theme
}

function build-es5-tool {
rm -rf build/es5/node_modules/@beruang/tool
mkdir -p build/es5/src/node_modules/@beruang/tool
polymer build --name beruang-es5-tool --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${toolsources}
}

function build-es6-tool {
rm -rf build/es6/node_modules/@beruang/tool
mkdir -p build/es6/src/node_modules/@beruang/tool
polymer build --name beruang-es6-tool --js-minify \
--sources ${toolsources}
}

function build-tool {
build-es5-tool
build-es6-tool
}

function build-all {
build-polymer
build-beruang
build-brown
build-mvp
build-polar
build-theme
build-tool
}

mkdir -p build

case $1 in
	polymer) build-polymer;;
	beruang) build-beruang;;
	brown) build-brown;;
	brown-label) build-brown-label;;
	brown-tab) build-brown-tab;;
	mvp) build-mvp;;
	polar) build-polar;;
	polar-col) build-polar-col;;
	polar-row) build-polar-row;;
	theme) build-theme;;
	tool) build-tool;;
	*) build-all;;
esac
