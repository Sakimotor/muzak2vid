echo "Before usage : insert an image in the current folder and name it \"image.png\".";

if  [ $# -eq 0 ]
then
	echo "Select your audio type : 0=FLAC, 1=MP3, 2=OGG, 3=WAV";
	read id;
else
	id=$1;

fi

if [ $id -eq 0 ]
then

	for i in *.flac;
		do
		j=$(echo $i | sed -e "s/\.flac//")
		echo "$j"
		ffmpeg -y -framerate 3 -loop 1  -i "image.png" -i "$i" -shortest -movflags faststart -c:v libx264 -profile:v high -bf 2 -g 5 -crf 18 -pix_fmt yuv420p -c:a aac -ac 2 -ar 48000 -b:a 320k "$j".mp4
	done

elif [ $id -eq 1 ]
then
	for i in *.mp3;
		do
		j=$(echo $i | sed -e "s/\.mp3//")
		echo "$j"
		ffmpeg -y -framerate 3 -loop 1  -i "image.png" -i "$i" -shortest -movflags faststart -c:v libx264 -profile:v high -bf 2 -g 5 -crf 18 -pix_fmt yuv420p -c:a aac -ac 2 -ar 48000 -b:a 320k "$j".mp4
	done
elif [ $id -eq 2 ]
then
	for i in *.ogg;
		do
		j=$(echo $i | sed -e "s/\.ogg//")
		echo "$j"
		ffmpeg -y -framerate 3 -loop 1  -i "image.png" -i "$i" -shortest -movflags faststart -c:v libx264 -profile:v high -bf 2 -g 5 -crf 18 -pix_fmt yuv420p -c:a aac -ac 2 -ar 48000 -b:a 320k "$j".mp4
	done
else
	for i in *.wav;
		do
		j=$(echo $i | sed -e "s/\.wav//")
		echo "$j"
		ffmpeg -y -framerate 3 -loop 1  -i "image.png" -i "$i" -shortest -movflags faststart -c:v libx264 -profile:v high -bf 2 -g 5 -crf 18 -pix_fmt yuv420p -c:a aac -ac 2 -ar 48000 -b:a 320k "$j".mp4
	done
fi