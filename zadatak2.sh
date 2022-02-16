#!/bin/bash

if [[ -f number10000.tar ]]
then
for i in {10000..1}
do

tar -xvf number$i.tar
rm number$(( $i + 1 )).tar
if [[ $i == 1 ]]
then
cd number1
sh ./number.sh

done
fi

