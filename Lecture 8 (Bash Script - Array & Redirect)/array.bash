#! /bin/bash

countt=$#
for((X=1;X<=$countt;X++))do
arr[$X]=$1
shift
done

count=${#arr[@]}
summ=0
max=${arr}
min=1000000

for X in ${arr[@]};do
summ=$(($summ + $X))
if [[ $X -gt $max ]] ; then
max=$X
fi
if [[ $X -lt $min ]] ; then
min=$X
fi
done

echo Array = ${arr[@]}
echo Sum is $summ
echo Max is $max
echo Min is $min
echo Average is $(($summ / $count))

for X in ${arr[@]} 
do
arrI[$count]=$X
count=$(($count - 1))
done

echo  Array = ${arrI[@]}

