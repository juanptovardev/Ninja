# ⌨️ COMANDOS Y ESTRUCTURA: MODO HÍBRIDO (v3 - Orquestación Total)

Esta es la guía operativa para el **Modo 3** (La cúspide de Ninja v3.3).

## 🚀 Comandos del Orquestador (Antigravity)

| Comando | Acción de Orquestación Híbrida |
|---------|--------------------------------|
| `/ninja-architect` | Ninja evalúa tu petición mediante el **Protocolo 5x5x5** y diseña la estructura del sistema. |
| `/ninja-delegate` | Ninja no escribe código del proyecto. Escribe **Prompts de Terminal**. Genera bloques de texto ultra-detallados para que los pegues en OpenCode. |
| `/ninja-verify` | Audita visual y técnicamente los resultados que han producido los sub-agentes en OpenCode. |
| `/ninja-absorb` | Ingesta de memoria: Lee lo que los sub-agentes lograron e inyecta aprendizajes en `.agents/memory/`. |

## 🤖 El Ciclo de Sub-Agentes Integrado
1. Pides una feature en Antigravity con `/ninja-architect`.
2. Usas `/ninja-delegate` para recibir los manuales atómicos de código.
3. Despliegas terminales concurrentes en OpenCode pegando los prompts.
4. OpenCode construye los archivos usando referencias de `lib/`.
5. Ejecutas `/ninja-verify` en Antigravity para cerrar el Quality Assurance.

## 🧠 Sinergia de Herramientas
- **Antigravity** posee el mapeo mental global y usa herramientas de `list_dir` y `brain` para recordar todo.
- **OpenCode** usa herramientas como escritura rápida en `write_to_file` y `terminal` pura para velocidad.
