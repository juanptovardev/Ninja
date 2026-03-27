# 📄 PRD PRO MODULE: Video Streaming Platform
> *Requisito v5.2:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: Arquitectura para ingesta, transcodificación y distribución global de video OTT con DRM y protección de contenido.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Ancho de Banda y Formatos de Dispositivo. El usuario puede ver el video en un iPhone 4G en una zona rural o en un Smart TV 4K conectado a fibra.
**Meta Tecnológica:** Transcodificación multi-bitrate (HLS/DASH) dinámica y distribución en Edge (CDN) masiva sin saturar el Origin Server.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Video Orchestration:** AWS MediaLive/MediaConvert, Mux API, o Cloudflare Stream.
- **Distribución CDN:** Redes optimizadas para media (Fastly, Akamai, Cloudflare Edge).
- **Video Player (Client):** Video.js o hls.js (Web) / ExoPlayer (Android) / AVPlayer (iOS).
- **Protección de Derechos:** Apple FairPlay, Google Widevine DRM.

## 3. 🛡️ Riesgos Económicos y Antipiratería
- **Vector de Falla Primario:** Costos de Egress disparados por bots scrapeando archivos de video o ataques DDoS al servidor de origen.
- **Mitigación Mandatoria:** Uso de Tokens temporales de URL firmadas (Signed URLs/Cookies) validadas en el Edge Worker, expirando a los 5 minutos de no uso.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Ingesta y Presets):** Construir la cola de carga; cuando un usuario sube un MP4, se dispara un webhook a AWS MediaConvert para generar resoluciones 1080p, 720p, 480p, 360p.
- **Sprint 2 (Player Resiliente):** Implementar hls.js en el frontend con ABR (Adaptive Bitrate Streaming) que baje o suba la calidad según el test de velocidad nativo del cliente.
- **Sprint 3 (Analítica de Playback):** Event Sourcing para capturar heartbeats cada 5 segundos ("Minutos consumidos", "Rebuffering events").
- **Sprint 4 (DRM y Rentas):** Sistema transaccional VOD (Video on Demand) con bloqueo de reproducciones simultáneas por cuenta.`
