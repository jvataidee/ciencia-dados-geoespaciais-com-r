# 1. Preparação do Ambiente
library(terra) 
library(raster)
library(dplyr)
library(sf)

# 2. Leitura da Imagem de Satélite
imagem_path <- "D:/Pos-GeoDataScience/M2-R/dado_pratica/IMAGEM/LC09_L2SP_214065_20240108_20240113_02_T1_SR.tif"
raster_img <- rast(imagem_path)
crs_raster <- crs(raster_img)

# 3. Leitura da Delimitação
municipios <- st_read("D:/Pos-GeoDataScience/M2-R/dado_pratica/PB_Municipios/PB_Municipios_2022.shp")
joaoPessoa <- municipios %>% filter(municipios$NM_MUN == 'João Pessoa')
joaoPessoa_project <- st_transform(joaoPessoa, crs = crs_raster)

# 4. Recortar Região de Interesse
rasterRecortado <- raster::mask(raster_img, joaoPessoa_project)

# 5. Cálculo do NDVI
ndvi <- (rasterRecortado[[5]] - rasterRecortado[[4]]) / (rasterRecortado[[5]] + rasterRecortado[[4]])
ndvi <- raster(ndvi)


# 6. Reclassificação do NDVI
categorias <- matrix(c(-Inf, -1, NA, 
                       -1, 0, 1,       #"Planta Morta ou Objeto Inanimado"
                       0, 0.33, 2,     #"Planta Doente"
                       0.33, 0.66, 3,  #"Planta Moderadamente Saldável"
                       0.66, 1, 4,     #"Planta Muito Saldável"
                       1, Inf, NA,
                       NA, NA, NA), byrow = TRUE, ncol = 3)

ndvi_reclassificado <- reclassify(ndvi, categorias)


# 5. Salvar o Resultado
raster::writeRaster(ndvi_reclassificado, filename="D:/Pos-GeoDataScience/M2-R/dado_pratica/IMAGEM/ndvi_reclassificado.tif",overwrite=TRUE)