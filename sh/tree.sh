#-------------------------
#!/bin/sh
#save as tree.sh, and chmod +x tree.sh , run it.
cd ./$1
pwd
find ./ -name "*" -o -name ".*" 2>/dev/null |sed -e 's/^\.//' |sed -n '2,$p' | while read line
do
a=`echo $line |awk -F\/ '{print NF}'`
a=$((a-2))
i=1
case $a in
0) echo $line |sed -e 's/\//|---/' ;;
*) while [ ! $i -gt $a ]; do
       line=`echo $line |sed -e 's/\/[^\/]*/|/'`
       i=$((i+1))
     done
     echo $line |sed -e 's/\//|---/' -e 's/ *//g';;
esac
done
#-------------------------