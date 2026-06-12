#!/bin/bash
#SBATCH --job-name=train_cl
#SBATCH --account=rrg-bourqueg-ad
#SBATCH --output=logs/train_cl.log
#SBATCH --error=logs/train_cl.err
#SBATCH --time=24:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gpus=a100:1
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=xin.mo2@mail.mcgill.ca

CONFIG=../config/human_cl.yaml
SEED=0

mkdir -p logs

module load gcc arrow/17.0.0
module load cuda/12.2

cd ../src

echo "Starting contrastive learning training"
echo "Config: $CONFIG | Seed: $SEED"

/lustre06/project/6007512/HeDS/melody/Suga_Embed/.venv/bin/python run_train_cl.py \
    --cfg $CONFIG \
    --seed $SEED

echo "Done"
