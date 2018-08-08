#!/bin/bash
showhelp()
{
    echo "Usage: ./$0 [-h|--help] [-si|--sum] [-m|--mult] $1"
}

displaylist()
{
    while [ $# -gt 0 ]
    do
	echo $1
	shift
    done
}
#displaylist 1 2 3 4 5

sum()
{
    local s=0
    while [ $# -gt 0 ]
    do
	s=$((s + $1))
	shift
    done
    echo $s
}

#sum 1 2 3 4 5

mult()
{
    local m=1
    while [ $# -gt 0 ]
    do
	m=$((m*$1))
	shift
    done
    echo $m
}

#mult 2 3 5

flag_sum=false
flag_mult=false

showresult()
{
       
        if $flag_sum; then
	echo "$(sum 5 6 8)"
	fi
	if $flag_mult; then    
	echo "$(mult 5 6 8)"
	fi
	
}

if $sum; then
   flag_sum=true
fi

if $mult; then
   flag_mult=true
fi

showresult 
