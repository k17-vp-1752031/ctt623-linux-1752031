#! /bin/bash

reversed() {
    local in=$1
    local out=$2
    local s=''
    while read line
    do
	s="${line} ${s}"
    done < $in
    for word in $s
    do
	echo ${word} >> $out
    done
    #
}

input="$1"
output="$2"
reversed input.txt output.txt


