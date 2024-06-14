import geopandas as gp

centralesHidro = gp.read_file('./CH_Existentes/CH_Existentes_geogpsperu_JuanSuyo.shp')
centralesTransmision = gp.read_file('./CT Existentes/CT Existentes_geogpsperu_JuanSuyo.shp')
lineasTension = gp.read_file('./LT Existentes/LT Existentes_geogpsperu_JuanSuyo_.shp')
genMunicipios = gp.read_file('./Gen Aislada Municipios/Gen Aislada Municipios_geogpsperu_JuanSuyo.shp')
genConsecion = gp.read_file('./Generacion Aislada por concesion/Generacion Aislada por concesion_geogpsperu_JuanSuyo.shp')
rerExistentes = gp.read_file('./RER Existentes/RER Existentes_geogpsperu_JuanSuyo.shp')
setExistentes = gp.read_file('./SET Existentes/SET Existentes_geogpsperu_JuanSuyo.shp')
setProyectadas = gp.read_file('./SET Proyectadas/SET Proyectadas_geogpsperu_JuanSuyo.shp')
lineasTensionProyectadas = gp.read_file('./LT Proyectadas/LT Proyectadas_geogpsperu_JuanSuyo.shp')


mapCentralesHidro = centralesHidro.explore(color = 'red')
mapLineasTension = lineasTension.explore(m = mapCentralesHidro, color = 'green')
mapCentralesTransmision = centralesTransmision.explore(m = mapLineasTension, color = 'blue')
mapGenMuhicipios = genMunicipios.explore(m = mapCentralesTransmision, color = 'yellow')
mapGenConsecion = genConsecion.explore(m = mapGenMuhicipios, color = 'purple')
mapRerExistentes = rerExistentes.explore(m = mapGenConsecion , color = 'orange')
mapSetExistentes = setExistentes.explore(m = mapRerExistentes, color = 'cyan')
mapSetProyectadas = setProyectadas.explore(m = mapSetExistentes, color = 'black')
mapLineasTensionProyectadas = lineasTensionProyectadas.explore(m = mapSetProyectadas, color = 'green')

mapLineasTensionProyectadas.save('mixed.html')

