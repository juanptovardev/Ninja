# 🏭 Fábrica de Ideas: Smart Motorcycle Customizer
> Motor generativo para expandir sub-nichos o pivotar proyectos dentro de Smart Motorcycle Customizer.

## ⚡ Atajos Ninja
Para usar este motor con el agente Ninja, ejecuta los siguientes comandos en el chat:

- `/niche-ideate smart_motorcycle_customizer [VARIABLE]` : Genera 5 nuevas ideas usando el marco de referencia de la Guía Maestra y la UR. Puedes pasar variables como "Enfoque Enterprise", "Enfoque Móvil", "Enfocado a Generación Z", etc.
- `/niche-prd smart_motorcycle_customizer [NUMERO_IDEA]` : Toma una idea del `IDEAS.md` y redacta un PRD completo utilizando las plantillas en `lib/templates/`.
- `/niche-evaluate smart_motorcycle_customizer [IDEA_PERSONAL]` : Evalúa una idea que se te ocurra dándote un Score (+/++/+++) y un User Relevance (UR) estimado.

## 🧠 Arquitectura de Prompts Base (Ejemplo)
Para replicarse manualmente o en APIs:
```text
Eres un Experto Arquitecto de Producto Ninja v3.4. Genera 5 ideas hiper-especializadas para el nicho de Smart Motorcycle Customizer. 
Aplica la regla de UR (User Relevance) apuntando a alcanzar valores >8/10. Combina capacidades de IA generativa, bases de datos edge y rendering ultrarrápido.
Devuelve el resultado en Markdown estricto.
```
