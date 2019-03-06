samplename=$( basename $1 | sed -E 's/_.+//' )
reverse=$( echo $1 | sed -E 's/_R1_/_R2_/' )

