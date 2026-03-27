# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_32_MultiMonitor_Trading_Terminal)
> *Optimizador para: Plataformas de Trading en bolsa, Cripto, Paneles CCTV.*
> *Requisito v5.2:* **Tech Radar Amplification** [x] Multi-Screen Window Management.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** Los traders y despachadores necesitan extraer widgets (Ej. gráficas, tableros de compra/venta) y dispersarlos en 4 o más monitores físicos, lo cual se siente incómodo en una web app clásica de 1 sola pestaña.
**Solución:** Desplegar una aplicación web que "rompa la pestaña", permitiendo a los usuarios separar widgets a ventanas pop-up que mantienen comunicación de estado síncrono.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** Multi-window Single Page Application (SPA).
- **Core Pattern (v5.2):** **Window Management API**, `BroadcastChannel API`, y `react-new-window`.

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Widget Manager:** Un entorno "Root" que despliega iframes o pop-outs hacia nuevas instancias de `window.open`.
- **Global State Bridge:** El estado (Zustand, Redux) envuelto en un custom hook que emite y escucha eventos a 1 milisegundo a través de `Broadcast Channel` para que todas las ventanas se actualicen simultáneamente al hacer una transacción.
- **Canvas Charts:** Gráficas en **WebGPU** (Ej. Lightweight Charts, D3 renderers) para soportar 1,000,000 de velas sin ralentizarse.

## 4. ⚙️ Backend & Microservicios Core
- **Data Streaming:** Servidores WebSocket de alto throughput (Go o Rust, o uWebSockets.js).
- **Market Data Gateway:** Conexión a oráculos externos o websockets de Exchanges (Binance API, EODHD).

## 5. 🗄️ Estrategia de Base de Datos y State
- **Timeseries DB:** InfluxDB o ClickHouse para guardar históricos del order book.
- **In-Memory Cache:** Redis Clusters para cachear el último feed del WebSocket.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Lógica BroadcastChannel, Zustand compartido entre Tabs, y Pop-out features.
- [ ] Sub-Agente B: Cliente WebSocket puro ultraligero y motor de gráficas masivas.
- [ ] Sub-Agente C: Backend High-Throughput para ingestión de precios.

---
*Ninja Framework v5.2 - Módulo de Expansión Pro
