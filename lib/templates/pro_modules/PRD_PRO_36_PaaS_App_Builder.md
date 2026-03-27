# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_36_PaaS_App_Builder)
> *Optimizador para: Retool Clones, Grafana Dashboards Custom, Low-Code Editors.*
> *Requisito v5.1:* **Tech Radar Amplification** [x] Custom Dashboard Marketplace / Plugin System.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** Los clientes empresariales necesitan conectar sus propias bases de datos SQL y crear dashboards privados sin la fricción de pedir desarrollos al equipo interno y codificando duro.
**Solución:** Una infraestructura App-Builder LowCode que permite la inyección de Data Sources de terceros de manera segura y compila código dinámicamente.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** Pluggable Architecture / Platform as a Service (PaaS).
- **Core Pattern (v5.1):** **Plugin Module System** inspirado en Grafana / Appsmith. Sandboxed Iframes / JS Evaluation (`jail-js` u Web Workers aislados).

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Visual Node Editor / Query Builder:** `react-querybuilder` o editores de visual nodes avanzados (`React Flow`) para enlazar consultas a widgets.
- **Code Execution Sandbox:** `Monaco Editor` embebido para escribir JS lógico customizado, con validación AST para bloquear intrusiones `window.localStorage`.
- **UI Render Engine:** Layout Absolute Engine parecido al PRO_35 pero con event triggers (On Click -> Trigger Query Y -> Mutate Component Z).

## 4. ⚙️ Backend & Microservicios Core
- **Proxy Server (Secure Gateway):** Backend escrito en Go o Rust (alto throughput) para enviar proxys a las BD de los terceros sin revelar IPs del cliente y eludiendo CORS.
- **Data Source Engine:** Soporte nativo y seguro encapsulado para Postgres, MySQL, REST API Auth, y MongoDB dentro del worker.

## 5. 🗄️ Estrategia de Base de Datos y State
- **Tenant DB:** Multi-tenant estricto separando los Data Sources. Secrets encriptados (KMS) pre-guardado.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Sandboxing Frontend, React Flow, y Monaco Code Editor Integrator.
- [ ] Sub-Agente B: Query Gateway Backend Proxy capaz de rutear queries a PostgreSQL ajeno con TLS.
- [ ] Sub-Agente C: UI Builder y Property Pane (Barra lateral de edición tipo Figma/Retool).

---
*Ninja Framework v5.1 - Módulo de Expansión Pro
