
dataSplitFile=resource/woz3/data_split/Boo_ResDataSplitRand0925.json

l=1

lr=0.005

model_path=./sclstm.pt

log=./sclstm.log

res=./sclstm.res

python3 run_woz3.py --data_split=$dataSplitFile --mode=test --model_path=$model_path --n_layer=$l --beam_size=10 > $res
