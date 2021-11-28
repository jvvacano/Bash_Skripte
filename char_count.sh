# this script counts all the characters in any given txt or tsv file in the current directory
# ZK FDM, 2021-11-28, Johannes von Vacano <johannes.von.vacano@ulb.uni-bonn.de>

echo "Let's count some characters"
echo 
for FILENAME in "*.txt" "*.tsv"
do
  wc -m $FILENAME
done
echo
echo "Done! Happy?"
echo "If you like counting so much, why not check out Adam Buxton's "Counting Song" on youtube..."
