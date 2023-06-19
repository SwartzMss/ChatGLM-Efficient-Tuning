set CUDA_VISIBLE_DEVICES=0
python src\train_sft.py ^
    --do_eval ^
    --dataset alpaca_gpt4_en ^
    --checkpoint_dir path_to_checkpoint ^
    --output_dir path_to_eval_result ^
    --per_device_eval_batch_size 8 ^
    --max_samples 50 ^
    --predict_with_generate