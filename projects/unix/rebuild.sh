#!/bin/bash
args=("$@")

if [ ${args[0]} == "video" ]
then
	cd ../../../mupen64plus-video-glide64mk2/projects/unix &&
	make all && make install

elif [ ${args[0]} == "audio" ]
then
	cd ../../../mupen64plus-audio-sdl/projects/unix &&
	make all && make install

elif [ ${args[0]} == "input" ]
then
	cd ../../../mupen64plus-input-sdl/projects/unix &&
	make all && make install

elif [ ${args[0]} == "rsp" ]
then
	cd ../../../mupen64plus-rsp-hle/projects/unix &&
	make all && make install

elif [ ${args[0]} == "core" ]
then
	make all && make install

else
make all && make install
cd ../../../mupen64plus-audio-sdl/projects/unix &&
make all && make install
cd ../../../mupen64plus-input-sdl/projects/unix &&
make all && make install
cd ../../../mupen64plus-rsp-hle/projects/unix &&
make all && make install
cd ../../../mupen64plus-video-glide64mk2/projects/unix &&
make all && make install
fi
