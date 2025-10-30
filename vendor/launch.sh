#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
cd $progdir
#cd sdlpal
chmod a+x onscripter
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir
ulimit -c unlimited
#SDL_VIDEO_FBCON_ROTATION=NONE,CW,CCW,UD
SDL_VIDEO_FBCON_ROTATION=CCW ./onscripter > a.txt 2>&1
