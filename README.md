# Ciência de Dados Geoespaciais com R

Material da disciplina de R da Pós-Graduação em Ciência de Dados: aulas em R Markdown e os dados usados nas práticas.

## Estrutura

```
aulas-r/    # RMarkdown das aulas (.Rmd) + versões renderizadas (.html/.pdf)
dados/      # Datasets usados nos exercícios e desafios práticos
```

## Aulas (`aulas-r/`)

| Arquivo | Conteúdo |
|---|---|
| `bloco1_IntroducaoR_par1.Rmd` | Introdução ao R: histórico da linguagem, sintaxe básica |
| `bloco2_IntroducaoR_part2.Rmd` | Introdução ao R (parte 2): funções, tipos e estruturas de dados |
| `bloco3_EstatisticaAnaliseDados.Rmd` | Estatística descritiva e análise de dados em R |
| `bloco4_AnaliseGeoespacialemR_Part1.Rmd` | Análise geoespacial com o pacote `sf` e visualização com `ggplot2`/`geom_sf` |
| `bloco5_AnaliseGeoespacialemR_Part2.Rmd` | Dados raster em R (pacote `raster`) |
| `bloco6_SensoriamentoRemotoR.Rmd` | Sensoriamento remoto em R (`raster`, `sf`, `terra`, `stars`) |
| `bloco6_Exemplo_Sensoriamento_Remoto.R` / `..._Resposta.R` | Script de exemplo de sensoriamento remoto e sua resolução |
| `bloco7_InteligenciArtificialGeografica.Rmd` | Inteligência artificial geográfica: pacotes de machine learning em R (Caret, etc.) |
| `desafio_prosposto_R.Rmd` | Desafio prático: correção atmosférica em imagens de sensoriamento remoto |

Cada `.Rmd` possui as versões renderizadas correspondentes em `.html` e `.pdf` (quando disponíveis).

## Dados (`dados/`)

| Arquivo/Pasta | Descrição |
|---|---|
| `restaurantes.csv` | Dados pontuais de restaurantes (geoespacial) — bloco5 |
| `queimadas_inpe.csv` | Focos de queimadas (INPE) — bloco7 |
| `Real estate valuation data set.xlsx` | Dataset de avaliação imobiliária — bloco7 |
| `Amostras.zip` | Amostras para classificação/sensoriamento remoto — bloco7 |
| `PB_Municipios_2022.zip` / `PB_Municipios/` | Malha de municípios da Paraíba (shapefile) — blocos 4, 5, 6 |
| `PB_Setores_2021.zip` / `PB_Setores/` | Setores censitários da Paraíba (shapefile) — blocos 4, 5 |
| `IMAGEM/` | Cena Landsat extraída (SR + NDVI reclassificado) — bloco6 |
| `raster/` | Raster derivado de `07S36_ZN.zip` (`07S36_ZN.tif`, `07S36_ZN_PROJECT.tif`) — bloco5 |
| `07S36_ZN.zip` | Carta/imagem de origem do raster acima — bloco5 |
| `LC09_L2SP_214065_20240108_20240113_02_T1_SR.tif` (+ `.tfw`, `.aux.xml`) | Cena Landsat 9 (nível SR) — blocos 6, 7 |
| `deep_learning_datasets/` | Imagens aéreas de floresta já extraídas, usadas no exemplo de segmentação — bloco7 |
| `fraud_dataset.csv` | Dataset de fraude para exemplos de ML — bloco7 |

Datasets que não eram referenciados em nenhuma aula (`Mine_Dataset.xls`, `downalod.ipynb`, `IMAGEM.zip`, `PB_Municipios.zip`, `PB_Setores.zip`, `nordeste-latest-free.zip`, cena Landsat bruta em pastas de bandas, e o `.zip` duplicado de "Forest Aerial Images for Segmentation") foram removidos desta cópia. Eles continuam disponíveis em `M2-R/dado_pratica`, se precisar.

### Dados grandes (não versionados no git, apenas locais)

Os arquivos/pastas abaixo ultrapassam 100MB e estão listados no `.gitignore` — permanecem na cópia local mas não são enviados ao repositório remoto:

| Arquivo/Pasta | Tamanho aprox. |
|---|---|
| `nordeste-latest-free/` | ~2.2GB |
| `fraud_dataset.csv` | ~352MB |
| `deep_learning_datasets/` | ~208MB |

Se precisar versionar algum desses arquivos, considere usar [Git LFS](https://git-lfs.com/).

## Origem

Conteúdo consolidado a partir de:
- `M2-R/RMarkDown_Revisado`
- `M2-R/dado_pratica`
