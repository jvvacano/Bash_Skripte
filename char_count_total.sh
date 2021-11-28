# this script counts all the characters in any given txt or tsv file in the current directory and gives out the total for each file type
# For this, I try running two for-loops one afer the other, one for txt files, one for the tsv, and writing the total wordcount into a temporary file each. 
# ZK FDM, 2021-11-28, Johannes von Vacano <johannes.von.vacano@ulb.uni-bonn.de>

echo
echo "Let's count some characters"
echo 
for TXTFILE in "*.txt"
do
  wc -m $TXTFILE | sort -n | tail -1 > txtcount.tmp
done


for TSVFILE in "*.tsv"
do
  wc -m $TSVFILE | sort -n | tail -1 > tsvcount.tmp
done

echo "Number of characters in txt files:"
cat txtcount.tmp

echo "Number of characters in tsv files:"
cat tsvcount.tmp

# echo "Total number of characters:"
# for FILES in "*.tsv" "*.txt" 
# do
#   wc -m $FILES | tail -1
# done

echo
echo "Done! Happy?"
echo "If you like counting so much, why not check out Adam Buxton's "Counting Song" on youtube..."
