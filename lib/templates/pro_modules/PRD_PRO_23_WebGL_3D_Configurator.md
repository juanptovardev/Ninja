# 📄 PRD PRO MODULE: WebGL 3D Configurator
> *Requisito v5.1:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: Tiendas de e-commerce complejas donde el usuario ensambla un mueble, un coche o una joya en tiempo real con iluminación fotorealista.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Tamaño del Asset y Frame Rate. Un coche 3D en alta resolución pesa 500MB+; descargar eso en móvil crashea el navegador.
**Meta Tecnológica:** Pipeline de compresión de geometría (Draco / glTF) y render progresivo en WebGL/WebGPU manteniendo 60 Frames perceptibles.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Motor Gráfico:** Three.js o Babylon.js, optimizados mediante integraciones declarativas como React Three Fiber.
- **Model Storage:** Archivos \`.gltf\`/\`.glb\` comprimidos mediante Draco Compression, servidos desde un CDN Global con Brotli encoding.
- **Generación de Estado (Variaciones):** Redux / Zustand para manejar el "Árbol de piezas". Cambiar el "Pintura" a "Rojo" actualiza la textura Albedo en el material 3D instántaneamente.
- **Pricing Engine:** Cálculo estático (Client-side) de cuánto cuesta el coche según las piezas seleccionadas, validado por backend al hacer checkout.

## 3. 🛡️ Riesgos de Percepción y Conversión
- **Vector de Falla Primario:** Tiempos de carga inicial superlativos (Loading Screen of Death). Si la barra no se mueve rápido, el usuario abandona (Bounce rate > 70%).
- **Mitigación Mandatoria:** Deferred Loading. Cargar primero un modelo proxy de baja resolución (LOD 0) o un Wireframe interactivo mientras las texturas 4K descargan en Web Workers.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Canvas Optimization):** Montar el Scene graph, iluminación HDRI e integrar el script de glTF loader con Draco descompresión asíncrona.
- **Sprint 2 (Lógica Automotiva/Modulable):** UI Overlay (Tailwind CSS posicionado sobre el Canvas) que permite a través de Zustand alterar los Object3D (ej. Ocultar llanta A, Mostrar llanta B).
- **Sprint 3 (Cámara y Animaciones):** Suavizado de cámara (Lerp), restricciones de órbita y animaciones de cámara cinemática al cambiar de "Exterior" a "Interior".
- **Sprint 4 (Checkout API Handoff):** Generador de "BOM" (Bill of Materials) codificado en base64 que viaja a la API de Shopify o WooCommerce para asegurar el pago.`
