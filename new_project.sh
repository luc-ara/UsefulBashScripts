#!/bin/bash

: '
create a folder, add bin, src, obj, inc and test folders, add makefile and readme
'
current="$(pwd)"
scripts="$(cd "$(dirname "$0")" && pwd)/"
cd "$current"

if [ $# -eq 0 ]
then
    echo "No names were specified"
else
    for arg in "$@"
    do
	mkdir "$arg"
	cd "$arg"
	mkdir "src"
	mkdir "obj"
	mkdir "inc"
	mkdir "bin"
	mkdir "test"
	cd test
	mkdir "src"
	mkdir "obj"
	mkdir "inc"
	mkdir "data"
	cd ..
	"$scripts"/new_makefile.sh
	touch "README.md"
    done
fi
	
