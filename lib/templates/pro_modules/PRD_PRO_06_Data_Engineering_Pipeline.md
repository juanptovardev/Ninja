# 📄 PRD PRO MODULE: Data Engineering Pipeline & Data Warehouse
> *Requisito v5.1:* **Tech Radar Amplification Activa**.
> *Variante Especializada Ninja PRO: Arquitectura enfocada en la ingesta, transformación (ETL/ELT) y orquestación masiva de datos estructurados y no estructurados.*

## 1. 🎯 Foco Arquitectónico del Módulo
**El Reto Principal:** Prevención de "Data Swamps" y escalabilidad de queries. El sistema debe procesar Terabytes diarios minimizando el coste de computo sin corromper el esquema de downstream.
**Meta Tecnológica:** Pipeline Idempotente. Si un job falla a mitad de noche, su re-ejecución no debe duplicar la data analítica final.

## 2. 🏛️ Componentes Estratégicos (Tech Stack Especializado)
- **Data Lakehouse:** Snowflake, Google BigQuery o Databricks (Separación de almacenamiento y cómputo).
- **Orquestador (DAGs):** Apache Airflow, Prefect o Dagster.
- **Ingesta Real-time & CDC:** Kafka, Debezium (Change Data Capture) o AWS Kinesis.
- **Data Transformation (dbt):** Transformaciones SQL controladas por Git, probables y documentadas.

## 3. 🛡️ Riesgos y Calidad de los Datos (Data Contracts)
- **Vector de Falla Primario:** Upstream Schema Drifts. Si la API de Salesforce cambia una columna, el pipeline entero crashea silenciosamente.
- **Gobierno de Datos (Data Governance):** Implementación de "Data Contracts" y perfiles de PII masking previos al Data Warehouse público.

## 4. 🥷 Plan de Ingeniería (Sprints Específicos)
- **Sprint 1 (Fundación Lakehouse):** Setup de la infraestructura como código (Terraform) para BigQuery/Snowflake y la creación de los buckets de Raw Data.
- **Sprint 2 (Pipelines E-L):** Implementación de Airflow/Dagster para la ingesta (Extract-Load) de APIs de terceros con reintentos exponenciales.
- **Sprint 3 (Transformación 'T' con dbt):** Creación de los modelos analíticos y los "Mart" específicos; testing de SQL estricto.
- **Sprint 4 (Observabilidad y BI):** Paneles para Data Quality (Great Expectations) y visualización (Looker/Superset).
