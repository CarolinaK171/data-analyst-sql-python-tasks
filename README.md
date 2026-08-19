# Data Analytics Portfolio: SQL & Python Preprocessing

This repository contains practical scripts and exercises demonstrating data analysis workflows using SQL and Python.

---

## SQL Topics Covered

Scripts showing a progression from foundational data queries to advanced analytical functions:

* **Basic Querying & Filtering:** `SELECT *`, `DISTINCT`, `AS` (aliasing), `WHERE` clauses, pattern matching (`LIKE`), and result limiting (`LIMIT`).
* **Aggregations & Grouping:** Data summarization using `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, multi-column `GROUP BY`, and `HAVING` filters.
* **Relational Joins:** Combining datasets across multiple tables using `INNER JOIN` and `LEFT JOIN` operations.
* **Advanced Window Functions:** Partitioned aggregates (`OVER PARTITION BY`), sliding window frames (`ROWS BETWEEN`), and ranking methodologies (`ROW_NUMBER`, `RANK`, `DENSE_RANK`).
* **Subqueries:** Utilizing inline nested queries within the `FROM` clause for complex data filtering.

---

## Python & Pandas Topics Covered

An end-to-end data preprocessing and cleaning workflow evaluating borrower reliability using the Pandas library:

* **Data Loading & Inspection:** Importing CSV files (`read_csv`), previewing rows (`head`), and auditing structural metadata (`info`).
* **Missing Value Imputation:** Identifying nulls (`isna().sum()`) and filling gaps using conditional, group-based medians (`groupby` + `fillna`).
* **Anomaly & Type Resolution:** Handling negative data artifacts (`abs()`), deleting anomalous rows, and casting columns to integers (`astype`).
* **Deduplication:** Rectifying inconsistent string casing (`str.lower`) and removing duplicate rows (`duplicated().sum()`, `drop_duplicates`).
* **Feature Engineering:** Creating category tags from numeric bins, writing text-parsing functions, and appending engineered columns.
* **Aggregations & Analysis:** Advanced data aggregation (`groupby`, `agg`), column renaming (`rename`), and calculating risk/default ratios.
