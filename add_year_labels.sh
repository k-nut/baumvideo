
for i in {1880..2016}
do
  convert -pointsize 20 -draw "text 30,50 \"${i}\" " rendered/$i.png rendered/$i.png
done
