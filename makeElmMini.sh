#!/bin/sh

compileElm() {
	elm --only-js --output-directory=. $1
}

compileElm public/Website/ColorScheme.elm
compileElm public/Website/Docs.elm
compileElm public/Website/Tiles.elm
compileElm public/Website/Skeleton.elm

cat ../Elm/dist/data/elm-runtime.js \
    public/Website/ColorScheme.js \
    public/Website/Docs.js \
    public/Website/Tiles.js \
    public/Website/Skeleton.js \
    > resources/elm-mini.js
echo "Wrote resources/elm-mini.js"
