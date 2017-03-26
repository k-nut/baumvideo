# Baumvideo

Project to display all of Berlin's trees by year of plantation in the form of a video.

## Dependencies
The images are rendered with [nik4.pt](https://github.com/Zverik/Nik4). You can install it and its depenceny mapnik via `pip install mapnik nik4`.

In order to add the labels to the videos you need `convert` from the `imagemagick` tool.

In order to render the actual video `ffmpeg` is required.

`ffmpeg` and `imagemagick` should be available via `apt` or `brew`.


## Creating the images to be rendered

```
./download_data.sh   # Downloads the data from the tree api and puts it into ./data
./create_styles.sh   # Creates an xml file per year based on `template.xml` and puts it into ./styles
./render_images.sh   # Renders the images with nik4.py
./add_year_labels.sh # Adds the labels that show the year to the top left
```

## Rendreing the video
```
ffmpeg -framerate 2 -start_number 1880 -i './rendered/%04d.png' -r 30  -vcodec mpeg4 -pix_fmt yuv420p trees.mp4
```

This will create a file called `trees.mp4` in your current working directory.
