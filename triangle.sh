#script to check if the given sides can be the sides of a triangle 
if [ $# -ne 0 ]
then 
echo "syntax is <$0> <sides>"
exit 1
fi 
if [ $# -eq 0 ]
then 
echo "Enter First Side: "
read x
echo "Enter Second Side: "
read y
echo "Enter Third Side: "
read z
fi
if [ `expr $x + $y` -le $z -o `expr $y + $z` -le $x -o `expr $x + $z` -le $y ]
then
echo "$x $y & $z are not a sides of Triangle"
exit 2
else
echo "They are sides of a Triangle"
fi
if [ $x -eq $y -a $y -eq $z ]
then 
echo "Equilateral Triangle"
elif [ $x -eq $y -o $y -eq $z -o $z -eq $x ]
then
echo "Isosceles Triangle"
else
x2=`expr $x \* $x`
y2=`expr $y \* $y`
z2=`expr $z \* $z`
if [ `expr $x2 + $y2` -eq $z2 ]
then
echo "Right Triangle"
else
echo "Scalene Triangle"
fi
fi

