# 🚀 GUÍA FULL STACK: NINJA x OPENCODE (HÍBRIDO v3.2)

Este documento define el flujo de trabajo definitivo para el desarrollo de alta fidelidad, utilizando una arquitectura de **Orquestación Híbrida**.

---

## 🏗️ La Arquitectura de Poder

| Nivel | Entorno | Modelo | Rol Ninja |
|-------|---------|--------|-----------|
| **Nivel 1: Cerebro** | **Ninja (Principal)** | Pro / Ultra (Elite) | **Orquestador**: Planificación, Arquitectura y Verificación Visual. |
| **Nivel 2: Ejecución** | **OpenCode (Terminal)** | Flash / Standard (Eficiente) | **Sub-Agentes**: Escritura de código, Scaffolding y Testing. |

---

## 🔄 Flujo de Trabajo Paso a Paso

### 1. El Plan (Ninja v3.2 Orchestrator)
El usuario inicia la tarea con el modelo más potente.
- **Acción**: `Ninja, planea la feature [X] usando protocolos R1-R12.`
- **Entregable**: Un `implementation_plan.md` detallado y la estructura de archivos.

### 2. La Ejecución (OpenCode Sub-Agents)
Se delega la construcción pesada a los sub-agentes en OpenCode (optimizados para modelos más rápidos).
- **Acción**: Seguir la guía `GUIA_OPENCODE.md` ejecutando comandos `/ninja-init` y `/ninja-logic`.
- **Foco**: Cumplir el plan del Nivel 1 usando la biblioteca `lib/` local.

### 3. La Verificación (Ninja Elite Review)
El Nivel 1 retoma el control para la auditoría final.
- **Acción 1 (Visual)**: Ninja usa `browser_subagent` o `generate_image` para validar que la UI coincida con el estándar de `ui_visuals.md`.
- **Acción 2 (Seguridad)**: Ejecución de `/ninja-audit` para asegurar el cumplimiento de OWASP.
- **Acción 3 (Optimización)**: Revisión final de performance (Lighthouse simulations).

---

## ⌨️ Comandos Coordinados

### En OpenCode (Sub-Agentes)
- `/ninja-logic`: Implementación de funciones backend usando `lib/algorithms`.
- `/ninja-ui`: Construcción de componentes frontend usando `lib/components`.
- `/ninja-test`: Ejecución de tests locales.

### En Ninja (Orquestador)
- `/ninja-verify`: Inicia el proceso de revisión visual y técnica.
- `/ninja-ship`: Consolida el proyecto y lo prepara para producción.

---

## 💡 Consejos para Modelos Gratuitos (OpenCode)
Para que los sub-agentes en OpenCode rindan al máximo con modelos inferiores:
1. **Instrucciones Atómicas**: No pidas archivos enteros si son muy grandes; pide funciones específicas basándote en el plan de Ninja.
2. **Uso Intensivo de `lib/`**: Referencia siempre los archivos en `lib/snippets` para que el modelo no tenga que "inventar" lógica, solo copiar y adaptar.
3. **Contexto Limpio**: Mantener abiertos solo los archivos necesarios de `.agents/rules` para no saturar la ventana de contexto del modelo standard.

---
*Ninja v3.2 — El puente entre la planificación de élite y la ejecución eficiente.*
