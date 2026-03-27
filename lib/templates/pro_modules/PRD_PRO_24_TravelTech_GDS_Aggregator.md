# 📄 PRD PRO MODULE: TravelTech GDS Aggregator
> *Requisito v5.1:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: Buscadores de vuelos y hoteles. Intermediarios que parsean a múltiples proveedores lentos y sirven resultados homogeneizados al usuario final.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Sistemas Legado ("GDS"). Proveedores como Amadeus o Sabre usan SOAP/XML anticuados y tardan 10 segundos en responder una búsqueda de vuelos.
**Meta Tecnológica:** Agregación asíncrona masiva (Scatter-Gather pattern). Mostrar vuelos "a medida que llegan" sin bloquear la vista.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Backend Orchestrator:** Go o Node.js manejando múltiples \`Promise.allSettled\` o Goroutines simultáneas hacia 15+ APIs externas.
- **Client Side Communication:** Server-Sent Events (SSE) o WebSockets para ir "escupiendo" los vuelos encontrados a la UI sin esperar que termine el proveedor más lento.
- **Capa de Normalización:** Parsers rígidos (Zod Schema) que toman el XML arcaico del GDS 1 y el JSON del API 2, y los transforman en un único esquema \`FlightResult\`.
- **Caché Distribuido Estratégico:** Redis para memorizar la ruta "MAD-NYC" por 15 minutos; si otro usuario busca lo mismo, la respuesta es en 0.1s.

## 3. 🛡️ Riesgos Transaccionales en B2B
- **Vector de Riesgo Primario:** Phantom Inventory (El usuario hace clic en comprar un vuelo de $100 que el GDS ya vendió hace 2 minutos).
- **Mitigación Mandatoria:** Flujo en 2 pasos. Búsqueda ligera, seguida de una verificación de precio dura (Re-pricing) obligatoria antes de autorizar el checkout.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Architecture & Connectors):** Crear la interfaz de adaptador. Conectar el Proveedor 1 y Proveedor 2; aplicar normalización a JSON puro.
- **Sprint 2 (Scatter-Gather & SSE):** Habilitar el endpoint que dispara 10 solicitudes paralelas, y transmitir al frontend eventos persistentes de \`CHUNK_RESULT\`.
- **Sprint 3 (UI Reactiva e Islands):** Interfaz frontend con skeletal loaders, filtros de escala/precio en lado cliente (WebWorker filtering) para no depender de la latencia de re-búsqueda.
- **Sprint 4 (Booking y Facturación):** Flujo de Re-price, retención de fondos (Stripe Auth/Capture) y emisión final (Ticketing) enviando el PNR al usuario por Mailgun.`
