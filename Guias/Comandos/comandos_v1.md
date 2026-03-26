# ⌨️ COMANDOS Y ESTRUCTURA: MODO ANTIGRAVITY (v1 - Elite)

Esta guía define comandos y uso exclusivo para el **Modo 1** (Operación Autónoma Elite).

## 🚀 Comandos Propios del Modo Antigravity
En este modo, Ninja ejecuta acciones destructivas y constructivas directamente en el workspace.

| Comando | Acción Exacta |
|---------|---------------|
| `/ninja-plan` | Ejecuta el **Protocolo 5x5x5**, analiza el repo entero, escribe un plan e inicia a codificar. |
| `/ninja-ship` | Verifica la calidad, ejecuta auditoría OWASP, levanta commits automáticos con Conventional Commits y finaliza la sesión. |
| `/ninja-learn` | Forza a Ninja a leer código externo provisto por el usuario y guardarlo de por vida en `.agents/memory/`. |

## 🧠 Uso de Sub-agentes (Descartados)
En el Modo 1, **NO se requieren sub-agentes**. El modelo (ej. Claude 3.5 Sonnet) asume todos los sombreros (Arquitecto, Backend, Frontend) dentro del mismo hilo.

## 🛠️ MCPs y Herramientas (Nativas)
- Uso intensivo del `browser_subagent` por parte del modelo maestro para leer APIs.
- Uso de `multi_replace_file_content` para refactorings masivos (50+ archivos).
