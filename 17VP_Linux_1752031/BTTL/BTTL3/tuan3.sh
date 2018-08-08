# #! /bin/bash
# dir="/home/mint/tuan4/file.txt"
# file="${dir##*/}"
# file1="${file%%.*}"
# echo ${file1/file/file1}

plus() #x y
{
    local x="$1" y="$2"
    expr "$x" + "$y"
}
plus 1 2

nhan () #x y
{
    local x="$1" y="$2"
    expr "$x" '*' "$y"
}
nhan 2 3

pow () #x y
{
    local x="$1" y="$2"
    plus $(nhan "$x" "$x") $(nhan "$y" "$y")
}
x=3 ; y=4 ; z=$(pow "$x" "$y")
echo $z
