#!/bin/bash
#SBATCH --job-name=train_sv
#SBATCH --account=def-bourqueg
#SBATCH --output=logs/train_sv.log
#SBATCH --error=logs/train_sv.err
#SBATCH --time=24:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gpus=a100:1
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=xin.mo2@mail.mcgill.ca

CONFIG=../config/human_sv.yaml

mkdir -p logs

module load gcc arrow/17.0.0
module load cuda/12.2

cd ../src

echo "Starting supervised training"
echo "Config: $CONFIG"

/lustre06/project/6007512/HeDS/melody/Suga_Embed/.venv/bin/python run_train_sv.py \
    --cfg $CONFIG

echo "Done"
