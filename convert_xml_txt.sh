#!/bin/zsh

INPUT_FILE="food_menu.xml"
OUTPUT_FILE="food_menu.txt"

sed -e 's/<[^>]*>//g' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Converted txt file is: $OUTPUT_FILE"
 
cat $OUTPUT_FILE
