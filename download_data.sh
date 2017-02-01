for i in {1880..2016}
do
  echo $i
  curl "https://trees.codefor.de/api/trees/?format=json&page_size=1000000&year_of_planting=$i" -o data/$i.json;
done
