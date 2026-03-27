# 📄 PRD PRO MODULE: Marketplace C2C (Two-Sided)
> *Requisito v5.2:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: El problema del "huevo y la gallina", equilibrando la oferta y demanda con transacciones financieras ciegas.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Prevención del fraude (Leakage) y gestión de liquidez. Los usuarios intentarán saltarse la plataforma para no pagar comisión.
**Meta Tecnológica:** Chat ofuscado y procesamiento de pagos con Escrow Systems (Retención de fondos hasta la entrega).

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Core Engine (Búsqueda):** Elasticsearch o Typesense / Algolia para full-text search, typos y filtros geo-espaciales <50ms.
- **Gestión de Pagos:** Stripe Connect (Custom / Express) para el split de comisiones y KYC de los vendedores.
- **Comunicaciones:** Websocket Chat Engine con NLP Filters que bloquean números de teléfono y links externos.
- **Librería Ninja:** Arquitectura Serverless para manejar variabilidad impredecible del tráfico (AWS Lambda / Vercel Edge).

## 3. 🛡️ Riesgos Legales y Transaccionales
- **Vector de Ataque Primario:** Fraude de contracargo (Chargebacks) y Blanqueo de Capitales.
- **Compliance Requerido:** Estricto KYC (Know Your Customer) usando Onfido o Stripe Identity antes de permitir extraer dinero de la plataforma.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Onboarding Segmentado):** Flujos UX separados para Buyers y Sellers. Setup de Stripe Connect y KYC.
- **Sprint 2 (Motor de Búsqueda):** Indexación del inventario en Typesense; faceting, ordenamiento por relevancia y reviews.
- **Sprint 3 (Transacción Segura):** El checkout, la retención Escrow, y el flujo de liberación de fondos (Confirmación de entrega).
- **Sprint 4 (Sistema de Retención Legal):** Chat entre partes (moderado por IA) y sistema de disputas (Refunds/Arbitraje).