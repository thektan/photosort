#!/bin/bash

# Sort files from a single directory into separate directories by year
# and month.

moveFile() {
	local file=$1;

	let "count++";

	echo -en "\rCurrently moving: $count/$total_count";

	local created=$(GetFileInfo -d $file);

	local month=$(date -jf "%m/%d/%Y %H:%M:%S" "$created" +%m);
	local year=$(date -jf "%m/%d/%Y %H:%M:%S" "$created" +%Y);

	mkdir -p $year/$month;

	mv $file $year/$month/$file;
}

count=$(ls -l | grep -v ^l | wc -l);
total_count=$((count - 1))

let count=0;

read -p "Preparing to move $total_count files. Continue? [Y/n] " RESPONSE
if [[ $RESPONSE =~ ^[Yy]$ ]]
then
	for file in *; do
		moveFile $file;
	done

	echo -n "$total_count files sorted!"
fi