# this script counts all the characters in any given txt or tsv file in the current directory and gives out the total for each file type
# For this, I try running two for-loops one afer the other, one for txt files, one for the tsv, and writing the total wordcount into a temporary file each. 
# ZK FDM, 2021-11-28, Johannes von Vacano <johannes.von.vacano@ulb.uni-bonn.de>

echo
echo "Let's count some characters"
echo 
TXTCOUNT=$(for TXTFILE in "*.txt"
do
  wc -m $TXTFILE | sort -n | tail -1 
done)

#TXTCOUNT ist die Variable, in den runden Klammern steht, was in die Variable reinsoll. Mit "echo" wird ihr Inhalt weiter unten ausgespien.

TSVCOUNT=$(for TSVFILE in "*.tsv"
do
  wc -m $TSVFILE | sort -n | tail -1 
done
)

#SUM=$(($TXTCOUNT + $TSVCOUNT))
# klappt nicht! -- wenn das klappt, lag es an den doppelten Klammern. Wieso man die doppelt braucht, stand in dem Forum aber nicht dabei: https://www.log2base2.com/shell-script-examples/operator/how-to-add-two-variables-in-shell-script.html
# SUM=$(expr $TXTCOUNT + $TSVCOUNT)

#Problem: die Variablen enthalten auch Text, nämlich ZIFFER total. Ich brauch aber eigentlich nur die Zahlen. 

TOTALTXT=$(echo "$TXTCOUNT" | grep -o -E '[0-9]+')
TOTALTSV=$(echo "$TSVCOUNT" | grep -o -E '[0-9]+')

# grep zieht hier nur die Ziffern raus.

echo "Number of characters in txt files:"
echo "$TXTCOUNT"
echo
echo "Number of characters in tsv files:"
echo "$TSVCOUNT"
echo
echo "Total number of characters:"
echo "$TOTALTXT + $TOTALTSV"
expr $TOTALTXT + $TOTALTSV

echo
echo "Done! Happy?"
echo "If you like counting so much, why not check out Adam Buxton's "Counting Song" on youtube..."
