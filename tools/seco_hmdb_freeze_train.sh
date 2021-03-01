#!/usr/bin/env bash

./tools/dist_train.sh configs/recognition/tsn/tsn_r50_1x1x8_50e_hmdb51_seco-k400_rgb.py 8 \
  --work-dir work_dirs/seco/tsn_r50_1x1x8_50e_hmdb51_freeze_seco-k400_rgb --validate --seed 0 \
  --deterministic --freeze-backbone
