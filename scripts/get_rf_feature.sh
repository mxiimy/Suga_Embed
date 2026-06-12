# Get features for random forest model

/lustre06/project/6007512/HeDS/melody/Suga_Embed/.venv/bin/python ../preprocess/get_seq_embedding.py \
		--i ../data/human/gencode44_utr_gene_unique_cdhit09.csv \
		--o ../data/human/\
		--feature_craft

/lustre06/project/6007512/HeDS/melody/Suga_Embed/.venv/bin/python ../preprocess/get_seq_embedding.py \
		--i ../data/mouse/gencode_vM33_utr_gene_unique_cdhit09.csv \
		--o ../data/mouse\
		--feature_craft 

