#!/bin/bash
#SBATCH --job-name=get_emb_rinalmo
#SBATCH --account=def-bourqueg
#SBATCH --output=logs/get_emb_rinalmo.log
#SBATCH --error=logs/get_emb_rinalmo.err
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --gpus=a100:1
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=xin.mo@mail.mcgill.ca

# Get the embedding of the RiNALMo model

mkdir -p logs

module load gcc arrow/17.0.0
module load cuda/12.2

/lustre06/project/6007512/HeDS/melody/Suga_Embed/.venv/bin/python ../preprocess/get_seq_embedding.py \
		--i ../data/raw_data.csv \
		--o ../data/raw_data_embedding_rinalmo_whole_ave.pt \
		--rinalmo \
		--rinalmo_method whole_ave \
		--format pt \
		--chunk_size 250 \
