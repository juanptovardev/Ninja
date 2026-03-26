# 🧠 NINJA LEARNING CAPTURE (MEMORY SCRIPT)

Este script (`memory_capture.sh`) es utilizado por Ninja en el Modo 1 o 3 para automatizar la inserción de nuevos conocimientos adquiridos durante una sesión en la base de datos persistente.

```bash
#!/bin/bash
# Uso: ./memory_capture.sh "Nombre_Concepto" "Descripcion y Codigo" "Ruta_Destino"

CONCEPTO=$1
CONTENIDO=$2
DESTINO=$3

if [ -z "$CONCEPTO" ] || [ -z "$CONTENIDO" ]; then
  echo "Error: Concepto y Contenido requeridos."
  echo "Uso: ./memory_capture.sh 'Edge Computing' '...' '.agents/skills/new_learnings.md'"
  exit 1
fi

DESTINO=${3:-".agents/memory/session_logs.md"}

# Crear directorio si no existe
mkdir -p $(dirname "$DESTINO")

# Formato estructurado Ninja
echo -e "\n## 🧠 [NUEVO APRENDIZAJE]: $CONCEPTO" >> "$DESTINO"
echo -e "**Fecha:** $(date '+%Y-%m-%d %H:%M:%S')" >> "$DESTINO"
echo -e "**Detalle Técnico:**\n$CONTENIDO" >> "$DESTINO"
echo -e "---\n" >> "$DESTINO"

echo "✅ Ninja ha superado sus límites: $CONCEPTO guardado en $DESTINO."
```
