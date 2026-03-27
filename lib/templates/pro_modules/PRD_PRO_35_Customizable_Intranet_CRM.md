# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_35_Customizable_Intranet_CRM)
> *Optimizador para: Sistemas Administrativos de Agencias, CRMs Drag-and-Drop, Hubs Internos.*
> *Requisito v5.2:* **Tech Radar Amplification** [x] D&D Widgets, Batch Background Tx.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** Cada rol en una empresa requiere un dashboard diferente, y programar vistas estáticas es inviable a escala B2B corporativa.
**Solución:** Sistema de widgets arrastrables en el que los administradores personalizan su vista (Sales Pipeline vs IT Metrics), soportado por encolamiento de tareas pesadas en Node.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** SaaS B2B Multi-Rol System con Dashboard Dinámico.
- **Core Pattern (v5.2):** **Drag-and-Drop Grid Layout** (`react-grid-layout`, `@dnd-kit/core`). **Background Job Queues** (`BullMQ`).

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Widget Factory:** Diccionario de 20+ componentes (KPIs, Charts, Tasks) que se renderizan perezosamente (Lazy load) según la estructura JSON guardada del layout del usuario.
- **Optimized DnD:** Re-renders de reactividad controlados usando memorización y librerías con hardware-acceleration (Translate3d) en vez de DOM top/left mutations.
- **Dark Mode Native:** Estandarización de `next-themes` y Shadcn UI.

## 4. ⚙️ Backend & Microservicios Core
- **Task Worker (BullMQ):** Importaciones masivas en CSV de leads enviadas a Redis, procesadas de a 1,000 en el backend Node para evitar CPU Lock o timeouts a Vercel/Render.
- **Webhooks:** Notificaciones de cron o finalización de trabajos impulsadas por SSE (Server Sent Events) o ActionCable.

## 5. 🗄️ Estrategia de Base de Datos y State
- **Database Relacional:** Postgres para persistencia de Entidades y JSONB para la definición de la malla de "Mis Widgets" (`user_layouts`).
- **Cache Local:** React Query/SWR refrescando queries automáticamente.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Definición de Postgres JSONB Schema + Worker Background Sync en Redis.
- [ ] Sub-Agente B: Creación del Drag-and-Drop Responsive Grid System de 12 columnas.
- [ ] Sub-Agente C: Creación de la fábrica dinámica de de Widgets tipo CRM.

---
*Ninja Framework v5.2 - Módulo de Expansión Pro
