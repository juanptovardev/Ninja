# 🎨 Librería de Sistemas de Diseño (Ninja v5.1)

Este directorio alberga los "Tokens" y "Reglas extraídas" de los repositorios masivos de UI/UX (ej. *ui-ux-pro-max-skill*, *Design Auditor*).

## Uso en Ninja
Cuando el Modo Híbrido se activa, Ninja inyecta los contenidos o referencias de esta carpeta directamente en el *Prompt Maestro* hacia los sub-agentes OpenCode encargados del Frontend. De este modo, extraemos "lo utilizable" de repositorios voluminosos sin saturar la memoria.

## Estructura Inyectable
- `/shadcn-presets/` -> Configuraciones `theme.json` de Shadcn curadas.
- `/tailwind-themes/` -> Combinaciones y gradientes avanzados, extraídos del *Color Expert*.
- `/3d-snippets/` -> Plantillas base de Three.js (Cámaras, Iluminación de estudio) para inmersión profunda.
