mkdir -p styles
rm styles/* || true
#ESCAPED_PATH=$(pwd | sed "s/\//\\\/")

for i in {1880..2016}
do
  sed "s:PATH:$(pwd):g" template.xml | sed -e "s/YEAR/$i/" > styles/$i.xml
done
