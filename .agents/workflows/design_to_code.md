---
description: Flujo de Trabajo Ninja v5.0 - Design to Code (Wireframe, Imagen, 3D a Código)
---
# Flujo de Trabajo: Design-to-Code

Este flujo de trabajo detalla cómo el Arquitecto Visual (Ninja v5.0) transforma requerimientos en un producto digital Premium.

1. **Ideación Visual y Extracción (ShowMe/Mermaid)**
   - Extraer requerimientos del proyecto.
   - Generar diagramas de flujo de usuario (Mermaid) o layouts base (ShowMe).
   - *Punto de Revisión:* Obtener confirmación del usuario sobre el flujo de datos.

2. **Generación de Mockups Estáticos (Gemini/Flux)**
   - Utilizar la herramienta nativa `generate_image` o plugins.
   - Generar placeholders, logotipos base, y fondos de Hero Sections.
   - *Prompting:* Usar directivas de fotografía o renderizado Dribbble-style.

3. **Arquitectura 3D (Si es aplicable)**
   - Instanciar lienzo Three.js / WebGL evaluando capacidades gráficas profundas de *Godogen*.
   - Utilizar prompts de extracción para generación de texturas.
   - Validar rendimiento en navegador.

4. **Codificación Frontend (Prevención de Genéricos)**
   - Crear código Next.js/React + Tailwind 4.
   - Inyectar las `Reglas_UI_UX_5x5.md` en el prompt lógico de OpenCode.
   - Asegurarse de implementar los estados interactivos, animaciones suaves y componentes Shadcn/ui.

5. **Auditoría Visual (Design Auditor)**
   - Leer el código generado y validar contra heurísticas de diseño (espaciado de 8pt, contrastes, no uso de paletas cliché). Extrayendo el valor de colecciones *Awesome*.
   - Generar un reporte en `walkthrough.md` indicando el éxito estético de la implementación.
