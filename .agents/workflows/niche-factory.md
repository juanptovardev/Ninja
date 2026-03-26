---
description: Fábrica de Nichos Ninja v3.4 - Creación de Conceptos y PRDs
---
# 🏭 Workflow: Niche Factory

Este workflow te permite iniciar rápidamente el proceso de ideación, validación y creación de PRDs directamente dentro de la Fábrica de Nichos de Antigravity.

## Pasos del Flujo

1. **Abre un Nicho Específico:**
   Ve a la carpeta `fabrica_de_nichos/[ID_Y_NICHO_ELEGIDO]/` usando los comandos.
   - *Comando:* `/niche-list` (Pide a Antigravity que liste los nichos disponibles para ti).

2. **Generar Nuevas Prospecciones (Fábrica de Ideas):**
   - Usa el comando `/niche-ideate [NICHO] [MODIFICADOR(opcional)]`
   - *Acción:* Ninja leerá `GUIA_MAESTRA_PROMPTS.md` en la raíz de la fábrica y aplicará el framework estricto para darte 5 nuevas ideas con sus UR y sus métricas de complejidad.

3. **Convertir una Idea en un PRD:**
   - Usa el comando `/niche-prd [NICHO] [NUMERO_DE_IDEA_O_NOMBRE]`
   - *Acción:* Ninja tomará la idea seleccionada, evaluará su complejidad (+, ++, +++) y seleccionará automáticamente la plantilla en `lib/templates/PRD_[NIVEL].md` para redactar una propuesta completa en el directorio activo del nicho.

4. **Validación Rápida:**
   - Usa `/niche-evaluate [IDEA_PERSONAL]`
   - *Acción:* Escribe cualquier idea vaga y Ninja te devolverá inmediatamente su nivel Ninja de complejidad y su UR de mercado según el sistema de *El Dominador*.
