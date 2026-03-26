# 📄 PRD PRO MODULE: EdTech Adaptive LMS
> *Variante Especializada Ninja PRO: Sistemas de aprendizaje que alteran el contenido dinámicamente según la curva de olvido (Spaced Repetition) del alumno.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Video Streaming y Analytics en tiempo real. Entregar miles de horas de video en zonas de baja cobertura y rastrear cada "pausa" o "retraso" para alimentar a la IA predictiva de dificultad.
**Meta Tecnológica:** Video player con HLS (HTTP Live Streaming) adaptativo y un sistema de Event Sourcing que guarda telemetry de cada click sin matar el DB principal.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **CMS/LMS Backend:** Headless CMS (Sanity, Strapi) desacoplado del front para flexibilidad de contenido.
- **Video Delivery:** AWS MediaConvert, Mux, o Cloudflare Stream con DRM para evitar la piratería de cursos premium.
- **Motor SR (Spaced Repetition):** Redis o base grafo para rastrear el "Knowledge Tree" del alumno y programar cuestionarios algorítmicamente.
- **Gamificación (State):** Zustand o TanStack Query manejando la experiencia y medallas del usuario 100% en cliente (PWA).

## 3. 🛡️ Riesgos de Copyright y Trampas
- **Vector de Ataque Primario:** Bots descargando videos m3u8 saltando el DRM o account-sharing masivo.
- **Mitigación Mandatoria:** Widevine/FairPlay DRM y bloqueo agresivo de IPs concurrentes (Geo-fencing de tokens de sesión).

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Video & CMS Core):** Pipeline de subida de video, re-codificación automática HLS y despliegue del Player con DRM en el frontend.
- **Sprint 2 (Identity & Access):** Integración de pasarela B2C o "Seats" B2B para escuelas. Fingerprinting de hardware para bloquear account sharing.
- **Sprint 3 (Adaptive Testing Engine):** Generador de Quizzes dinámico consumido vía IA; si el alumno falla "Python Básico", el flujo retrocede.
- **Sprint 4 (Gamification Overlay):** Implementar las celebraciones (Canvas/Confetti), tablas de clasificación (Redis Sorted Sets) y el dashboard de tutores.`
