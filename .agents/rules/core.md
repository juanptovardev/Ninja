# 🥷 NINJA — CORE RULES (R1-R12)

Reglas no negociables de calidad e ingeniería. Basadas en:
- `clean-code-javascript` → https://github.com/ryanmcdermott/clean-code-javascript
- `project-guidelines` → https://github.com/elsewhencode/project-guidelines
- `nodebestpractices` → https://github.com/goldbergyoni/nodebestpractices

---

## R1: Calidad de Código
- SIEMPRE TypeScript con `strict: true`
- SIEMPRE ESLint + Prettier desde el inicio
- NUNCA tipo `any` — usar `unknown` + type guards o generics
- Variables y funciones con nombres descriptivos y auto-documentados
- Principios: Single Responsibility, DRY, KISS, YAGNI
- MAX longitud de función: 20 líneas → si es mayor, decomponerla
- MAX longitud de archivo: 200 líneas → si es mayor, dividir en módulos
- SIEMPRE barrel exports (`index.ts`) para imports limpios
- JSDoc en funciones exportadas y lógica compleja
- NUNCA `console.log` en producción — usar logger (pino, winston)

## R2: Arquitectura
- Estructura basada en **features**, NO en tipos:
  ```
  src/
  ├── features/
  │   ├── auth/
  │   │   ├── components/
  │   │   ├── hooks/
  │   │   ├── services/
  │   │   ├── types/
  │   │   └── utils/
  │   ├── dashboard/
  │   └── payments/
  ├── shared/
  │   ├── components/
  │   ├── hooks/
  │   ├── lib/
  │   └── utils/
  ├── config/
  └── app/
  ```
- Separar lógica de negocio de componentes de UI
- Custom hooks para encapsular lógica stateful
- Repository pattern para acceso a datos
- Variables de entorno para configuración (NUNCA hardcodear)
- Error boundaries en React

## R3: Frontend
- Server Components por defecto en Next.js (añadir `"use client"` solo cuando sea necesario)
- shadcn/ui + Tailwind como sistema de componentes base
- Dark mode desde el día uno con CSS variables
- Componentes responsive (mobile-first)
- Framer Motion para animaciones: `AnimatePresence`, `layoutId`, `whileHover`, `whileTap`
- GSAP solo para animaciones complejas de scroll y efectos cinematográficos
- Lazy load de componentes pesados e imágenes
- Skeleton loaders, NUNCA spinners
- `next/image` para optimización de imágenes
- SEO completo: meta tags, OG images, structured data
- Lighthouse 90+ en Performance, A11y, Best Practices, SEO
- NUNCA inline styles — usar Tailwind o CSS modules
- HTML semántico: `nav`, `main`, `section`, `article`, `aside`, `footer`
- Accesibilidad WCAG 2.1 AA

## R4: Animaciones y Efectos Visuales
- Jerarquía de animaciones:
  1. CSS transitions → hover/focus simples
  2. Tailwind animate utilities → animaciones básicas
  3. Framer Motion → animaciones de componentes
  4. GSAP → scroll-triggered y timelines complejos
  5. tsParticles/Lottie → backgrounds e ilustraciones
- NUNCA animar propiedades de layout (width, height, top, left)
- `will-change` con moderación, remover tras la animación
- `prefers-reduced-motion` media query para accesibilidad
- Target: 60fps en todas las animaciones
- Aceternity UI / Magic UI para hero sections y landing pages
- Motion Primitives para elementos UI interactivos

## R5: Backend y APIs
- Validar TODOS los inputs con Zod (backend Y frontend)
- tRPC para APIs internas (proyectos TypeScript full-stack)
- REST + OpenAPI para APIs públicas/externas
- Rate limiting en todos los endpoints
- Request ID tracking para debugging
- Códigos HTTP correctos: 200, 201, 204, 400, 401, 403, 404, 429, 500
- Paginación cursor-based (preferida sobre offset)
- Versionar APIs públicas (`/api/v1/`)
- Respuestas de error estructuradas:
  ```json
  { "error": { "code": "ERROR_CODE", "message": "...", "details": [] } }
  ```
