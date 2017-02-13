# Sort files from a single directory into separate directories by year and month.
for file in *; do
	local created=$(GetFileInfo -d $file);

	local month=$(date -jf "%m/%d/%Y %H:%M:%S" $created +%m)
	local year=$(date -jf "%m/%d/%Y %H:%M:%S" $created +%Y);

	mkdir -p $year/$month;

	mv $file $year/$month/$file;
done