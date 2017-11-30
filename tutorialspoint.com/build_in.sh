# awk -f build_in.sh marks.txt


awk 'BEGIN { print "Arguments ", ARGC}' hello world
## Arguments  3


 awk 'BEGIN { print ENVIRON["USER"] }'

## frank


awk 'END {print FILENAME}' marks.txt

## marks.txt

echo -e "One Two\nOne Two Three\nOne Two Three Four" | awk 'NF > 2'

## One Two Three
## One Two Three Four


awk 'BEGIN { if (match("One Two Three", "ree")) { print RLENGTH } }'
## 3
awk 'BEGIN { if (match("One Two Three", "re")) { print RLENGTH } }'
## 2

awk 'BEGIN { if (match("One Two Three", "Thre")) { print RSTART } }'
## 9

echo -e "ca\ncat\ncatt" | awk '/cat*/'

## ca
## cat
## catt

echo -e "ca\ncat\ncatt" | awk '/cat+/'
## cat
## catt

echo -e "Call\nTall\nBall" | awk '/[^B]all/'

## Call
## Tall
