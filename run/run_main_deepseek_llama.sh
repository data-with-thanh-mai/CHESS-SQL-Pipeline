source .env
data_mode=$DATA_MODE # Options: 'dev', 'train' 
data_path=$DATA_PATH # Path to target dataset JSON

# Choose between IR_CG_UT or IR_SS_CG
config="./run/configs/CHESS_IR_CG_UT_DEEPSEEK_LLAMA.yaml"
# config="./run/configs/CHESS_IR_SS_CG_DEEPSEEK_LLAMA.yaml"

num_workers=1 # Number of parallel workers

python3 -u ./src/main.py --data_mode ${data_mode} \
                        --data_path ${data_path} \
                        --config "$config" \
                        --num_workers ${num_workers} \
                        --pick_final_sql true
