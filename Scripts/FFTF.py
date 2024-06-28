import pandas as pd
import geopandas as gpd
import folium
import matplotlib.pyplot as plt
import shapely as spl
import collections as cl
import numpy as np

class Graph:
    def __init__(self, graph):
        self. graph = graph  # residual graph
        self. ROW = len(graph)
        # self.COL = len(gr[0])
  
    def BFS(self, s, t, parent):
        visited = [False]*(self.ROW)
        queue = []

        queue.append(s)
        visited[s] = True
 
         # Standard BFS Loop
        while queue:
 
            # Dequeue a vertex from queue and print it
            u = queue.pop(0)
 
            # Get all adjacent vertices of the dequeued vertex u
            # If a adjacent has not been visited, then mark it
            # visited and enqueue it
            for ind, val in enumerate(self.graph[u]):
                if visited[ind] == False and val > 0:
                      # If we find a connection to the sink node, 
                    # then there is no point in BFS anymore
                    # We just have to set its parent and can return true
                    queue.append(ind)
                    visited[ind] = True
                    parent[ind] = u
                    if ind == t:
                        return True
 
        # We didn't reach sink in BFS starting 
        # from source, so return false
        return False
             
     
    # Returns the maximum flow from s to t in the given graph
    def FordFulkerson(self, source, sink):
 
        # This array is filled by BFS and to store path
        parent = [-1]*(self.ROW)
 
        max_flow = 0 # There is no flow initially
 
        # Augment the flow while there is path from source to sink
        while self.BFS(source, sink, parent) :
 
            # Find minimum residual capacity of the edges along the
            # path filled by BFS. Or we can say find the maximum flow
            # through the path found.
            path_flow = float("Inf")
            s = sink
            while(s !=  source):
                path_flow = min (path_flow, self.graph[parent[s]][s])
                s = parent[s]
 
            # Add path flow to overall flow
            max_flow +=  path_flow
 
            # update residual capacities of the edges and reverse edges
            # along the path
            v = sink
            while(v !=  source):
                u = parent[v]
                self.graph[u][v] -= path_flow
                self.graph[v][u] += path_flow
                v = parent[v]
 
        return max_flow

def leerArchivos(archivo):
    dfArchivo=pd.read_csv(archivo)
    dfArchivo.info()
    #dfArchivo=dfArchivo.loc
    lineas = dfArchivo['geometry'].apply(spl.wkt.loads)
    gdfArchivo = gpd.GeoDataFrame(dfArchivo, geometry =lineas,crs="WGS84")
    return gdfArchivo

def matrix(nodos,lineas):
    rows=[0 for x in range(1103)]
    matrix=[[rows for x in range(1103)]]
    matriznp=np.array(matrix[0])
    #print(matriznp.shape)
    for indexk,k in enumerate(lineas.itertuples()):     
        
        actualid1=k[4]
        actualid2=k[5]
        potenciamax=k[6]
        #print(actualid1,actualid2,potenciamax)
        pos1=nodos.loc[nodos["OBJECTID"]==actualid1].index[0]
        pos2=nodos.loc[nodos["OBJECTID"]==actualid2].index[0]
        #print(indexk,pos1,pos2)
        
        matrix[0][pos1][pos2]=potenciamax
    return matrix[0]
       
Lineas4 = 'Dataset/Lineas4.csv'
Lineas2 = 'Dataset/Lineas2.csv'
Lineas3 = 'Dataset/Lineas3.csv'
Nodos= 'Dataset/NodosFinal.csv'

gdfLineas4=leerArchivos(Lineas4)
gdfNodos=leerArchivos(Nodos)

gdfLineas4.head()
gdfNodos.head()

matrizPeso=matrix(gdfNodos,gdfLineas4)
MatrizUsable=matrizPeso

g = Graph(MatrizUsable)
 
source = 1097; sink = 1100
  
print ("The maximum possible flow is %d " % g.FordFulkerson(source, sink))
