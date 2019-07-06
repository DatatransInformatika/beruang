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

brownmasksources=`cat <<EOF
node_modules/@beruang/brown/brown-mask/*.js
EOF`

brownresizemonitorsources=`cat <<EOF
node_modules/@beruang/brown/brown-resizemonitor/*.js
EOF`

mvpsources=`cat <<EOF
node_modules/@beruang/mvp/*.js
EOF`

polarsources=`cat <<EOF
node_modules/@beruang/polar/*.js
node_modules/@beruang/polar/**/*.js
EOF`

polarsimplesources=`cat <<EOF
node_modules/@beruang/polar/polar-simple/*.js
EOF`

polarbordersources=`cat <<EOF
node_modules/@beruang/polar/polar-border/*.js
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

function build-es5-brown-mask {
rm -rf build/es5/node_modules/@beruang/brown/brown-mask
mkdir -p build/es5/src/node_modules/@beruang/brown/brown-mask
polymer build --name beruang-es5-brown-mask --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${brownmasksources}
}

function build-es6-brown-mask {
rm -rf build/es6/node_modules/@beruang/brown/brown-mask
mkdir -p build/es6/src/node_modules/@beruang/brown/brown-mask
polymer build --name beruang-es6-brown-mask --js-minify \
--sources ${brownmasksources}
}

function build-brown-mask {
build-es5-brown-mask
build-es6-brown-mask
}

function build-es5-brown-resizemonitor {
rm -rf build/es5/node_modules/@beruang/brown/brown-resizemonitor
mkdir -p build/es5/src/node_modules/@beruang/brown/brown-resizemonitor
polymer build --name beruang-es5-brown-resizemonitor --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${brownresizemonitorsources}
}

function build-es6-brown-resizemonitor {
rm -rf build/es6/node_modules/@beruang/brown/brown-resizemonitor
mkdir -p build/es6/src/node_modules/@beruang/brown/brown-resizemonitor
polymer build --name beruang-es6-brown-resizemonitor --js-minify \
--sources ${brownresizemonitorsources}
}

function build-brown-resizemonitor {
build-es5-brown-resizemonitor
build-es6-brown-resizemonitor
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

function build-es5-polar-simple {
rm -rf build/es5/node_modules/@beruang/polar/polar-simple
mkdir -p build/es5/src/node_modules/@beruang/polar/polar-simple
polymer build --name beruang-es5-polar-simple --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polarsimplesources}
}

function build-es6-polar-simple {
rm -rf build/es6/node_modules/@beruang/polar/polar-simple
mkdir -p build/es6/src/node_modules/@beruang/polar-simple
polymer build --name beruang-es6-polar-simple --js-minify \
--sources ${polarsimplesources}
}

function build-polar-simple {
build-es5-polar-simple
build-es6-polar-simple
}

function build-es5-polar-border {
rm -rf build/es5/node_modules/@beruang/polar/polar-border
mkdir -p build/es5/src/node_modules/@beruang/polar/polar-border
polymer build --name beruang-es5-polar-border --js-compile --js-transform-modules-to-amd --js-minify \
--sources ${polarbordersources}
}

function build-es6-polar-border {
rm -rf build/es6/node_modules/@beruang/polar/polar-border
mkdir -p build/es6/src/node_modules/@beruang/polar-border
polymer build --name beruang-es6-polar-border --js-minify \
--sources ${polarbordersources}
}

function build-polar-border {
build-es5-polar-border
build-es6-polar-border
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
	brown-mask) build-brown-mask;;
	brown-resizemonitor) build-brown-resizemonitor;;
	mvp) build-mvp;;
	polar) build-polar;;
	polar-simple) build-polar-simple;;
	polar-border) build-polar-border;;
	theme) build-theme;;
	tool) build-tool;;
	*) build-all;;
esac
