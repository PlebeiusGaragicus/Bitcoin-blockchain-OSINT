# open-source-blockchain-analysis

Let's bring knowledge of blockchain analysis to the masses!!!

Blockchain is forever, so is that thing you did 200 blocks ago... :/

Here's my first question/experiment:

If I wanted to make a cool chart of all the nonces used, how would I do that?

Maybe this?

```bash
echo "" > nonces.csv
for i in $(seq 0 $(bitcoin-core.cli getblockcount))
do
n=$(bitcoin-core.cli getblockheader $(bitcoin-core.cli getblockhash $i) | jq -r '.nonce')
echo "$n" >> nonces.csv
echo "$i : $n"
done
```

Let's try it!

replace bitcoin-core.cli with bitcoin-cli, depending...

have fun.


# TODO - see if I can make this script faster by saving a call to `getblockhash` and retaining `nextblockhash` that is returned in the JSON

... more to come
