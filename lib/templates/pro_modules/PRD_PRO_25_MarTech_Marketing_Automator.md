# 📄 PRD PRO MODULE: MarTech Marketing Automator
> *Requisito v5.1:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: Constructores de Embudos (Funnels) y Campañas de Correos visuales tipo Klaviyo, Mailchimp o Zapier Nodes.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Tareas Programadas y Árboles de Decisión Masivos. Orquestar "Si el usuario X hace clic aquí, esperar 3 días y enviar mail Y; si no, esperar 1 hora y enviar SMS Z" para 5 millones de leads.
**Meta Tecnológica:** Motor de Reglas (Rule Engine) desacoplado persistido en una base grafo o relacional, procesado por workers Cron con retries escalables.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Motor de Orquestación (Tasks):** Temporal.io o AWS Step Functions. Provee ejecución de tareas a largo plazo que sobrevive reinicios del servidor.
- **Editor Visual Drip:** React Flow o XState Visualizer en el frontend para que el Marketer dibuje las flechas y la lógica condicional del funnel.
- **Email/SMS Delibery:** Integración nativa con Amazon SES (Emails Masivos) y Twilio (SMS), monitoreando bounces (rebotes) y spam complaints vía Webhooks.
- **Event Tracker:** Endpoints Ingest de altísima concurrencia (RabbitMQ / Kafka) para registrar pixeles abiertos, clics de botones y visitas de páginas.

## 3. 🛡️ Entregabilidad (Deliverability) y Cumplimiento
- **Vector de Riesgo Primario:** Blacklisting y Reputation Drop de la IP del servidor. Un cliente subiendo una base de datos comprada puede mandar el SaaS entero a Spam.
- **Mitigación Mandatoria:** Rotación de IPs, uso agresivo de listas de supresión locales, verificación DNS (DKIM/SPF) y pausas de cuenta automáticas al llegar al 1% de Bounce Rate.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Visual Node Builder):** El frontend Drag & Drop (React Flow); compilar el árbol visual a un JSON de estado determinista listo para el backend.
- **Sprint 2 (Event Tracking & Webhooks):** Endpoint servidor capaz de ingestar 5k tracking events por segundo, asociar el ID de sesión, y guardarlos en ClickHouse/Postgres.
- **Sprint 3 (Motor Worker Temporal.io):** Consumidor que lee el JSON State; "Inicia paso 1 -> Espera 2 días (Sleep) -> Revisa base de datos -> Ejecuta paso 2".
- **Sprint 4 (Dashboard de Métricas):** Paneles analíticos detallando Opens, Clicks, Conversiones de eCommerce y Revenue Atribuido por rama condicional.`
