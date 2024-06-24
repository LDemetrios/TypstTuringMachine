#!/bin/bash

for src in $(find . -type f -name "*.out"); do
    trimmed="${src%????}"
    echo $trimmed
    typst c turing-demo-collection.typ --input source="$src" "$trimmed.pdf"
done

# Clean files automatically generated by VSCode
rm ./turing-demo-collection.pdf
rm ./turing.pdf

typst c turing-demo-collection.typ --input source="./zero.out" "zero.png"
typst c turing-demo-collection.typ --input source="./postfixlogic.out" "postfixlogic.png"
