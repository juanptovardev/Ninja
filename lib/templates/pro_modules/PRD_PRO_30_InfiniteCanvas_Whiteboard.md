# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_30_InfiniteCanvas_Whiteboard)
> *Optimizador para: Herramientas tipo Figma, Miro, tldraw, Diagramación colaborativa.*
> *Requisito v5.2:* **Tech Radar Amplification** [x] Canvas-Based Layouts + CRDT.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** El DOM tradicional no escala para interfaces de arrastrar y soltar con zoom infinito y cientos de nodos simultáneos.
**Solución:** Uso directo de `<canvas>` / WebGL para dibujar elementos 2D (texto, formas, imágenes) en un espacio sin restricciones, sincronizado con multi-usuario.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** Engine 2D Render Client-side + WebSocket Sync Server.
- **Core Pattern (v5.2):** **Canvas Layout Engine** (`tldraw`, `Fabric.js`, `Konva` o `Excalidraw Core`). **Yjs** o **Liveblocks** para la presencia colaborativa.

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Render Engine:** Gestión del estado del "Camera Viewport" (Pan, Zoom, Scale).
- **Control Vectorial:** Selección de bounding box, redimensionado, rotaciones.
- **Optimización de Render:** Solo dibujar los shapes intersectando con el Viewport actual ("Viewport Culling").
- **Cursor Presences:** Pintado de cursores con el nombre de otros usuarios mapeando mouse events al espacio relativo.

## 4. ⚙️ Backend & Microservicios Core
- **WebSocket Broadcast:** Servidores PartyKit, Liveblocks o Hono WebSockets.
- **State Hydration:** Envío del Blob serializado a S3 / R2 periódicamente.

## 5. 🗄️ Estrategia de Base de Datos y State
- **Document Store:** JSON/CRDT Blob almacenado en Postgres (JSONB) o MongoDB.
- **Transient State:** Zustand temporal para herramientas de edición activas (Lápiz, Borrador, Texto).

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Integración base del motor de Canvas (ej. Tldraw) e inicialización de Viewport.
- [ ] Sub-Agente B: Lógica de CRDT (Yjs) y conexión a WebSockets Server-side.
- [ ] Sub-Agente C: Sistema de exportación a PNG/SVG y UI flotante (Toolbars sobre lienzo).

---
*Ninja Framework v5.2 - Módulo de Expansión Pro
