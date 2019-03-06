for f in data/*_R1_*
do
	samplename=$( basename $f | sed -E 's/_.+//' )
	reverse=$( echo $f | sed -E 's/_R1_/_R2_/' )
	forward_count=$( cat $f | wc -l )
	reverse_count=$( cat $reverse | wc -l )
	echo -e "$samplename\t$f\t$forward_count\t$reverse\t$reverse_count"
	bwa mem $database $f $reverse
done
