# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_26_MicroFrontend_SuperApp)
> *Optimizador para: Super Apps B2C/B2B con múltiples equipos.*
> *Requisito v5.2:* **Tech Radar Amplification** [x] Module Federation.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** Diferentes equipos construyen funcionalidades separadas y el monolito tarda horas en compilar, bloqueando releases.
**Solución:** Una "Super App" donde cada feature (Ej. Chat, E-commerce, Feed) es un micro-frontend desplegado independientemente pero consumido en un único shell.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** Micro-Frontends (MFE) Architecture.
- **Orquestador Central (Shell):** Aplicación Host (Next.js o React SPA).
- **Core Pattern (v5.2):** **Module Federation** (usando Webpack 5 Module Federation, `single-spa` o `Qiankun`).

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Estrategia de Renderizado:** Dynamic Client-Side Injections de remotos.
- **Data Sharing:** Zustand store global compartido a través de context bridge entre remotos.
- **Event Bus:** Comunicación entre Micro-frontends vía CustomEvents o Window postMessage seguros.
- **Design System:** Zero-Runtime CSS (Vanilla Extract o Tailwind v4 compartiendo tokens globales).

## 4. ⚙️ Backend & Microservicios Core
- **Topología:** Microservicios RESTful / GraphQL Federation (Apollo Federation).
- **Gateway:** API Gateway (Kong/Tyk) ruteando peticiones según el dominio MFE.

## 5. 🗄️ Estrategia de Base de Datos y State
- Cada MFE es dueño de su base de datos.
- **Event Sourcing** para sincronizar estados entre microservicios Bounded Context.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Responsable del Shell (Host App) y configuración de Webpack Module Federation.
- [ ] Sub-Agente B: MFE Remoto 1 (Auth & User Profile).
- [ ] Sub-Agente C: MFE Remoto 2 (Dashboard/Core Feature).

---
*Ninja Framework v5.2 - Módulo de Expansión Pro
