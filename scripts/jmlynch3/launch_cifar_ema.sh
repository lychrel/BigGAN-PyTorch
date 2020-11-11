#!/bin/bash
CUDA_VISIBLE_DEVICES=3 python train.py \
--shuffle --batch_size 128 --parallel \
--num_G_accumulations 2 --num_D_accumulations 2 --num_epochs 100 \
--num_D_steps 4 --G_lr 2e-4 --D_lr 2e-4 \
--dataset C10 \
--G_ortho 0.0 \
--G_attn 64 --D_attn 64 \
--G_init N02 --D_init N02 \
--ema --use_ema --ema_start 1000 \
--test_every 500 --save_every 500 --num_best_copies 5 --num_save_copies 2 --seed 991 #\
#--lamb
# do below if want to yeet SN
#--G_param vanilla
#--D_param vanilla
