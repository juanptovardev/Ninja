# 📄 PRD NINJA: THE PRO-MASTER (PRD_PRO_34_WebDaw_Audio_Synthesizer)
> *Optimizador para: Herramientas tipo Ableton Web, Editores de Podcasts, Sintetizadores.*
> *Requisito v5.1:* **Tech Radar Amplification** [x] Web Audio Worklets & WASM.

## 1. 🎯 Tesis del Producto y Value Proposition
**Problema:** El API clásico HTML5 Audio introducía clicks, latencia inmanejable e interrupciones del hilo al secuenciar instrumentos musicales.
**Solución:** Uso estricto de **Audio Worklets** ejecutándose en un hilo dedicado para el DSP (Digital Signal Processing) y renderizado de samples sub-milisegundo para software musical (DAWs) "Pro".

## 2. 🏛️ Arquitectura del Sistema (Macro)
- **Topología:** Browser-based Digital Audio Workstation (DAW).
- **Core Pattern (v5.1):** **Web Audio API (AudioWorkletNode)** y librerías especializadas como `Tone.js`.

## 3. 🖥️ Frontend Engine (Web/Mobile)
- **Audio Context Manager:** Control absoluto sobre el tiempo del `AudioContext` nativo (Time scheduling no basado en `setTimeout`).
- **Worklet Processors:** Archivos aislados (JavaScript plano o WASM C++) para cálculos granulares por 128-samples block.
- **Waveform Viz:** Canvas Reactivo sincronizado con `AnalyserNode` para fast-Fourier transforms (FFT) u osciloscopios de 60fps.

## 4. ⚙️ Backend & Microservicios Core
- **Cloud Rendering Export:** Microservicio Serverless basado en FFMPEG o AWS MediaConvert para hacer un bounce a MP3/WAV sin bloquear la pestaña web.
- **Collab Engine:** PartyKit para un modo "Jam" (sincronizando posiciones de clips vía Yjs).

## 5. 🗄️ Estrategia de Base de Datos y State
- **State Temporal:** Zustand masivo para almacenar posiciones, volumen, FX parameters y Piano Roll MIDI Notes.
- **Storage DB:** AWS S3 Bucket para guardar presets comunitarios.

## 6. 🥷 Despliegue Multi-Agente (OpenCode Mapping)
- [ ] Sub-Agente A: Integrar AudioContext y nodos principales de Tone.js (Sints, Samplers, FX Buses).
- [ ] Sub-Agente B: Lógica de Línea de Tiempo (Sequencer) y scheduling de eventos rítmicos.
- [ ] Sub-Agente C: Interfaz Compleja: Piano Roll, Knobs giratorios con SVG, y Canvas Waveforms.

---
*Ninja Framework v5.1 - Módulo de Expansión Pro
