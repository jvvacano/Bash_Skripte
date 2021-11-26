# Dies ist ein Kommentar und wird nicht interpretiert

# Small script to count lines in article-tsv-files
# shamelessly copied on 2021-11-22 from Konrad Förstner

echo "Count lines in tsv-files"
wc -l *tsv
echo "Done! Have a nice day!"

for FILE_NAME in *txt
do
  echo "$FILE_NAME is an awesome file!"
done
