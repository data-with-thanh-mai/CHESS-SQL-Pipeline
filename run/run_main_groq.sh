source .env
data_mode=$DATA_MODE # Options: 'dev', 'train' 
data_path=$DATA_PATH # Path to target dataset JSON

config="./run/configs/CHESS_GROQ_FREE.yaml"
num_workers=1

python3 -u ./src/main.py --data_mode ${data_mode} \
                        --data_path ${data_path} \
                        --config "$config" \
                        --num_workers ${num_workers} \
                        --pick_final_sql true
