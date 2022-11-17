#!/bin/bash
input="all_sents.txt"
while IFS= read -r line
do
  echo "$line"
  python synthesize.py --speaker_id "0019" --text "$line" --restore_step 80000 --mode single -p config/ESD/preprocess.yaml -m config/ESD/model.yaml -t config/ESD/train.yaml --emotion_id 3
done < "$input"

