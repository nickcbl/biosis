#!/bin/bash
source /home/nicholas/ptools/bin/activate

cat << 'MMD' > v2-abordagens.mmd
%%metro title: Abordagens em Biologia de Sistemas
%%metro style: light
%%metro line: top | Top-down | #4CAF50
%%metro line: mid | Middle-out | #FF9800
%%metro line: bot | Bottom-up | #2196F3

graph LR
  A[Dados Globais]
  B[Redes]
  C[Vias]
  D[Moléculas]

  A -->|top| B
  B -->|top| C
  C -->|top| D

  D2[Moléculas]
  C2[Vias]
  B2[Redes]
  A2[Dados Globais]

  D2 -->|bot| C2
  C2 -->|bot| B2
  B2 -->|bot| A2

  C3[Vias]
  B3[Redes]
  D3[Moléculas]

  C3 -->|mid| B3
  C3 -->|mid| D3
MMD

nf-metro render v2-abordagens.mmd -o img/v2-abordagens.svg

rm *.mmd