- NUNCA exponer detalles de errores internos en producción
- Endpoint de health check: `/api/health`
- BullMQ para tareas > 30 segundos
- Redis para caching, sesiones y rate limiting
- Socket.IO para features en tiempo real

## R6: Base de Datos
- Drizzle ORM para nuevos proyectos (más ligero, performance, SQL-like)
- Prisma cuando sea prioritaria la familiaridad del equipo
- SIEMPRE migraciones escritas — NUNCA modificar schema manualmente
- Índices en columnas de WHERE, JOIN, ORDER BY
- Soft deletes (`deletedAt`) para datos de usuario
- UUIDs o cuid2 para PKs — NUNCA auto-increment IDs en APIs
- Timestamps `created_at` y `updated_at` en todas las tablas
- Connection pooling en producción (PgBouncer o built-in)
- Supabase para prototipado rápido
- Estrategia de backup: diaria automatizada + antes de migraciones

## R7: Seguridad (OWASP)
- Helmet.js en Express/Fastify
- Sanitizar inputs — prevenir XSS e inyección SQL
- Consultas parametrizadas (ORMs lo manejan)
- CSRF en endpoints que cambian estado
- bcrypt/argon2 para hashing (NUNCA MD5/SHA)
- Rate limiting en auth: max 5 intentos/min
- HTTPS en producción con HSTS
- Cookies: `secure`, `httpOnly`, `sameSite`
- NUNCA secrets en código — usar env vars + vault
- CSP headers implementados
- JWT: verificar expiry, issuer, audience
- CORS configurado correctamente (NUNCA wildcard en producción)

## R8: SaaS
- Multi-tenancy desde el inicio (`tenant_id` en todas las tablas)
- RBAC: Owner > Admin > Member > Viewer
- Stripe webhooks para gestión de estado de pagos
- NUNCA confiar en estado de pago del cliente — verificar siempre en servidor
- Usage tracking y billing meters
- Onboarding flow para nuevos usuarios
- Feature flags para rollouts graduales
- Audit logging para operaciones sensibles
- Sistema de invitación con verificación por email
- Ciclo de suscripción: trial → active → past_due → canceled

## R9: Mobile
- React Native con Expo para apps cross-platform
- Ignite Boilerplate para proyectos React Native de producción
- Arquitectura offline-first con almacenamiento local
- Manejar todos los estados de red (loading, error, success, empty, offline)
- Pull-to-refresh e infinite scroll
- Optimizar imágenes y assets para ancho de banda móvil
- Probar en dispositivos reales, no solo simuladores
- Deep linking y universal links
- Push notifications correctamente configuradas

## R10: Integración de IA
- Vercel AI SDK para streaming chat en Next.js
- LangChain.js para workflows complejos (chains, agents, RAG)
- Ollama para inferencia local (desarrollo y features sensibles a privacidad)
- Dify para flujos AI visuales y despliegue
- n8n para conectar IA a servicios externos
- RAGFlow para IA con recuperación de documentos
- SIEMPRE streaming responses para contenido generado por IA
- Token usage tracking y cost management
- Guardrails: validación de input, filtrado de output
- Fallback strategies cuando los servicios de IA no estén disponibles
- Caché de respuestas AI cuando sea apropiado (Redis)
- NUNCA enviar datos sensibles a APIs externas sin consentimiento

## R11: Testing y QA
- Tests ANTES de desplegar a producción
- Pirámide de testing:
  - Unit (70%): Vitest/Jest — lógica de negocio y utilities
  - Integration (20%): React Testing Library — comportamiento de componentes
  - E2E (10%): Playwright — flujos críticos de usuarios
- Testear siempre: auth, payments, mutaciones de datos
- Mock de servicios externos en tests
- Coverage mínimo: 80% en lógica de negocio

## R12: DevOps y Producción
- Docker Compose para entorno de desarrollo local
- CI/CD con GitHub Actions:
  - PR: lint → type-check → test → build → preview deploy
  - Merge a main: todo lo anterior → deploy a producción
- Health checks y monitoring
- Logging estructurado (JSON)
- Error tracking (Sentry)
- Performance monitoring (Web Vitals)
- Preview deployments para PRs (Vercel/Netlify)
- Rollback strategy para deploys fallidos
- Semantic versioning para releases
