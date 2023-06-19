set CUDA_VISIBLE_DEVICES=0
python src\train_ppo.py ^
    --do_train ^
    --dataset alpaca_gpt4_zh ^
    --finetuning_type lora ^
    --checkpoint_dir path_to_sft_checkpoint ^
    --reward_model path_to_rm_checkpoint ^
    --output_dir path_to_ppo_checkpoint ^
    --per_device_train_batch_size 1 ^
    --gradient_accumulation_steps 1 ^
    --lr_scheduler_type cosine ^
    --logging_steps 10 ^
    --save_steps 1000 ^
    --learning_rate 1e-5 ^
    --num_train_epochs 1.0 ^
    --fp16