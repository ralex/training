#!/bin/bash

usage() {
	echo "USAGE: $0 <x> <y>\n
Will addition x + y"
}

if [ $# -lt 2 ]; then
	usage >&2
    exit 1
fi

echo $1+$2 | bc
