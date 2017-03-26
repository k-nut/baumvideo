mkdir -p rendered
rm rendered/* 

for i in {1880..2016}
do
  nik4.py -b 13.08 52.31 13.77 52.70 -z 11 styles/$i.xml rendered/$i.png
  echo "rendered $i"
done
