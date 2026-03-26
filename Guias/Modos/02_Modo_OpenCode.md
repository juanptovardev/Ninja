# 🥷 NINJA v3.2 — MODO 2: OPENCODE (SOLO)

## 📌 Descripción del Modo
El **Modo 2** es el "Ejército Autónomo". Aquí, no usamos el orquestador principal (Antigravity), sino que invocamos directamente a **Sub-Agentes Expertos** mediante OpenCode. 

Para que los modelos de la capa de OpenCode (como `deepseek-v3.2`, `gemma3`, `qwen3`) obtengan resultados de grado Senior, **necesitan instrucciones (prompts) brutalmente enfocadas, contexto limitado a la tarea (nada de ruido) y roles absolutos.** Múltiples terminales OpenCode trabajan en partes aisladas del software.

## 🤖 Los Modelos Utilizados
- **Rango**: Free, Fast & Specialized (Ollama Cloud, OpenCode Zen, etc.).
- **Ventaja**: Despliegue concurrente, gratis/baratos, perfectos para tareas de caja negra bien definidas (escribir un endpoint, estilizar un componente).

---

## 🚀 Flujo de Trabajo (Prompt Engineering Estricto)

Puesto que no hay un orquestador manteniendo todo en memoria, **TÚ** eres el orquestador. Debes abrir las terminales de OpenCode y usar estos prompts de **Alta Precisión**:

### 1. Invocando al Sub-Agente Frontend (Ejemplo Qwen / Gemma)
Abre OpenCode y dale este prompt absoluto basado en Rol y CoT (Chain Of Thought):

> **Prompt de Terminal UI**: 
> "Carga el perfil Ninja UI. Lee las reglas en `.agents/rules/frontend.md` y revisa el catálogo en `.agents/skills/ui_visuals.md`. 
> Tarea Atómica: Construye el archivo `/src/components/Hero.tsx` usando Tailwind 4 y Framer Motion. 
> Reglas Críticas: 
> 1) PIENSA PRIMERO entre etiquetas `<thinking></thinking>`. 
> 2) Extrae patrones visuales buscando en `lib/components`. 
> 3) Genera solo código funcional, sin placeholders. 
> 4) Comenta la lógica de la animación GSAP."

### 2. Invocando al Sub-Agente Backend (Ejemplo DeepSeek)
> **Prompt de Terminal Logic**: 
> "Acude a `.agents/skills/backend_logic.md`. 
> Tu Rol: Ninja Backend Engineer dev. 
> Tarea Atómica: Implementar el endpoint POST para registro en `/src/api/auth.ts`, usando Hono y validación Zod. 
> Reglas Críticas: 
> 1) No inventes algoritmos criptográficos, ve a `lib/algorithms` y usa las librerías ahí documentadas. 
> 2) Piensa en seguridad OWASP (referencia `.agents/rules/security.md`). 
> 3) Emite solo el bloque de código con tipos strictos de TS 5+."

---

## ⚡ El Secreto del Éxito en el Modo 2
- **Cero Ambigüedad**: Nunca pidas "Crea una app entera". Pide "Crea el Hook de Estado de Sesión en `/hooks/useAuth.ts`".
- **Context Constraint**: Obliga al sub-agente a usar la carpeta `lib/` para sus herramientas base, así el modelo "Standard" compensa su conocimiento leyendo código local élite.
