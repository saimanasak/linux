#!/bin/bash

echo -e "\nEnter your arithematic expression: "
read -r aexp

exp_array=($aexp)

bscount=0
ofcount=0
dcount=0
mcount=0
acount=0
scount=0
ocount=0

#for count in bscount ofcount dcount mcount acount scount ocount; do
#    declare "$count=0"
echo "$aexp"
for element in "${exp_array[@]}";
do
    if [ "$element" == "(" ] || [ "$element" == ")" ]; then
        bscount=$((bscount+1))
    elif [ "$element" == "of" ]; then
        ofcount=$((ofcount+1))
    elif [ "$element" == "/" ]; then
        dcount=$((dcount+1))
    elif [ "$element" == "*" ]; then
        mcount=$((mcount+1))
    elif [ "$element" == "+" ]; then
        acount=$((acount+1))
    elif [ "$element" == "-" ]; then
        scount=$((scount+1))
    else 
        ocount=$((ocount+1))
    fi
done

bcount=$((bscount/2))

echo -e "\nBraces: $bcount\nof count: $ofcount\ndivision count: $dcount\nmulti count: $mcount\nadd count: $acount\nsub count: $scount\nother: $ocount"