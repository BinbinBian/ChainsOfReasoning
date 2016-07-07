#!/bin/bash
host=`hostname`
if [[ $host == ip* ]]; then
	experiment_dir="/home/ubuntu/LSTM-KBC-New/"
	output_dir="/home/ubuntu/expts/"	
	data_dir="/home/ubuntu/"
else
	experiment_dir="/home/rajarshi/LSTM-KBC-New/"		
	output_dir="/iesl/local/rajarshi/expts/"
	data_dir="/iesl/local/rajarshi"
fi
experiment_file=$experiment_dir/0.txt
output_dir=$output_dir/lse
data_dir=$data_dir/data_full_max_length_5_only_relation/combined_train_list
gpu_id=3
numEntityTypes=7
includeEntityTypes=0
includeEntity=0
numEpoch=20
numFeatureTemplates=10
rnnHidSize=250
relationEmbeddingDim=250
entityTypeEmbeddingDim=100
entityEmbeddingDim=50
relationVocabSize=51390
entityVocabSize=1542690
entityTypeVocabSize=2218
topK=2 #0 is max; 1 is top K , 2 is LogSumExp
K=5
regularize=0
learningRate=5e-5
learningRateDecay=0.0167 #(1/60)
l2=1e-3
rnnType='rnn' #rnn or lstm as of now
epsilon=1e-8 #epsilon for adam
gradClipNorm=5
gradientStepCounter=100000 #to print loss after gradient updates
saveFrequency=1
batchSize=32
useGradClip=1 # 0 == L2 regularization
package_path='/home/rajarshi/EMNLP/LSTM-KBC/model/?.lua'
useAdam=1
paramInit=0.1
evaluationFrequency=5
createExptDir=1 #make it 0 if you dont want to create a directory and only print stuff
useReLU=1
rnnInitialization=1
numLayers=1
useDropout=0
dropout=0.3