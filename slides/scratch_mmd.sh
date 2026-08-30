#!/bin/bash
source /home/nicholas/ptools/bin/activate

cat << 'MMD' > v2-ciclo-biosis.mmd
%%metro title: Ciclo da Biologia de Sistemas
%%metro style: light
%%metro line: L1 | Top-down | #4CAF50
%%metro line: L2 | Bottom-up | #2196F3
%%metro line: L3 | Middle-out | #FF9800

graph LR
  A[Hipótese]
  B[Coleta de Dados]
  C[Modelagem]
  D[Simulação]
  E[Validação Experimental]
  F[Publicação]
  M[Entrada Middle-out]

  A -->|L1,L2| B
  B -->|L1,L2| C
  M -->|L3| C
  C -->|L1,L2,L3| D
  D -->|L1,L2,L3| E
  E -->|L1,L2,L3| F
MMD

nf-metro render v2-ciclo-biosis.mmd -o img/v2-ciclo-biosis.svg

cat << 'MMD' > v2-protocolos.mmd
%%metro title: Protocolos Operacionais
%%metro style: light
%%metro line: P1 | Ciclo | #00589b

graph LR
  A[Teoria]
  B[Modelagem Analítica/Computacional]
  C[Validação Experimental]
  D[Refinamento do Modelo]

  A -->|P1| B
  B -->|P1| C
  C -->|P1| D
MMD

nf-metro render v2-protocolos.mmd -o img/v2-protocolos.svg

cat << 'MMD' > v2-abordagens.mmd
%%metro title: Abordagens em Biologia de Sistemas
%%metro style: light
%%metro line: top | Top-down | #4CAF50
%%metro line: mid | Middle-out | #FF9800
%%metro line: bot | Bottom-up | #2196F3

graph TD
  A[Dados Ômicos globais]
  B[Redes de Interação]
  C[Vias Metabólicas/Sinalização]
  D[Proteínas/Genes]
  E[Comportamento Dinâmico]

  A -->|top| B
  B -->|top| C
  C -->|top| D

  D -->|bot| C
  C -->|bot| B
  B -->|bot| A

  C -->|mid| B
  C -->|mid| D
MMD

nf-metro render v2-abordagens.mmd -o img/v2-abordagens.svg

rm *.mmd
