# Sort files from a single directory into separate directories by year and month.
local total_count=$(ls -l | grep -v ^l | wc -l);
total_count=$((total_count-1))

let count=0;

for file in *; do
	let "count++";

	echo -n "\rCurrently moving: $count/$total_count";

	local created=$(GetFileInfo -d $file);

	local month=$(date -jf "%m/%d/%Y %H:%M:%S" $created +%m)
	local year=$(date -jf "%m/%d/%Y %H:%M:%S" $created +%Y);

	mkdir -p $year/$month;

	mv $file $year/$month/$file;
done

echo "\n$total_count files sorted"