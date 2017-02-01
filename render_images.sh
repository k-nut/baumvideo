cd rendered
rm * 
cd ../mapnik

for i in {1880..2016}
do
  ./utils/mapnik-render/mapnik-render ../styles/$i.xml ../rendered/$i.png
done
