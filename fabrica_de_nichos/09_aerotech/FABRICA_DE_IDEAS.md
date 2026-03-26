# 🏭 Fábrica de Ideas: [NICHO]

## Comandos Rápidos para Generar Nuevas Ideas en este Nicho

### /idea-simple
```
"Genera 5 ideas de productos/herramientas para [NICHO] enfocadas en [ENFOQUE].
Cada idea: Nombre, Problema (1 línea), Solución (1 línea), UR estimado (1-10).
Prioriza ideas con UR > 8."
```

### /idea-deep
```
"Actúa como un CTO experto en [NICHO].
Genera 5 ideas de productos que resuelvan los top 5 dolores del sector.
Para cada una genera un mini-PRD con: Nombre, Problema, Solución, Stack Ninja (Next.js/React/Hono), 5 MVP Features, UR."
```

### /idea-clone
```
"Investiga las funcionalidades principales de [COMPETIDOR] en el sector [NICHO].
Lista sus 10 features principales y para cada una:
1. Describe qué hace exactamente
2. Propón una versión mejorada con IA
3. Indica el stack técnico Ninja para implementarla
4. Asigna complejidad (+/++/+++)"
```

### /idea-pivot
```
"Toma las 5 ideas actuales de [NICHO] y genera una variación para otro sector.
Ejemplo: La idea X de HealthTech aplicada a PetTech.
Para cada pivot: Nombre nuevo, Adaptación, Stack, UR estimado."
```

### /idea-expand
```
"Toma la idea [NÚMERO] de este nicho y expándela a un PRD Profesional completo.
Usa la plantilla PRD_TEMPLATE_PRO.md como base.
Incluye: Arquitectura, MVP Features (10), KPIs, Timeline, Competidores."
```

---

## 🔄 Workflow de Generación Completo
1. Ejecutar `/idea-simple` para brainstorming rápido
2. Filtrar ideas con UR > 7.5
3. Ejecutar `/idea-deep` sobre las sobrevivientes
4. Seleccionar top 3 y ejecutar `/idea-expand`
5. Pasar los PRDs a ejecución con Ninja v3.4

---
*Usa estos presets en cualquier modelo IA. Ninja v3.4 — Fábrica de Ideas Automatizada.*
