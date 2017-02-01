rm styles/*

for i in {1880..2016}
do
  sed "s/YEAR/$i/" template.xml > styles/$i.xml
done
