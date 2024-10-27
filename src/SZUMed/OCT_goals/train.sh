#!/bin/bash
if [$epoch_time]
then
    EPOCH_TIME = $epoch_time
    echo '123'
else
    EPOCH_TIME = 150
#    echo '123'
fi

if [$out_dir]
then
    OUT_DIR = $out_dir
else
    OUT_DIR  = './model_out'
fi

if [$cfg]
then
    CFG = $cfg
else
    CFG = 'configs/swin_tiny_patch4_window7_224.yaml'
    echo '123'
fi

if [$data_dir]
then
    DATA_DIR = $data_dir
else
    DATA_DIR = 'datasets/disc_cup_segmentation'
fi

if [$learning_rate]
then
    LEARNING_RATE = $learning_rate
else
    LEARNING_RATE = 0.05
fi

if [$img_size]
then
    IMG_SIZE = $img_size
else
    IMG_SIZE = 224
fi

if [$batch_size]
then
    BATCH_SIZE = $batch_size
else
    BATCH_SIZE = 24
fi

echo CFG
echo "start train model"



python train.py --dataset OCT_goal \
       --cfg 'configs/swin_tiny_patch4_window7_224.yaml' \
       --root_path 'datasets/goal' \
       --max_epochs 200 \
       --output_dir './model_out/oct_goals' \
       --img_size 224 \
       --base_lr 0.05 \
       --batch_size  2





