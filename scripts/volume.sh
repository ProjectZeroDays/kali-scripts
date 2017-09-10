#!/bin/bash
#chmod +x volume.sh
#./volume.sh 100
#./volume.sh 0
#be sure you went through steps to enable sound first as Kali ships with it disabled
if [ "$1" != "" ]; then
  volume=$1
else
  #Choose if default is 0% or 100%
  defaultvolume=0
  #defaultvolume=100

  read -e -i $defaultvolume -p 'Please Enter Volume 0-100: ' volume
fi
amixer sset Master $volume'%' on
xset b off
