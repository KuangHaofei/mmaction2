#!/usr/bin/env bash
python build_rawframes.py ~/drive2/ActivityNet/videos/ ~/drive2/ActivityNet/rawframes/ --level 1 --ext mp4 --task rgb --new-short 256
python build_rawframes.py ~/drive2/ActivityNet/videos/ ~/drive2/ActivityNet/rawframes/ --level 1 --ext webm --task rgb --new-short 256
echo "Raw frames (RGB) Generated for train set"
