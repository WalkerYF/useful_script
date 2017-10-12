index=0
for a in `ls -F | grep "/$"`
do
	cd $a
	temp=`git pull`
	echo "$a : $temp"
	cd ..
	if [ "$temp" == "Already up-to-date." ]; then
		temp="Already up-to-date."
	else
		temp="Updated!"
	fi
	k[index]="\t$a\t:$temp\t"
	# echo -e "${k[$index]}"
	index=$index+1
done

for a in "${!k[@]}";
do
	echo -e "${k[$a]}";
done
