rows=10
min_val=1
max_val=999
i=0
file_name="inputFile"

###############################################################
cat /dev/null > $file_name
while [ $rows -gt 0 ]
do
                rand=$(($min_val + $RANDOM % $max_val))
        echo "$i,$rand" >> $file_name
        ((i=i+1))
        ((rows=rows-1))
done
cp $file_name /csvserver/inputdata
