declare -a arr
echo "How many numbers you want to enter?"
read n
echo "Enter the Array Elements"
for(( i=0 ; i<$n ; i++))
do
    read array_elements
    arr[$i]="$array_elements"
done
echo "The Array Elements are :"
echo -e "${arr[@]}"
max=${arr[0]}
min=${arr[0]}
for i in "${arr[@]}"
do
    if [[ $i -gt $max ]];
    then
        max=$i
    fi
    if [[ $i -lt $min ]];
    then
        min=$i
    fi
done
echo "Maximum element in the array is: $max"
echo "Manimum element in the array is: $min"
