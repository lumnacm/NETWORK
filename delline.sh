if [ $# -ne 2 ]
then 
echo "syntax is <$0><string><filename>"
exit 1
fi
term=`tty`
exec<$2
while read line
do
#searching for pattern
echo $line | grep $1>/dev/null
#searching for words
echo $line | grep -w $1>/dev/null
if [ $? -ne 0 ]
then 
echo $line >>temp
fi
done
exec<$term
mv temp $2

