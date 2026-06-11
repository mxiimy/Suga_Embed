# Get the embedding of the RNA-FM model

poetry run python ../preprocess/get_seq_embedding.py \
		--i ../data/raw_data.csv \
		--o ../data/raw_data_embedding_rnafm_ave.pkl \
		--over_length average \
