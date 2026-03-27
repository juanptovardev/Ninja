# 🎨 REGLAS MAESTRAS DE UI/UX (NINJA v5.0)
*(Basado en Apple HIG, Material Design 3, y directivas "Anti-AI-Slop")*

Todo código de interfaz generado por Ninja debe adherirse estrictamente a estas 5 leyes fundamentales para garantizar una estética premium.

## 1. Prohibición de "AI Slop"
- **Regla:** Nunca uses diseños genéricos, colores primarios sin matiz (ej. `#FF0000`, `blue-500` estándar en exceso), o sombras "sucias". 
- **Acción:** Aplica una dirección estética clara (Minimalista, Brutalista, Editorial, Glassmorphism). Usa paletas Oklch/Oklab si es posible, y sombras sutiles, difuminadas y multicapa (`box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);`).

## 2. Tipografía y Jerarquía
- **Regla:** Un peso visual claro.
- **Acción:** Usa fuentes modernas (Inter, Roboto, Geist, Outfit). Evita el gris absoluto `#808080`; usa matices con tinte (ej. `slate-500`). El título H1 debe ser el punto focal indiscutible de la página.

## 3. Espaciado y Ritmo (8pt Grid)
- **Regla:** Todos los márgenes y paddings deben ser múltiplos de 8 (o de 4 para mini-componentes).
- **Acción:** Usa `p-4`, `m-8`, `gap-6`. Nunca uses valores arbitrarios como `mt-7` o `p-[17px]`. El espaciado en blanco es tu herramienta principal para agrupar elementos cognitivamente.

## 4. Accesibilidad (WCAG 2.2) y Estados
- **Regla:** Contrastes suficientes y feedback de interacción.
- **Acción:** Todo elemento interactivo debe tener estilos `:hover`, `:focus-visible` (con `ring` u `outline`), y `:active`. Los contrastes de texto sobre fondo deben ser auditados mentalmente para superar ratio 4.5:1.

## 5. Experiencias 3D y Sistemas B2B/Enterprise
- **Regla:** Integración inmersiva y Extracción Inteligente (v5.1).
- **Acción:** Al integrar Three.js/WebGL, asegúrate de que el canvas sea responsivo, que use texturas generadas optimizadas, y que exista un fallback (Native Web). Al crear Dashboards B2B (Enterprise), aplica patrones de carga pesada como TanStack Virtualization y gráficos profundos extrayendo lógicas valiosas de sistemas de visualización de datos (D3.js). Revisa `lib/native_web/Elite_Patterns.md` y `lib/enterprise/Dashboard_Patterns.md` para ideas de alto desempeño.
