#!/usr/bin/env bash

./tools/dist_train.sh configs/recognition/tsn/seco/tsn_r50_1x1x3_75e_ucf101_seco-k400_rgb.py 8 \
  --work-dir work_dirs/seco/tsn_r50_1x1x3_75e_ucf101_seco-k400_rgb --validate --seed 0 --deterministic
