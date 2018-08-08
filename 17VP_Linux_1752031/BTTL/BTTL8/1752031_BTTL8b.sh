#! /bin/bash

length ()
{
    echo $#
}

#length 1 2 3 4 5 6

posNum ()
{
    while [ $# -gt 0 ]
    do
	if (( $1 > 0 ))
	then
	   echo  "So nguyen duong: $1 "
	   shift
	fi
    done
    
}

posNum 1 2 -1 4 5 -2
negNum ()
{
 while [ $# -gt 0 ]
    do
	if (( $1 < 0 ))
	then
	   echo  "So nguyen am: $1 "
	   shift
	fi
 done
}

#negNum 1 -1 2 -2 3 -3

evenNum ()
{
    i=0
     while [ $# -gt 0 ]
    do
	
	if (( $1%2 == 0 )) 
	then
	    
	    echo $1
	    (( i++ ))
	    
	fi
	shift
     done
     echo "So so chan: $i"
}

#evenNum 2 3 4 5 6 7

oddNum ()
{
    i=0
     while [ $# -gt 0 ]
    do
	
	if (( $1%2 != 0)) 
	then
	    
	    echo $1
	    (( i++ ))
	fi
	shift
     done
     echo "So so le: $i"
}

#oddNum 2 3 4 5 6 7

primeNum ()
{
    temp=0
    while [ $# -gt 0 ]
    do
	i=1
	if (( $1 < 2 ))
	then
	    shift
	else
	    dem=0
	    while (( $i <= $1/2 ))
	    do
		if (( $1 % $i == 0 ))
		then
		    (( dem++ ))
		    (( i++ ))
		else
		    (( i++ ))
		fi
	    done
	fi
	if (( dem < 2 ))
	then
	    echo $1
	    (( temp++ ))
	fi
	shift
    done
    echo "So so nguyen to: $temp"
}

#primeNum 1 3 4 6 7 9 11

count()
{
    for i in $*; do
	count=0
	for d in $*; do
	    if (( d==i )); then
		(( count++ ))
	    fi
	    
	done
		echo "$i xuat hien $count lan"
    done
        
}

#count 1 2 3 2 2 5 6
