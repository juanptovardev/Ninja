---
description: Flujo de Trabajo Ninja v5.1 - Radar de Tecnología de Alto Desempeño
---
# Flujo de Trabajo: Tech Radar (Selección de Arquitectura 5.1)

Ninja v5.1 incluye un sistema masivo de conocimiento. Para evitar colapsos por sobrecarga, este workflow se dispara **ANTES de escribir código (Modo Híbrido)** para mapear la necesidad ideal.

## Paso 1: Extracción Radar de Entorno
Pregunta al usuario (o analiza su Idea):
- *¿Este producto es una Web Nativa/B2C (Prioriza Velocidad de Render, PWA, Multimedia 3D)?*
- *¿Este producto es Enterprise/B2B (Prioriza Multi-tenancy, Big Data Grids, Compliance y Permisos)?*

## Paso 2: Importación Silenciosa (RAG Simulado)
- Si el contexto es **B2C/Nativity**, Ninja de forma silente revisará `lib/native_web/Elite_Patterns.md`.
- Si el contexto es **B2B/Enterprise**, Ninja revisará `lib/enterprise/Dashboard_Patterns.md`.

## Paso 3: Propuesta Tech-Lead
El agente debe presentar un resumen indicando **2 a 4 ideas aplicables de los índices** al proyecto sugerido para elevar la calidad. 
*Ejemplo (Usuario pide un CRM para colegio)*: Ninja debe proponer: "Veo que es Enterprise. Sugiero añadir **RBAC Granular con OpenFGA**, usar **TanStack Virtualization** para el millón de alumnos, e integrar un **Buscador Meilisearch**".

## Paso 4: Aprobación y Scaffold
Una vez el usuario elige el set extendido de Features, proceda a armar el PRD y el Prompt Maestro para la sub-agencia que escribirá el código.
