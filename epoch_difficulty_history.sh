# Usage:
# sh epoch_difficulty_history.sh > difficulty_history.csv
# output:
# <block height>, <difficulty>

#!/bin/bash -i

alias bcli='bitcoin-core.cli'

for i in `seq 0 2016 740000`
do
echo $i, $(bcli getblock $(bcli getblockhash $i) | jq -r '.difficulty')
done
