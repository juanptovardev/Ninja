# 🌐 NICHO 1: DESARROLLO WEB NATIVO (Elite Patterns)

Este documento es el índice de conocimiento B2C/Native Web de alto rendimiento de Ninja v5.1. Cuando el usuario requiera rendimiento extremo, gráficos, hardware en el cliente o PWA, Ninja DEBE usar esta base arquitectónica en la generación de Prompts Maestros.

## Arquitectura de Renderizado y Carga
- **Predictive Prefetching:** Usa IA para cargar la siguiente ruta (ForesightJS, Guess.js).
- **Zero-Runtime CSS:** Generación estática para evitar cálculos en cliente (Tailwind v4, Vanilla Extract, Linaria).
- **Micro-Frontends (Module Federation):** Carga shells (Webpack MF, single-spa).
- **Island Architecture:** Hidratación parcial (Astro, Fresh).
- **Partial Prerendering (PPR):** Estático y dinámico en misma ruta (Next.js 14+).
- **Edge-Side Rendering (ESR) & Personalization:** HTML alterado en el borde (Cloudflare Workers, Vercel Edge Middleware).
- **ISR Real-time:** Regeneración estática on-demand (Next.js Revalidation).

## Gráficos, 3D y Multimedia
- **Native WebGPU Rendering:** Gráficos puros de nivel desktop (Orillusion, Three.js WebGPU, Babylon.js).
- **Canvas-Based Layouts:** Interfaces inmensas tipo Figma (Excalidraw, tldraw, Fabric.js, Konva.js).
- **WASM Image Processing:** Filtros en el browser vía Rust/C++ (Photon, Squoosh).
- **Web Codecs API:** Edición/streaming en canvas a 60fps usando hardware decode.
- **Web Audio Worklets:** Sintetizadores baja latencia (Tone.js).

## Sync de Datos y Navegador
- **Local-First Web Apps:** Latencia cero offline (Replicache, Yjs, Automerge).
- **Edge Data Replication:** Bases de datos cross-region replicadas (Turso/libSQL, LiteFS).
- **PWA Offline Orchestration:** Core Service Workers + DB (Workbox, Serwist, Dexie.js).
- **WebAssembly SQLite:** BD local relacional de alta velocidad (sql.js, wa-sqlite).
- **Rust-Based Web Workers:** Desplazar cómputo a hilos nativos (wasm-bindgen, Comlink).

## UI Dinámica
- **Shared Element Transitions:** Animaciones en rutas de app (View Transitions API Chrome, astro-vtbot).
- **CSS Scroll-Driven Animations:** Cinemáticas ligadas a scroll sin JS overhead (scroll-driven-animations.style, GSAP, Lenis).
- **CSS Anchor Positioning:** Tooltips relacionales (Floating UI).
- **Popover API:** Elementos de contexto superpuestos (Nativo Chrome, oddbird polyfill).

## APIs Nativas Avanzadas (Hardware/Context)
- **Web NFC Integration:** Interacción física W3C (Chrome Samples).
- **Semantic Search (Native):** Embeddings locales sin backend (Orama, Transformers.js).
- **Web Transport API:** Sucesora de WebSockets para multi-stream.
- **Eye Tracking (Web Camera):** Reacciones de mirada en JS (WebGazer.js).
- **Biometric Web Auth (WebAuthn):** FaceID y TouchID (SimpleWebAuthn, Hanko).
- **Sanitizer API:** Limpieza XSS de caja (DOMPurify).
- **Screen Enumeration / Window Management:** Displays tipo Bloomberg Terminal (Chrome Capabilities API).
- **Media Session Control:** (Nativo Media Session API).
- **Client Hints:** Adaptación HTTP/Hardware de Assets.
- **Web Share Target:** OS Sharing Menu integration.
- **Web Vitals Guard:** CI Performance Thresholds (Lighthouse CI, Google web-vitals).
