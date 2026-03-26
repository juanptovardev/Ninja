# 🥷 NINJA v3.2 — MODO 1: ANTIGRAVITY (SOLO)

## 📌 Descripción del Modo
El **Modo 1** es la experiencia de Ingeniería Autónoma Pura. En este entorno, Antigravity (tu IDE/Entorno Principal con el modelo de élite) asume la responsabilidad total: planifica, escribe el código, purifica, escanea y despliega sin requerir terminal externa.

## 🤖 El Modelo Utilizado
- **Rango**: Elite (Ej. Claude 3.5 Sonnet, GPT-4o, etc.).
- **Vantaja**: Retención extrema de contexto global, capacidad para leer el repositorio entero sin olvidar reglas (R1-R12) ni la estructura `.agents/`.

---

## 🚀 Flujo de Trabajo (Workflow)

1. **Invocación Nativa**: 
   - Envía el comando `/ninja` para cargar el "Cerebro Ninja".
   - Dile: *"Ninja, crea una [Feature] usando Modo 1. Haz el andamiaje y programa directamente los archivos."*

2. **Acción Unilateral**:
   - Ninja leerá `.agents/rules` de la memoria.
   - Creará o modificará los archivos en el workspace automáticamente (usando comandos internos de archivo).
   - Aplicará el conocimiento de `lib/components` y `lib/algorithms` insertando el código de inmediato.

3. **Verificación Autónoma**:
   - Al finalizar, Ninja hace auto-auditoría: ejecuta `ninja-audit` internamente revisando los archivos que acaba de crear.

---

## ⚡ Cuándo Elegir este Modo
- Tienes acceso sin límites al modelo Elite.
- El proyecto es pequeño-mediano y cabe cómodamente en un solo hilo de contexto.
- Deseas "Vibecoding": darle una idea y ver cómo se escribe en vivo sin intermediarios ni copy-pasteo.

*Para operaciones masivas de gran escala o cuando desees ahorrar tokens del modelo premium delegando trabajo, revisa el **Modo 3 (Híbrido)**.*
