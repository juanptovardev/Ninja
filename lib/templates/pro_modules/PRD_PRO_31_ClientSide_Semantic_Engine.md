# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_31_ClientSide_Semantic_Engine)
> *Optimizador para: Bases de conocimiento locales, Buscadores AI Zero-Latency.*
> *Requisito v5.1:* **Tech Radar Amplification** [x] Semantic Search Native & WASM.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** La búsqueda vectorial tradicional ("Semantic Search") depende de llamadas API costosas a Pinecone/OpenAI, añadiendo cientos de ms de latencia.
**Solución:** Inferencia local. Ejecutar los modelos de NLP (`Transformers.js`) y buscar dentro bases de datos vectoriales en-memoria (`Orama`) directamente en el navegador de los usuarios a coste servidor $0.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** PWA Enriched with WebAssembly (WASM).
- **Core Pattern (v5.1):** **In-Browser Machine Learning (`Transformers.js`, `Orama Search`)**.

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Model Loader:** Descarga asíncrona de los weights del modelo `Xenova/all-MiniLM-L6-v2` (aprox 22MB) y cacheo en IndexedDB.
- **Vectorization Layer:** Convertir query "texto natural" a vectores localmente.
- **Search Engine:** Consultar la base de datos distribuida o construida en local por coincidencia del coseno (`Orama`).

## 4. ⚙️ Backend & Microservicios Core
- **Static Payload:** Endpoint para entregar los documentos "Base" en JSON comprimido que el browser indexará en el primer render.
- **Periodic Sync:** Sistema Edge-based para sincronizar deltas de contenido nuevo (SSR Hibrido).

## 5. 🗄️ Estrategia de Base de Datos y State
- **Local DB:** IndexedDB y Orama Indices persistidos en OPFS.
- **Main Store:** MySQL/Postgres gestionando las entradas del CMS de forma normalizada.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Setup de Web Workers para correr Transformers.js en thread separado sin congelar UI.
- [ ] Sub-Agente B: Orama in-memory DB configuration and Indexing Pipeline.
- [ ] Sub-Agente C: Command Palette interactiva (tipo Raycast) para invocar las consultas.

---
*Ninja Framework v5.1 - Módulo de Expansión Pro
