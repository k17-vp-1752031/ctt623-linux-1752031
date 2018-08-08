#! /bin/bash

flag_sum=false
flag_display=false
flag_product=false

showhelp()
se{
    echo "Usage: ./$0 [-a|--all] [-d|--display] [[s|--sum] [-p|--product] input_file output_file"
}

lengthlist()
{
    echo $#
}

#lengthlist 1 2 3 4 5

displaylist()
{
    echo -n "So luong chu so: "
    echo $#
    while [ $# -gt 0 ]
    do
	echo $1
	shift
    done
}

#displaylist 1 2 3 3 5

sumInt()
{
    local s=0
    while [ $# -gt 0 ]
    do
	s=$((s + $1))
	shift
    done
    echo -n "Tong la: "
    echo $s
}

#sumInt 1 2 3 4 5

productInt()
{
    local m=1
    while [ $# -gt 0 ]
    do
	m=$((m*$1))
	shift
    done
    echo -n "Tich la : "
    echo $m
}

#productInt 1 2 3 4

showinfo()
{
    if $flag_sum; then
	sumInt $*
    fi
    if $flag_display; then
	displaylist $*
    fi

    if $flag_product; then
	productInt $*
}


	   

    
