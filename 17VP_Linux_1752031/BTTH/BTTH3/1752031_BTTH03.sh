#! /bin/bash

echo "Nhap vao duong dan thu muc: "
read dir_path
while !( test -d $dir_path )
do
    echo "Duong dan ko ton tai. Vui long nhap lai: "
    read dir_path
done

cat $dir_path
cd $dir_path
echo "Remove all this dir [y/n]?: "
read ans
if  [ $ans == "y" ] 
then
    rm -r $dir_path
else
    echo "Tiep tuc"
fi
cd ..
mkdir BTTL
mkdir BTTH
echo "Cac thu muc da duoc tao."
cd BTTL
mkdir BTTL{1..9}
echo "Success"
touch BTTL{1..9}/1752031.sh
chmod ugo+x BTTL{1..9}/1752031.sh
cd ..
k=1
while [ $k -le 9 ]
do
	for d in BTTL; do
	echo "# =============================================
# Ho va ten : Trieu Quang Minh
# MSSV : 1752031
# Ma bai tap : BTTH03
# ===========================================
#" > BTTL/BTTL$k/1752031.sh
	((k++))
	done
done
cd BTTH
mkdir BTTH{1,2,3,4,5,6,7,8,9}
echo "Hoan thanh tao thu muc."
touch BTTH{1,2,3,4,5,6,7,8,9}/1752031.sh
chmod ugo+x BTTH{1,2,3,4,5,6,7,8,9}/1752031.sh
cd ..
l=1
while [ $l -le 9 ]
do 	
	for d in BTTH; do
	echo "# ============================================
# Ho va ten : Trieu Quang Minh
# MSSV : 1752031
# Ma bai tap :   BTTH03
# ==========================================
#" > BTTH/BTTH$l/1752031.sh
	((l++))
	done
done
cd BTTH
ls BTTH[1-9]
ls -l BTTH[1-9]/1752031.sh
cd ..
cd BTTL
ls BTTL[1-9]
ls -l BTTL[1-9]/1752031.sh
