#!/usr/bin/python
import rospkg
import numpy as np
import math

from world_building import WorldBuilder



if __name__ == "__main__":
    print("Running World Generator")
    wb = WorldBuilder("small_city_world.sdf", scale=0.125)
    contents = wb.get_sources()

    wb.add(contents, wb.generate_road_contents([(-wb.brs, 0, 0),
                                                        (40, 0, 0)]))

    wb.add(contents, wb.generate_road_contents([(0, -wb.brs, 0),
                                                        (0, 40, 0)]))

    wb.add(contents, wb.generate_road_contents([(40, -wb.brs, 0),
                                                        (40, 40+wb.brs, 0)]))

    wb.add(contents, wb.generate_road_contents([(-wb.brs, 40, 0),
                                                        (40+wb.brs,   40, 0)]))

    # Create Curved Road
    angles = np.linspace(0, 3.1415, 10)
    points = []
    for a in angles:
        x = 40 + 20*math.sin(a)
        y = 20 - 20*math.cos(a)
        points.append((x, y, 0))
    wb.add(contents, wb.generate_road_contents(points))
    
    wb.add(contents, wb.generate_house_contents(1, 10, 10, 0))
    wb.add(contents, wb.generate_house_contents(1, 15, 30, 3.1415))

    wb.add(contents, wb.generate_house_contents(2, 30, 25, 1.5707)) 

    wb.add(contents, wb.generate_house_contents(3, 50, 20, 1.5707))                                              

    wb.write_dest(contents)
