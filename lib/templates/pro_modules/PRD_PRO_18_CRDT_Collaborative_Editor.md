# 📄 PRD PRO MODULE: CRDT Collaborative Editor
> *Variante Especializada Ninja PRO: Sistemas tipo Google Docs o Figma donde N usuarios mutan el mismo archivo al mismo tiempo sin que se sobreescriban los datos.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Resolución de Conflictos Concurrentes. Si el Usuario A borra una palabra y el Usuario B, que estaba sin internet, intenta editar la letra siguiente, no puede haber bloqueo ni corrupción del texto.
**Meta Tecnológica:** Uso de CRDTs (Conflict-free Replicated Data Types) u OT (Operational Transformation) como motor matemático base del estado local.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Librería CRDT Core:** Yjs o Automerge para sincronización peer-to-peer o client-server del árbol JSON del documento a velocidades de bytes.
- **Editor Frontend:** ProseMirror, Quill o Lexical para texto; Canvas/Figma-like engine para diseño.
- **Red de Transporte:** WebSockets (Socket.io/WS) o WebRTC (P2P Mesh Network).
- **Persistencia del Árbol (Backend):** Nodos Express/Fastify que aplican los "Deltas" binarios del CRDT al disco principal (PostgreSQL o S3).

## 3. 🛡️ Resiliencia Offline y Control de Versiones
- **Vector de Riesgo Primario:** El Historial del Documento engordando infinitamente (Lossless History Storage). Un documento de 1 año con 1,000 edits pesa gigas si no se poda.
- **Mitigación Mandatoria:** Snapshotting. Cada 100 mutaciones, el servidor compacta el CRDT en un blob estático y tira las operaciones viejas a Cold Storage.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Canvas/Editor Setup):** Instalación de Yjs y el binding con ProseMirror. El documento existe solo en la RAM del navegador (Single-Player).
- **Sprint 2 (Syncing Básico Multi-Player):** Implementación del Y-WebSocket Provider; dos navegadores abiertos que sincronizan la escritura letrea a letra fluidamente.
- **Sprint 3 (Real-Time Presence):** Mostrar los cursores remotos ("Juan está escribiendo...") interceptando el canal de Awareness del CRDT.
- **Sprint 4 (Persistencia y Versionado):** Guardado de los blobs Uint8Array del documento en la base de datos (Ej: SQLite local + Sync remota PostgreSQL).`
