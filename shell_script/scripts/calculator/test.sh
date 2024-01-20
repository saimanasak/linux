#!/bin/bash

echo -e "\nEnter your arithmetic expression: "
read aexp

#IFS=' ' read -ra exp_array <<< "$aexp"
exp_array=($aexp)

bscount=0
ofcount=0
dcount=0
mcount=0
acount=0
scount=0
ocount=0

for ((i = 0; i < ${#aexp}; i++)); do
    char="${aexp:i:1}"
    
    case "$char" in
        "(" | ")" )
            bscount=$((bscount+1))
            
            ;;
        "o" )
            if [ "${aexp:i:2}" == "of" ]; then
                ofcount=$((ofcount+1))
                ((i+1)) 
            else
                ocount=$((ocount+1))
            fi
            ;;
        "√" | "s")
            if [ "${aexp:i:4}" == "sqrt" ]; then
                ofcount=$((ofcount+1))
                ((i+1))
            elif [ "$char" == "√" ]; then
                ofcount=$((ofcount+1))
            else
                ocount=$((ocount+1))
            fi
            ;;
        "^" )
            ofcount=$((ofcount+1))
            ;;
        "/" )
            dcount=$((dcount+1))
            ;;
        "*" )
            mcount=$((mcount+1))
            ;;
        "+" )
            acount=$((acount+1))
            ;;
        "-" )
            scount=$((scount+1))
            ;;
        * )
            ocount=$((ocount+1))
            ;;
    esac
done

bcount=$((bscount/2))

echo -e "\nBraces: $bcount\nof count: $ofcount\ndivision count: $dcount\nmulti count: $mcount\nadd count: $acount\nsub count: $scount\nother: $ocount"

braces() {
    
}