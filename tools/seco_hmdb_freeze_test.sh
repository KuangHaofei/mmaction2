#!/usr/bin/env bash

python tools/test.py configs/recognition/tsn/seco/tsn_r50_1x1x8_50e_hmdb51_seco-k400_rgb.py \
    work_dirs/seco/tsn_r50_1x1x8_50e_hmdb51_freeze_seco-k400_rgb/best_top1_acc_epoch_29.pth \
    --eval top_k_accuracy mean_class_accuracy --out result.json