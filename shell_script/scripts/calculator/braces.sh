#!/bin/bash

echo -e "\nEnter your arithmetic expression: "
read aexp

exp_array=($aexp)

inside=false
content=""

braces() {
    for i in "${exp_array[@]}"; do
    if [ "$i" == "(" ]; then
        inside=true
        continue
    fi

    if $inside; then
        content="$content $i"
    fi

    if [ "$i" == ")" ]; then
        inside=false
        
        content="${content#*\(}"
        content="${content%\)}"

        echo "Content: $content"
        content=""
        break
    fi
done
}

for i in "${exp_array[@]}"; do
    if [ "$i" == "(" ]; then
        braces
    fi
done