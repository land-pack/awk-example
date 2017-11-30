# sh demo.sh marks.txt



awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print} END{printf "-DONE-\n"}' marks.txt
##
## Sr No	Name	Sub	Marks
## 1)  Amit    Physics  80
## 2)  Rahul   Maths    90
## 3)  Shyam   Biology  87
## 4)  Kedar   English  85
## 5)  Hari    History  89
## -DONE-


awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print $1, ",", $2 , ",", $3, ",", $4} END{printf "-DONE-\n"}' marks.txt


## Sr No	Name	Sub	Marks
## 1) , Amit , Physics , 80
## 2) , Rahul , Maths , 90
## 3) , Shyam , Biology , 87
## 4) , Kedar , English , 85
## 5) , Hari , History , 89
## -DONE-


awk -v name=Frank 'BEGIN{printf "Name = %s\n", name}'

## Name = Frank

awk '/a/ {print $0}' marks.txt

## 2)  Rahul   Maths    90
## 3)  Shyam   Biology  87
## 4)  Kedar   English  85
## 5)  Hari    History  89


awk '/a/{++cnt} END {print "Count = ", cnt}' marks.txt

## Count =  4


awk '$4 > 85' marks.txt

## 2)  Rahul   Maths    90
## 3)  Shyam   Biology  87
## 5)  Hari    History  89

awk '{print length($3), $3}' marks.txt

## 7 Physics
## 5 Maths
## 7 Biology
## 7 English
## 7 History

awk 'length($3) < 7' marks.txt

## 2)  Rahul   Maths    90
