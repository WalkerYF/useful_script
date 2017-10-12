index=0
for a in `ls -F | grep "/$"`
do
	cd $a
	temp=`git pull`
	echo "$a : $temp"
	cd ..
	# echo ${temp:0:4}
	# echo ${temp:0:6}
	# echo ${temp%:*}
	if [ "$temp" == "Already up-to-date." ]; then
		temp="Already up-to-date."
	elif [ "${temp:0:4}" == "error" ]; then
		temp="Error!"
	else 
		temp="maybe sync success"
	fi
	# k[index]="\t$a\t:$temp\t"
	k[index]=`printf "%30s : %20s" "$a" "$temp"`
	# echo -e "${k[$index]}"
	index=$index+1
done

for a in "${!k[@]}";
do
	echo -e "${k[$a]}";
done
