# 🥷 NINJA v3.2 — MODO 3: HÍBRIDO (ORQUESTADOR + EJECUTORES)

## 📌 Descripción del Modo
El **Modo 3** es la "Arquitectura Definitiva". Aquí combinamos la genialidad inigualable del modelo Elite en Antigravity para la Ingeniería Superior, y la fuerza bruta concurrente de los modelos Standard de OpenCode para teclear el código.

- **Antigravity (Ninja Principal)** = Arquitecto de Software, PM, Auditor QA.
- **OpenCode (Ninja Sub-Agentes)** = Programadores Junior-Senior ultra-especializados.

---

## 🚀 El Flujo Maestro (Cómo Operar)

### PASO 1: La Planificación Arquitectónica (Antigravity)
Dirígete a tu sistema principal (Antigravity) con el modelo Elite y pídele que **genere los planes y prompts de delegación**.

> **Prompt Inicial al Orquestador**:
> "Ninja, estamos operando en Modo 3 (Híbrido). Necesito desarrollar [Feature/App]. Tu trabajo es generar la arquitectura de carpetas, sugerir el stack de `.agents/skills/`, y, lo más importante, devolverme **Puntos de Delegación** (Prompts precisos y optimizados para ingeniería de sub-agentes en OpenCode que no superen el contexto de un modelo standard). Dale a cada Prompt un rol de sub-agente (UI, Backend, etc.)."

**El Orquestador te devolverá**:
Un plan maestro en markdown con tablas de tareas, además de cuadros de texto copiables.

---

### PASO 2: La Delegación Cíclica (OpenCode)
Una vez Ninja te genera el "Prompt de Delegación", tú (el humano) actúas de enrutador hipervisor:
1. Copias el **"Prompt de Delegación 1: Backend Setup"**.
2. Abres la interfaz OpenCode y seleccionas un modelo lógico (ej. `deepseek-v3` o `qwen3`).
3. Pegas el prompt. El modelo gratuito ejecutará la tarea quirúrgica usando el cerebro y las librerías `lib/` que Ninja Orquestador instruyó.
4. Repites con el Frontend, BD, etc., en terminales paralelas.

---

### PASO 3: Verificación Ciega & Auditoría QA (Antigravity)
Cuando los "obreros" (OpenCode) hayan construido los archivos, vuelves al "Arquitecto" (Antigravity):

> **Prompt Final al Orquestador**:
> "Ninja (Orquestador). El equipo de sub-agentes en OpenCode ha terminado la estructura en la carpeta `src/`. Por favor, actúa como **Ninja SecOps / QA**.
> 1. Analiza el código escrito.
> 2. Lanza procesos visuales automáticos (si es frontend) para evaluar Lighthouse / Responsiveness.
> 3. Ejecuta comandos de auditoría en los archivos recién generados para OWASP compliance.
> Reporta si el despliegue es Seguro y Listo (Production Ready)."

---

## ⚡ El Poder del Prompt Engineering Cruzado
Ninja v3.2 ya sabe que si le ordenas "**Opera en Modo Híbrido**", él no escribirá todo el código; él **escribirá los PROMPTS súper-optimizados (con CoT, Few-Shot y contexto delimitado a librerías de `lib/`)** que tú le darás a los modelos gratuitos. Es una Inteligencia Artificial creando instrucciones precisas en lenguaje nativo para otras Inteligencias Artificiales.
