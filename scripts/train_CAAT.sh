export MODEL_NAME="model/stable-diffusion"
export OUTPUT_DIR="outputs/1972"
export INSTANCE_DIR="data/1972"

accelerate launch CAAT.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --instance_prompt="a photo of a person" \
  --resolution=512 \
  --learning_rate=1e-5 \
  --lr_warmup_steps=0 \
  --max_train_steps=250 \
  --hflip \
  --mixed_precision bf16  \
  --alpha=5e-3  \
  --eps=0.05
