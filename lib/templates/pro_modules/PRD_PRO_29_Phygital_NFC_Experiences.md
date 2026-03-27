# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_29_Phygital_NFC_Experiences)
> *Optimizador para: Museos, Retail Físico, Eventos, Credenciales "Tap-to-Web".*
> *Requisito v5.2:* **Tech Radar Amplification** [x] Web NFC Integration.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** La fricción de escanear códigos QR en entornos físicos interrumpe la experiencia del usuario.
**Solución:** Experiencias "Phygital" donde los usuarios interactúan con objetos físicos acercando su móvil; activando inmediatamente Web Apps enriquecidas mediante `NDEF` (Web NFC API) sin instalación de apps nativas.

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** PWA (Progressive Web App) + Interfaz de Hardware Edge.
- **Core Pattern (v5.2):** **W3C Web NFC spec (`NDEFReader` / `NDEFWriter`)**.

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Feature Detection:** Comprobación estricta de `if ('NDEFReader' in window)` y manejo de fallbacks (QR code).
- **Scanner UI:** Modales intuitivos de "Acerque su teléfono al Tag Mágico" gestionados en Zustand.
- **Micro-Interactions (Framer Motion / GSAP):** Feedback visual inmediato a los 250ms del barrido NFC.
- **Installability:** Service Workers configurados como PWA estricta (Display Standalone).

## 4. ⚙️ Backend & Microservicios Core
- **Validation Engine:** Endpoint SSR/Edge para desencriptar el payload NDEF y validar firma criptográfica contra falsificaciones de tags NFC.
- **Event Tracker:** Analíticas granulares geo-localizadas (Si el usuario autoriza) al hacer "Tap".

## 5. 🗄️ Estrategia de Base de Datos y State
- **Analytics DB:** ClickHouse o Tinybird para ingestión de eventos físicos masivos.
- **Relational Map:** Postgres mapeando UID del NFC contra el Asset/ID digital de la campaña.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Flujo de PWA, Manifest y API Web NFC local.
- [ ] Sub-Agente B: Backend para validación criptográfica y rastreo de Analytics en ClickHouse.
- [ ] Sub-Agente C: Interfaz UX de escanéo, animaciones de loading magnéticas y feedback.

---
*Ninja Framework v5.2 - Módulo de Expansión Pro
