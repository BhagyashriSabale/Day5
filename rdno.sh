RANDOM=$$
for i in 'seq 1'
do 
echo $(( $RANDOM %10 )); 
done

