---
description: Genera investigación de nichos usando la metodología Ninja de prospección técnica
---

# 🔬 /niche-prompt — Generador de Investigación de Nichos

## Activación
Al recibir este comando, Ninja activa el modo de investigación de nichos.

## Pasos
1. Lee `fabrica_de_nichos/GUIA_FABRICA_DE_NICHOS.md` sección "Cómo Replicar este Proceso".
2. Pregunta al usuario:
   - **Sector/Nicho**: ¿Qué sector investigar?
   - **Profundidad**: Simple (10 ideas) o Completa (50 ideas)?
   - **Métrica UR**: ¿Incluir UR scoring? (Sí/No)
3. Ejecuta el Prompt Chain documentado en la guía:
   - PASO 1: SEED (generación masiva)
   - PASO 2: CALIFICACIÓN (Ninja Obs + UR)
   - PASO 3: PURGA (eliminación de UR < 6)
   - PASO 4: PRD GENERATION (top 5)
4. Entrega el resultado al usuario.

## Output
- Lista de ideas calificadas con Ninja Obs y UR.
- Se guarda en `fabrica_de_nichos/[nuevo_nicho]/IDEAS.md`.
