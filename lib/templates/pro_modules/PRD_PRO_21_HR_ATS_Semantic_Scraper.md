# 📄 PRD PRO MODULE: HR ATS & Semantic Scraper
> *Variante Especializada Ninja PRO: Applicant Tracking System con ingesta de currículums masiva basada en Vector Search y Parsing de NLP avanzado.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** El "Resume Formatting Hell". Los usuarios suben PDFs estructurados en dos columnas, Words con tablas o imágenes escaneadas.
**Meta Tecnológica:** OCR multimodal y extracción estructural (RAG pipeline) para asimilar mil currículums por minuto sin trabar el Worker de ingesta.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Ingesta Documental:** AWS Textract o Document AI (GCP) orquestado por colas en RabbitMQ/Redis BullMQ.
- **Base de Datos Semántica:** PostgreSQL (pgvector) o Pinecone para almacenar el "Significado" de las habilidades, no solo la palabra clave.
- **Búsqueda (Matcher):** LLM Asíncrono (ej. Llama 3 local) que compara la Job Description contra miles de candidatos y rankea la idoneidad.
- **Notificaciones:** SendGrid/Mailgun webhook processors para flujos de rechazo o invitación a entrevista.

## 3. 🛡️ Sesgos e Igualdad de Oportunidades
- **Vector de Riesgo Primario:** Bias Cognitivo en la IA. Demandas legales por discriminación algorítmica (ej. el LLM puntúa menos si se usa pronombre X).
- **Mitigación Mandatoria:** "Blind Parsing". La IA que extrae y rankea las skills tiene estrictamente prohibido ver nombres, fotos, sexo o universidades durante el proceso de matching inicial.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Document Parser):** Implementar la subida S3 con pre-signed URLs, OCR y la extracción estructurada del texto a JSON (Experiencia, Educación).
- **Sprint 2 (Vector Database):** Transformar la extracción en embeddings y poblar la DB vectorial. Crear indices de búsqueda geoespacial (Radio de 50km).
- **Sprint 3 (Semantic Search UI):** Dashboard de reclutador; barra tipo Google donde escriben "Alguien que sepa apagar fuegos en React antiguo" y retorna candidatos válidos.
- **Sprint 4 (ATS Workflows):** Tablero Kanban (Drag & drop) de candidatos: \`Sourced\` -> \`Screening\` -> \`Interview\` -> \`Offer\`.`
