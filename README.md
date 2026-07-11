# Ciência de Dados Geoespaciais com R

Material da disciplina de R da Pós-Graduação em Ciência de Dados Geográficos: aulas em R Markdown e os dados usados nas práticas.

## Estrutura

```
aulas-r/    # RMarkdown das aulas (.Rmd) + versões renderizadas (.html/.pdf)
```

Os dados usados nas práticas não ficam neste repositório (ver seção [Dados](#dados)).

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

## Dados

Os datasets usados nas práticas (`restaurantes.csv`, `queimadas_inpe.csv`, shapefiles da Paraíba, cenas Landsat, `fraud_dataset.csv`, imagens de segmentação florestal, etc.) não ficam versionados neste repositório — estão disponíveis no Google Drive:

📁 [Dados completos das aulas](https://drive.google.com/drive/folders/1I-cbDRtdhC-5YjD4-KW7nqv6x7g5eT8Z?usp=sharing)

Baixe a pasta e salve localmente como `dados/` na raiz do projeto para reproduzir os caminhos usados nos `.Rmd`.

## Origem

Conteúdo consolidado a partir de:
- `M2-R/RMarkDown_Revisado`
- `M2-R/dado_pratica`
