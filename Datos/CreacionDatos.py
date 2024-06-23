import geopandas as gpd
import pandas as pd
from shapely import geometry
from shapely.geometry import Point

df = pd.read_csv("./subesttacionesC.csv")

points = df.apply(lambda row: Point(row.x, row.y), axis = 1)
gdf = gpd.GeoDataFrame(df, geometry = points)
gdf.crs = { 'init' : 'epsg:4326'}

map= gdf.explore(color = 'blue')
map.save('subestacionescreadas.html')
