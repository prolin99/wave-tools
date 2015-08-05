#!/bin/sh

for file in *.wav
do
	sox $file --norm -b 8 ${file%.wav}-8bit.wav
	rm $file
	mv ${file%.wav}-8bit.wav $file
done
