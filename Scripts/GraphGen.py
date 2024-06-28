
import pandas as pd
import geopandas as gpd
import folium
import shapely as spl
import random as rd

dfNodos=pd.read_csv('../Dataset/NodosFinal.csv')
dfNodos['geometry'] = dfNodos['geometry'].apply(spl.wkt.loads)
gdfNodos = gpd.GeoDataFrame(dfNodos,geometry='geometry',crs="WGS84")
gdfNodos.info()
#gdfNodos.explore()

#iterar nodos y crear red
def mkRed(gdfNodos):
    Datos=[]
    for i in gdfNodos.itertuples():
        for j in gdfNodos.itertuples():
            n=rd.randint(100,200)
            p1_Coord = i.geometry
            p2_Coord = j.geometry
            p1_Tag = i.TAG
            p2_Tag = j.TAG
            if(i.Index==362 and j.Index==359):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if(i.Index==529 and j.Index==373):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if(i.Index==184 and j.Index==190):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if(i.Index==371 and j.Index==290):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if (p1_Tag=='SOURCE'and p2_Tag=='CH'):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if (p1_Tag=='SB'and p2_Tag=='INK'and p1_Coord.distance(p2_Coord)<1.5 ):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if (p1_Tag=='INK'and p2_Tag=='SINK'):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if (p1_Tag == 'CH' and p2_Tag== "SB" and p1_Coord.distance(p2_Coord)<1.1 and p1_Coord!=p2_Coord):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
            if(p1_Tag=='SB'and p2_Tag=='SB'and p1_Coord.distance(p2_Coord)<0.6 and p1_Coord!=p2_Coord):
                Datos.append({"TAG1":i.TAG,
                            "TAG2":j.TAG,
                            "ID1":i.OBJECTID,
                            "ID2":j.OBJECTID,
                            "PotenciaMAX":n,
                            "Potencia1":i.POTENCIA_I,
                            "Potencia2":j.POTENCIA_I,
                            "x1":i.x,
                            "y1":i.y,
                            "x2":j.x,
                            "y2":j.y, 
                            "geometry":spl.geometry.Point(p1_Coord)})
    
    
    gdpLineas = gpd.GeoDataFrame( Datos, crs="WGS84")
    #print(Lineas)
    return gdpLineas

gdfLineas = mkRed(gdfNodos)
gdfLineas.to_csv('../Dataset/Lineas.csv')
#gdfLineas.explore()