# ⌨️ COMANDOS Y ESTRUCTURA: MODO OPENCODE (v2 - Terminal Autónomos)

Esta guía define comandos para el **Modo 2** (Operación Exclusiva vía Modelos Standard Gratuitos en OpenCode).

## 🚀 Comandos de Despliegue OpenCode
Dado que usas modelos como DeepSeek o Qwen en OpenCode, debes ser tú (el usuario) quien dirija el tráfico.

| Comando (Humano->Subagente) | Acción en Terminal de OpenCode |
|-----------------------------|--------------------------------|
| `/load-skill [nombre]` | "*Lee el archivo .agents/skills/[nombre].md y asume el rol estrictamente.*" |
| `/act-ui` | "*Lee .agents/rules/frontend.md y obedece solo estándares de UI.*" |
| `/act-backend` | "*Lee .agents/rules/backend.md y ejecuta lógica.*" |
| `/use-lib [carpeta]` | "*Abre lib/[carpeta], extrae el código y adáptalo a este archivo.*" |

## 🤖 Creación de Sub-Agentes
Para crear un equipo efectivo en el Modo 2:
1. Abre 3 terminales distintas en OpenCode (Ej: DeepSeek-v3.2).
2. Terminal A: Carga `/act-ui`. Pídele el componente.
3. Terminal B: Carga `/act-backend`. Pídele el controlador de Hono.
4. Terminal C: Carga `/load-skill security`. Pídele que audite lo que hicieron las otras dos.

## 🛠️ Herramientas
En este modo, el "Cerebro" de `.agents/` está fragmentado. Ningún modelo conoce el proyecto entero, solo la parte a la que le diste acceso mediante los comandos `/load-`.
