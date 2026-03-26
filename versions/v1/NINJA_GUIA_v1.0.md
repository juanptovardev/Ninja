# 🥷 NINJA — GUÍA MAESTRA DE USO v1.0

Bienvenido a **Ninja**, el Ingeniero de Software Profesional creado con IA.

---

## ¿Qué es Ninja?
Ninja es un sistema de ingeniería de software de élite basado en IA, que integra 85+ repositorios profesionales de GitHub para construir software production-ready desde el primer día.

**Filosofía**: *"Código limpio, modular y listo para producción. Si no es escalable, no es Ninja."*

---

## Activación Global

### En tu proyecto actual (recomendado)
Ninja se activa automáticamente si la carpeta `.agents/` está presente en el proyecto.

### Con comando `/`
Al escribir `/` en el IDE, encontrarás el activador de Ninja nativo:
- **`/ninja`** — Activar el perfil Ninja completo
- **`/ninja-ui`** — Modo enfocado en UI/Frontend
- **`/ninja-backend`** — Modo enfocado en Backend/APIs
- **`/ninja-ai`** — Modo enfocado en IA/Automatización
- **`/ninja-saas`** — Modo enfocado en Arquitectura SaaS
- **`/ninja-secure`** — Auditoría de seguridad OWASP
- **`/ninja-review`** — Code review siguiendo reglas R1-R12

---

## Modos de Aplicación

### 🟡 Modo Draft (Velocidad)
Para prototipar rápido. Ninja prioriza entregar código funcional completo.
```
Activación: "Modo Draft — necesito [X] rápido"
```
- Clona el boilerplate más cercano al objetivo
- Usa shadcn/ui + Tailwind como base sin customización profunda
- Conecta Supabase para backend instantáneo
- No requiere tests unitarios (los añade al final)

### 🟠 Modo Core (Estabilización)
Para desarrollo estable con buenas prácticas.
```
Activación: "Modo Core — necesito [X] bien hecho"
```
- Arquitectura feature-based
- Reglas R1-R12 aplicadas completamente
- TypeScript strict + Zod validation
- Tests unitarios (70% coverage mínimo)

### 🔴 Modo Elite (Máxima Optimización)
Para producción enterprise con todos los estándares.
```
Activación: "Modo Elite — necesito [X] listo para producción"
```
- Todo lo de Modo Core
- Docker Compose completo
- CI/CD GitHub Actions configurado
- Lighthouse 90+ garantizado
- OWASP + Gitleaks + promptfoo (si hay AI)
- Pruebas E2E con Playwright

---

## Comandos Disponibles

| Comando | Descripción |
|---------|-------------|
| `/ninja` | Activa el perfil completo de Ninja |
| `/ninja-init [tipo]` | Scaffolding de proyecto: `saas`, `landing`, `dashboard`, `api`, `mobile` |
| `/ninja-ui` | Carga skills de UI (Aceternity, shadcn, GSAP) |
| `/ninja-backend` | Carga skills de backend (Hono, tRPC, Drizzle) |
| `/ninja-ai` | Carga skills de IA (Vercel AI SDK, LangChain, Ollama) |
| `/ninja-saas` | Carga arquitectura SaaS (multi-tenancy, Stripe, RBAC) |
| `/ninja-secure` | Auditoría de seguridad (OWASP, Gitleaks, Helmet) |
| `/ninja-review` | Review de código contra reglas R1-R12 |

---

## Protocolo de Repositorios

Cuando Ninja necesita usar un repo, sigue este protocolo:

| Tipo | Repos | Acción |
|------|-------|--------|
| 🔵 Dependencia | shadcn, Framer Motion, tRPC, Hono, Drizzle... | `npm install` |
| 🟢 Boilerplate | Open SaaS, ixartz, Ignite... | `git clone --depth 1` |
| 🟡 Copy-Paste | Aceternity UI, Magic UI, Background Snippets... | Leer `.tsx` → adaptar |
| 📖 Referencia | OWASP, Clean Code, system-design-primer... | Extraer principios → aplicar |

---

## Casos de Uso

### 1. Landing Page SaaS
```
"Crea una landing page para [producto] con hero animado, sección de features y pricing"
→ Ninja usa: AstroWind o Blazity + Aceternity UI + Motion Primitives + shadcn Pricing Card
```

### 2. Dashboard Admin
```
"Crea un dashboard con tabla de usuarios, métricas y sidebar"
→ Ninja usa: TailAdmin o DashWind + shadcn/ui + DaisyUI Charts + Drizzle ORM
```

### 3. Chat con IA
```
"Añade un chat con AI a mi app next.js"
→ Ninja usa: Vercel AI SDK (useChat) + OpenAI GPT-4o-mini + shadcn UI
```

### 4. App Mobile
```
"Crea una app mobile con autenticación y navbar"
→ Ninja usa: Ignite Boilerplate + Expo Router + Supabase Auth
```

### 5. Backend REST API
```
"Crea una API REST para [recurso] con auth y validación"
→ Ninja usa: Hono + Zod + Drizzle + Supabase
```

---

## Estructura del Sistema Ninja

```
Ninja/
├── .agents/
│   ├── rules/
│   │   ├── core.md        (R1-R12 — Calidad, Arquitectura, DB, DevOps)
│   │   ├── frontend.md    (UI, Animaciones, SEO, Accesibilidad)
│   │   └── security.md    (OWASP, XSS, CSRF, JWT, Cookies)
│   ├── skills/
│   │   ├── ui_visuals.md     (Aceternity, MagicUI, GSAP, shadcn)
│   │   ├── backend_logic.md  (Hono, tRPC, Drizzle, BullMQ)
│   │   ├── ai_agentic.md     (Vercel AI, LangChain, Ollama, n8n)
│   │   └── saas_architecture.md (Open SaaS, Stripe, RBAC, Mobile)
│   ├── memory/
│   │   ├── master_index.md  (85+ repos catalogados con links)
│   │   └── code_patterns.md (Hooks, API routes, Docker, utilidades)
│   └── workflows/
│       └── activator.md    (Inicialización global de Ninja)
├── Guias/
│   ├── 001-Ingeniería de Software Profesional.md
│   ├── 002-Mega Lista Para Antigravity.md
│   └── 003-Repositorios de Punta Fases.md
└── NINJA.md  ← Punto de entrada principal
```

---

## Próxima Fase (Ninja v2.0 — Concepto)
Al completar este sistema, la siguiente evolución incluirá:
1. **Ninja-CLI**: Generación de scaffolding automático con un comando
2. **Ninja Sync**: Actualización automática del master_index con versiones más recientes
3. **Ninja Agents**: Agentes autónomos de deploy + testing vía n8n y Dify
4. **Ninja Review Bot**: GitHub Action que hace code review automático con reglas R1-R12
