# 📄 PRD PRO MODULE: B2C Consumer Social Network
> *Variante Especializada Ninja PRO: Arquitectura enfocada en la retención celular, cargas virales asíncronas y latencia cero para el usuario final.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** El Feed Algorítmico y la latencia de Scroll. Si el usuario espera >0.5s por la siguiente imagen, hace swipe away.
**Meta Tecnológica:** Edge Caching absoluto y bases de datos NoSQL adaptadas para lecturas masivas y escrituras distribuidas (Fan-out on write).

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Core Engine (Base de Datos):** DynamoDB o ScyllaDB (escalabilidad NoSQL masiva).
- **Media Delivery:** CDN Edge con On-the-fly Image/Video Optimization (Ej: Cloudflare Images / Mux para HLS streaming).
- **Algoritmo de Feed:** Redis (Sorted Sets) para servir timelines pre-computados en submilisegundos.
- **Librería Ninja Frontend:** React Native / Expo (Mobile) o WebGPU Canvas rendering para smooth scrolling a 120 FPS.

## 3. 🛡️ Riesgos de B2C a Gran Escala
- **Vector de Ataque Primario:** Botnets farmeando likes o creando cuentas falsas masivas.
- **Moderación:** Uso de modelos Edge-AI o APIs de moderación visual (NSFW detection) asíncronas antes de que la imagen toque el S3 público.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Identidad y Grafo Social):** Auth Social rápida (Google/Apple). Diseño del grafo (Seguidores/Seguidos) usando bases orientadas a grafos.
- **Sprint 2 (Media Pipeline):** Carga asíncrona de media (Pre-signed URLs a S3), background jobs de compresión y transcoding.
- **Sprint 3 (Feed "Fan-out"):** Implementar el worker que distribuye una nueva publicación a las pre-caches de 10,000 seguidores en background.
- **Sprint 4 (Engagement Loops):** Push Notifications, WebSockets para likes en tiempo real y métricas de retención D1/D7/D30.