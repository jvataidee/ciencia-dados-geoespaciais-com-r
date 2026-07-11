# 1. Preparação do Ambiente
if (!requireNamespace("terra", quietly = TRUE)) install.packages("terra")
if (!requireNamespace("raster", quietly = TRUE)) install.packages("raster")
if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
if (!requireNamespace("sf", quietly = TRUE)) install.packages("sf")

library(terra) 
library(raster)
library(dplyr)
library(sf)

# 2. Leitura da Imagem de Satélite

# 3. Leitura da Delimitação

# 4. Recortar Região de Interesse

# 5. Cálculo do NDVI

# 6. Reclassificação do NDVI
categorias <- matrix(c(-Inf, -1, NA, 
                       -1, 0, 1,       #"Planta Morta ou Objeto Inanimado"
                       0, 0.33, 2,     #"Planta Doente"
                       0.33, 0.66, 3,  #"Planta Moderadamente Saldável"
                       0.66, 1, 4,     #"Planta Muito Saldável"
                       1, Inf, NA,
                       NA, NA, NA), byrow = TRUE, ncol = 3)

# 7. Salvar o Resultado