#!/usr/bin/env python

import os

import mapnik

filepath = os.path.dirname(os.path.abspath(__file__)) 

with open("template.xml") as template_file:
    template = template_file.read()

for year in range(1880, 2017):
    m = mapnik.Map(1800, 1200)
    instance = template.replace("YEAR", str(year)).replace("PATH", filepath)
    mapnik.load_map_from_string(m, instance)
    m.zoom_all() 
    mapnik.render_to_file(m, "rendered/{}.png".format(year))
    print("Rendered {}".format(year))
    
