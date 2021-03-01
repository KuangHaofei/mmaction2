#!/usr/bin/env bash

python tools/test.py configs/recognition/tsn/tsn_r50_1x1x3_75e_ucf101_seco-k400_rgb.py \
    work_dirs/tsn_r50_1x1x3_75e_ucf101_seco-k400_rgb/best_top1_acc_epoch_29.pth \
    --eval top_k_accuracy mean_class_accuracy --out result.json