#! /bin/bash

echo "Nhap vao duong dan thu muc: "
read dir_path
if test -d $dir_path
then
    echo "Duong dan ko ton tai. Vui long nhap lai: "
    read dir_path
fi
cd $dir_path
echo "Remove all this dir [y/n]?: "
read ans
if [$ans = "y" ]
then
    rm -f *
else
    exit
fi
