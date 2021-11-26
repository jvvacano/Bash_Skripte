# small script to read out the first two lines of each tsv file beginning with 2014

echo "Los geht's: Die ersten zwei Zeilen der gewünschten Dateien"
echo 
for FILE_NAME in 2014*tsv
do
  head -n 2 $FILE_NAME
done
echo 
echo "Viel Spaß damit!"
