# Baumvideo

Project to display all of Berlin's trees by year of plantation in the form of a video.

Runnig it: 

```
./download_data.sh   # Downloads the data from the tree api and puts it into ./data
./create_styles.sh   # Creates an xml file per year based on `templat.xml` and puts it into styles
./render_images.sh   # Renders the images with mapnik-render (which I needed to compile from source and include in the directory)
./add_year_labels.sh # Adds the labels that show the year to the top left
```

Creating the video:
```
ffmpeg -framerate 2 -start_number 1880 -i './rendered/%04d.png' -r 30  -vcodec mpeg4 -pix_fmt yuv420p trees.mp4
```
