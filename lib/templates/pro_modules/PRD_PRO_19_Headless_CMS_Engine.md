# 📄 PRD PRO MODULE: Headless CMS Engine
> *Variante Especializada Ninja PRO: Sistemas para gestión de contenido desacoplado de su presentación. Redacciones o generadores de Assets de marketing B2B.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Agnosticismo Extremo de Frontend. El CMS debe poder nutrir de JSONs a un Apple Watch, a una web de React y a una valla publicitaria conectada a internet, sin saber a quién le habla.
**Meta Tecnológica:** API GraphQL pura combinada con un esquema fuertemente tipado e inmutable, con control de revisiones jerárquico.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Core Framework (si Custom):** Payload CMS, Directus, o Sanity (BaaS), usando Node.js para extensión dinámica de validaciones.
- **Protocolo de Entrega:** API GraphQL (Apollo Server) con filtros profundos, o REST optimizado.
- **Base de Datos Documental/Relacional:** MongoDB (Ideal por el polimorfismo de campos variables) o Postgres JSONB.
- **Asset Pipeline:** Entrega (Delivery) de imágenes auto-optimizadas con transformaciones por query (ej: \`?w=400&h=400\`) usando Sharp.JS o Imgix.

## 3. 🛡️ Permisos y Moderación Jerárquica
- **Vector de Riesgo Primario:** Publicación no autorizada. Redactores junior alterando el homepage corporativo en producción directamente sin pasar por Quality Assurance.
- **Mitigación Mandatoria:** Flujos de Borradores (Drafts/Published States) integrados en el core del Payload y webhooks que disparan entornos de Preview efímeros en Vercel.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Schema Block Builder):** Definir colecciones flexibles (Blocks/Widgets) donde los editores arrastran componentes sin romper la lógica del frontend.
- **Sprint 2 (RBAC e Identidad):** Perfiles de "Contributor", "Editor", "Publisher" y "Admin", limitando la lectura/escritura a campos específicos de la DB.
- **Sprint 3 (Delivery Caching & ISR):** Configurar Redis o los "Cache Tags" de CDN para que, al publicar un artículo, se invalide instantáneamente ese fragmento en el Frontend (On-demand Revalidation).
- **Sprint 4 (Media Library Optimization):** Galería centralizada conectada a S3, implementando \`blurhashes\` para placeholders y compresión WEBP/AVIF al vuelo.`
