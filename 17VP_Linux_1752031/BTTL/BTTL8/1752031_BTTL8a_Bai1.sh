#! /bin/bash

length()
{
    echo $#
}

#length 1 2 3 4 5
soduong ()
{
    while [ $# -gt 0 ]
    do
	if (( $1 > 0 ))
	then
	   echo  "So nguyen duong la: $1 "
	   shift
	fi
    done
    
}

soduong 1 2 3 4 5 -1 4 6 -5
soam()
{
 while [ $# -gt 0 ]
    do
	if (( $1 < 0 ))
	then
	   echo  "So nguyen am la: $1 "
	   shift
	fi
 done
}

#soam -1 -2 -3 4 5

sochan()
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
     echo "Co $i so chan"
}

#sochan 1 2 3 4 6 8

sole()
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
     echo "Co $i so le"
}

#sole 1 3 4 5 6

songuyento()
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
    echo "So luong so nguyen to: $temp"
}


#songuyento 1 3 4 5 7

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

count 1 1 1 4 5 6 6 4


