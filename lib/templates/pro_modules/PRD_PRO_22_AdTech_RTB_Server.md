# 📄 PRD PRO MODULE: AdTech Real-Time Bidding (RTB) Server
> *Requisito v5.1:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: El entorno más hostil de la web. Servidores de subastas que procesan millones de requests diarios con restricción perimetral de <50 milisegundos.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** La latencia. En AdTech, si el servidor tarda >100ms en responder a la subasta de un Exchange (ej. Google Ad Manager), pierdes la oportunidad de imprimir el banner.
**Meta Tecnológica:** Arquitectura Edge-first escrita en lenguajes de cero-GC (Garbage Collection) o GC determinista (Rust, Zig, C++), evitando el Main Thread blocking.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Bidding Engine (Bidder):** Servidor HTTP hiper-minimizado en Rust (Actix-Web / Axum) o Go (Fiber) hosteado en Edge (Cloudflare Workers / Fly.io).
- **Core State (Presupuesto):** Redis Enterprise / Aerospike (Clustered In-Memory KV Store) para descontar centavos del presupuesto en un microsegundo.
- **Analítica de Impresiones:** Apache Kafka (Event bus) para escupir los logs de clicks/impresiones a un Data Warehouse (ClickHouse) sin bloquear el Bidder.
- **Librería Ninja:** Manejo de concurrencia agresiva usando \`async/await\` bajo capas de memoria compartida sin locks gruesos (Mutex).

## 3. 🛡️ Prevención de Fraude y Costos
- **Vector de Riesgo Primario:** Click Fraud / Botnets simulando interacciones humanas para agotar los $10,000 de presupuesto en 5 minutos.
- **Mitigación Mandatoria:** Análisis de huella dactilar de navegador (Device Fingerprinting), IP Reputational scoring previo a permitir pujar. 

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Micro-Bidder):** Escribir el servidor HTTP que reciba el JSON de OpenRTB, evalúe reglas estáticas (Geo, Horario) y responda en <10ms.
- **Sprint 2 (Pacing & Budgeting):** Sistema Redis que descuente el dinero exacto de la campaña activa; si el presupuesto es $0, el bidder descarta la query temprano (Early Return).
- **Sprint 3 (Event Tracking):** Endpoint de seguimiento de pixeles (1x1 transparente) para registrar Impresiones y Clicks, inyectando al stream Kafka.
- **Sprint 4 (Dashboard de Anunciante):** Panel React/Next.js con Next-Auth para que el anunciante vea el dinero gastado y suba sus banners (Assets a S3).`
