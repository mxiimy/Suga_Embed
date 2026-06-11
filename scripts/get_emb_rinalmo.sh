# Get the embedding of the RiNALMo model

poetry run python ../preprocess/get_seq_embedding.py \
		--i ../data/raw_data.csv \
		--o ../data/raw_data_embedding_rinalmo_whole_ave.pt \
		--rinalmo \
		--rinalmo_method whole_ave \
		--format pt \
