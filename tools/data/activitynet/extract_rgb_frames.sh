#!/usr/bin/env bash
cd ../
python build_rawframes.py ../../../drive2/ActivityNet/videos/ ../../../drive2/ActivityNet/rawframes/ --level 1 --ext mp4 --task rgb --new-short 256
echo "Raw frames (RGB and tv-l1) Generated for train set"

cd activitynet/
