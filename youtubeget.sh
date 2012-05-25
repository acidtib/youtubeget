#!/bin/bash

videourl=$1

# Check if Video URL is true
if [[ ${videourl}zzzzz == zzzzz ]]
then
    echo "Video URL Is Missing"
    exit 1
fi

# If Video URl is true then download
	cd Video
		
		title="$(youtube-dl -e $1)"
		youtube-dl $1 -o "$title.mp4"
		
		cd ..
	

# Close it up
exit