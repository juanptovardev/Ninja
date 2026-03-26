---
description: Activa la Fábrica de Nichos para generar ideas y PRDs de productos tecnológicos
---

# 🏭 /factory — Fábrica de Nichos Ninja v3.4

## Activación
Al recibir este comando, Ninja entra en modo **Fábrica de Nichos**.

## Pasos
1. Lee `fabrica_de_nichos/GUIA_FABRICA_DE_NICHOS.md` para cargar la metodología.
2. Presenta al usuario los 35 nichos disponibles del Mega-Radar (`INVESTIGACION_NICHOS.md`).
3. El usuario selecciona un nicho por número (1-35).
4. Ninja lee el `IDEAS.md` de la carpeta correspondiente.
5. Presenta las 5 ideas y pregunta:
   - **[E] Expandir**: Genera un PRD Profesional de la idea seleccionada.
   - **[G] Generar**: Crea 5 nuevas ideas para el mismo nicho.
   - **[P] Pivot**: Adapta una idea a otro sector.
   - **[X] Salir**: Volver al modo normal.

## Output
- PRDs generados se guardan en la carpeta del nicho como `PRD_[NOMBRE].md`.
- Ideas nuevas se añaden al `IDEAS.md` correspondiente.

## Plantillas
- PRD Simple: `fabrica_de_nichos/PRD_TEMPLATE_SIMPLE.md`
- PRD Pro: `fabrica_de_nichos/PRD_TEMPLATE_PRO.md`
