#!/bin/bash
# Simply call ./youtubeget.sh VIDEO URL
# Requirements youtube-dl

# For Ubuntu 
#	sudo apt-get install youtube-dl

# For Mac 
#	sudo port install youtube-dl

# Debugger
#set -x 

videourl=$1


# Check if Video URL is true
if [[ ${videourl}zzzzz == zzzzz ]]
then
    echo "Video URL Is Missing"
    exit 1
fi
		
		# Bootstrap title into a variable
		title="$(youtube-dl -e $1)"
		
		# Start downlading the video
		youtube-dl $1 -o "Videos/$title.mp4" 
						
		# Start the convertion to mp3
		ffmpeg -i "download.mp4" -acodec libmp3lame -ac 2 -ab 128k -vn -y "test.mp3" 
				
		#rm "Video/$title.mp4" 
			

# Close it up
exit