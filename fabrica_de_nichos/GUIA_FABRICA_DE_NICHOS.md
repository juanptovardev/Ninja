# 🏭 GUÍA PROFESIONAL: FÁBRICA DE NICHOS NINJA v3.4

## 📐 Qué es la Fábrica de Nichos
Un sistema industrializado para generar, evaluar y ejecutar ideas de negocio tecnológico usando IA como motor de prospección. Cada nicho tiene su propia carpeta con PRDs listos para construir.

---

## 🧬 Cómo se Construyó esta Investigación (Entrenamiento de Prompts)

### Paso 1: Definir los Ejes Verticales
Se establecieron 2 nichos primarios de alta maestría técnica:
- **Nicho 1 (Web Nativo)**: Tecnologías de frontend/edge de vanguardia.
- **Nicho 2 (Dashboards Enterprise)**: Sistemas de gestión y visualización de datos complejos.

### Paso 2: Expansión Sistemática (Regla 50x)
Cada nicho se expandió a **50 ideas elite** usando el siguiente prompt framework:

```
PROMPT FRAMEWORK (Generación de Ideas):
"Dame 50 ideas técnicas de [NICHO] ordenadas por complejidad de implementación.
Cada idea debe incluir:
- Nombre técnico corto
- Descripción de 1 línea
- Nivel de esfuerzo: [Low/Mid/High] Effort
Prioriza tecnologías emergentes (2025-2026) y APIs nativas del navegador."
```

### Paso 3: Calificación Dual (La Fórmula Ninja)
Cada idea recibió dos métricas independientes:
1. **Calificación del Usuario (+, ++, +++)**: Basada en la intuición y experiencia directa del fundador.
2. **UR (User Relevance) 1-10**: Basada en un modelo promedio de usuario final usando criterios de:
   - Dolor que resuelve (¿Qué tan urgente es para el usuario?)
   - Frecuencia de uso (¿Lo usaría a diario o una vez al año?)
   - Disposición a pagar (¿Pagaría por esto sin pensarlo?)
   - Factor "Wow" (¿Lo compartiría con alguien?)

### Paso 4: Purga por Eliminación (---)
Se marcaron ideas con `---` para eliminación y se ejecutaron rondas de purga hasta quedar con las élites sobrevivientes.

### Paso 5: Observaciones Ninja (Ninja Obs)
Cada idea sobreviviente recibió una observación estratégica que explica:
- Por qué es técnicamente relevante
- Cuál es su mayor trampa o reto
- Qué la hace diferente de soluciones existentes

### Paso 6: Organización por Relevancia
Se reorganizó todo el Mega-Radar en 3 niveles:
- 💎 **Nivel S (+++)**: Máxima prioridad, mayor retorno.
- 🛡️ **Nivel A (++)**: Alta relevancia, sólido valor.
- ⚡ **Nivel B (+)**: Estándar, buen complemento.

---

## 🔁 Cómo Replicar este Proceso (Prompt Chain)

### Para generar un nuevo nicho desde cero:
```
PASO 1 - SEED:
"Actúa como un ingeniero de software senior especializado en [SECTOR].
Genera 50 ideas técnicas innovadoras para [TIPO_PRODUCTO] en el sector [SECTOR].
Formato: Número. Nombre: Descripción corta. [Effort Level]"

PASO 2 - CALIFICACIÓN:
"Para cada una de las 50 ideas, agrega:
- Ninja Obs: Una observación estratégica de 1 línea
- UR (User Relevance): Puntuación 1-10 basada en dolor, frecuencia, pago y wow factor"

PASO 3 - PURGA:
"Revisa las 50 ideas. Marca con --- las que tengan UR < 6 o sean redundantes.
Elimina las marcadas y renumera las sobrevivientes."

PASO 4 - PRD GENERATION:
"Para las top 5 ideas sobrevivientes, genera un PRD simple con:
Nombre, Problema, Solución, Stack Tecnológico, MVP Features (5), Métricas de Éxito"
```

---

## 📁 Estructura de Carpetas

```
fabrica_de_nichos/
├── GUIA_FABRICA_DE_NICHOS.md    ← Este archivo
├── PRD_TEMPLATE_SIMPLE.md       ← Plantilla PRD grado simple
├── PRD_TEMPLATE_PRO.md          ← Plantilla PRD grado profesional
├── 01_adtech/
│   ├── IDEAS.md                 ← 5 ideas elite del nicho
│   ├── FABRICA_DE_IDEAS.md      ← Atajos para generar más ideas
│   └── PRD_TEMPLATE.md          ← PRD específico del nicho
├── 02_proptech/
│   └── ...
└── 35_interactive_comics/
    └── ...
```

---
*Ninja v3.4 — Fábrica de Nichos: De la idea al PRD en minutos.*
