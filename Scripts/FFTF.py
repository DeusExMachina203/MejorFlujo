import pandas as pd
import geopandas as gpd
import folium
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
 
        NodosNV=[]
        
        flujos=[0 for x in range(1103)]
        for i in range(1103):
            potrequerida=gdfNodos.iloc[i]["POTENCIA_I"]
            tag=gdfNodos.iloc[i]["TAG"]
            #print(potrequerida,tag)
            for j in range(1103):
                flujos[i]+=self.graph[j][i]
            if flujos[i]<potrequerida and tag != "CH":
                print("Subestacion",i,"No cumple con la demanda de potencia")
                NodosNV.append(i)
        if len(NodosNV)==0:
            print("Todas las estaciones se encuentran operando dentro de los parametros")
        return flujos,max_flow,NodosNV

def leerArchivos(archivo):
    dfArchivo=pd.read_csv(archivo)
    #dfArchivo.info()
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
       
Lineas4 = '../Dataset/Lineas4.csv'
Lineas = '../Dataset/Lineas.csv'
Lineas2 = '../Dataset/Lineas2.csv'
Lineas3 = '../Dataset/Lineas3.csv'
Nodos= '../Dataset/NodosFinal.csv'

gdfLineas=leerArchivos(Lineas)
gdfNodos=leerArchivos(Nodos)

#gdfLineas4.head()
#gdfNodos.head()

matrizPeso=matrix(gdfNodos,gdfLineas)
MatrizUsable=matrizPeso

g = Graph(MatrizUsable)
 
source = 1097; sink = 1100
flujos,flmax,NodosNV = g.FordFulkerson(source, sink)

#("OBJECTID","TAG","TENSION_NO","POTENCIA_I","POTENCIA_E","x","y","geometry")]
gdfNodosNV=gpd.GeoDataFrame(gdfNodos.iloc[NodosNV],crs="WGS84",)
gdfNodosNV.to_csv('../Dataset/NodosNoViabilizados.csv')

gdfFlujos=gpd.GeoDataFrame(gdfNodos,crs="WGS84")
gdfFlujos['Ingreso']=flujos
gdfFlujos.head()
#.to_csv('../Dataset/Flujos.csv')