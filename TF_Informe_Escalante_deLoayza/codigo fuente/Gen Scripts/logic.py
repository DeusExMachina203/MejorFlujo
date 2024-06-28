import pandas as pd
import geopandas as gpd
import folium
import matplotlib.pyplot as plt
import shapely as spl

dfNodos=pd.read_csv('Data/NodosFinal.csv')
dfNodos['geometry'] = dfNodos['geometry'].apply(spl.wkt.loads)
gdfNodos = gpd.GeoDataFrame(dfNodos,geometry='geometry',crs="WGS84")
gdfNodos.info()
#gdfNodos.explore()

#iterar nodos y crear red
def mkRed(gdfNodos):
    Lineas=[]
    for i in gdfNodos.itertuples():
        for j in gdfNodos.itertuples():
            p1_Coord = i.geometry
            p2_Coord = j.geometry
            p1_Tag = i.TAG
            p2_Tag = j.TAG
            if(i.Index==362 and j.Index==359):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if(i.Index==529 and j.Index==373):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if(i.Index==184 and j.Index==190):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if(i.Index==371 and j.Index==290):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if(i.Index==163 and j.Index==948):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if (p1_Tag=='SOURCE'and p2_Tag=='CH'):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if (p1_Tag=='SB'and p2_Tag=='INK'and p1_Coord.distance(p2_Coord)<1.5 ):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if (p1_Tag=='INK'and p2_Tag=='SINK'):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))   
            if (p1_Tag == 'CH' and p2_Tag== "SB" and p1_Coord.distance(p2_Coord)<1.1 and p1_Coord!=p2_Coord):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
            if(p1_Tag=='SB'and p2_Tag=='SB'and p1_Coord.distance(p2_Coord)<0.6 and p1_Coord!=p2_Coord):
                Lineas.append(spl.geometry.LineString([p1_Coord,p2_Coord]))
    gdpLineas = gpd.GeoDataFrame(geometry=Lineas, crs="WGS84")
    return gdpLineas

gdfLineas = mkRed(gdfNodos)
gdfLineas.to_csv('Data/Lineas.csv')
gdfLineas.explore()
