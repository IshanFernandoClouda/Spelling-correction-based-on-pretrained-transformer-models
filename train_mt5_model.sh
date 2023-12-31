python run_summarization.py \
    --model_name_or_path google/mt5-small \
    --do_train \
    --do_eval \
    --train_file de.train.csv \
    --validation_file de.test.csv \
    --output_dir ./models/t5-spelling-de/ \
    --overwrite_output_dir \
    --source_prefix "correct: " \
    --per_device_train_batch_size=8 \
    --per_device_eval_batch_size=16 \
    --gradient_accumulation_steps=4 \
    --predict_with_generate \
	--logging_steps="10" \
    --save_total_limit="2" \
    --learning_rate="3e-4" \
    --max_target_length=1024 \
    --max_source_length=1024
    