#! /bin/bash

lengthlist()
{
    echo "So luong chu so la: $#"
}


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

getEvenNumbers()
{
    echo  "So chan: "
    while [ $# -gt 0 ]
    do
	
	if (( $1%2 == 0)) 
	then
	    
	    echo "$1"
	fi
	shift
    done
    
}

getOddNumbers()
{
  echo "So le: "
  while [ $# -gt 0 ]
    do
	
	if (( $1%2 != 0)) 
	then
	    
	    echo  "$1"
	fi
	shift
    done
}



getMax()
{
    max=-999999999999
    for i in $*; do
	if ((i>max)); then
	    ((max=i))
	fi
    done
    echo "Max la: $max"
}


getMin()
{
    min=9999999999
    for i in $*; do
	if ((i<min)); then
	    ((min=i))
	fi
    done
    echo "Min la: $min"
}



input="$1"
output="$2"

showInfos ()
{
    displaylist $*
    getEvenNumbers $*
    getOddNumbers $*
    getMax $*
    getMin $*
}
readfile ()
{
    if test -e $1; then
    exec 3>$2
    while read line; do
	showInfos $line >&3
    done <"$1"
    exec 3>&-
    else
	echo "File khong ton tai"
    exit 1
    fi 
}

process ()
{
    local input="$1"
    local output="$2"
    readfile $input $output
}

process $input $output



