<div align="right">
  <b>🇬🇧 English</b> | <a href="README.vn.md">🇻🇳 Tiếng Việt</a>
</div>

# ⏱️ Apache Airflow Orchestration (`airflow/`)

The `airflow/` directory contains Apache Airflow DAG definitions for automated batch scheduling and daily incremental data ingestion for the food delivery data engineering pipeline.

---

## 📁 Directory Structure

```
airflow/
 └── dags/
      ├── batch_dag.py                # Main batch orchestration DAG definition
      └── daily_incremental_dag.py    # Daily scheduled incremental ingestion DAG
```

---

## 🔄 DAG Workflows

### 1. Main Batch DAG (`batch_dag`)
```
[1_generate_raw_data] ➔ [2_upload_localstack_s3] ➔ [3_load_raw_duckdb] ➔ [4_dbt_build_medallion] ➔ [5_llm_enrich_reviews]
```

### 2. Daily Incremental DAG (`daily_incremental_dag`)
```
[1_generate_incremental_data] ➔ [2_upload_localstack_s3] ➔ [3_load_raw_duckdb] ➔ [4_dbt_medallion_build]
```

---

## ⚙️ Execution & Triggering

Verify DAG syntax locally:
```bash
python3 airflow/dags/batch_dag.py
python3 airflow/dags/daily_incremental_dag.py
```
