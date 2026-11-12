# 30-Day SQL Course

A 30-day course that takes you from complete beginner to confident, job-ready SQL. You work through one lesson a day, about 60-90 minutes each, with hands-on practice using a shared dataset throughout.

---

## What You'll Learn

By the end of 30 days you will be able to:

- Query a database to answer real business questions
- Filter, sort, group, and summarize data
- Combine data from multiple tables using joins
- Write advanced queries with subqueries, CTEs, and window functions
- Clean messy data and run time-based analysis such as cohorts and month-over-month trends
- Modify data safely and design your own database schema
- Read query plans and write faster queries
- Solve interview-style SQL problems and complete a capstone project

---

## How the Course Works

The course has **4 phases**. Each phase ends with a review and a mini-project, and the course finishes with a 2-day capstone.

Every day follows the same format:

| Step | Time | What happens |
|---|---|---|
| Concept | 15 min | Short lesson with one clear example |
| Guided practice | 20 min | Follow-along queries |
| Exercises | 25-40 min | 5-8 problems, easy to hard |
| Recap | 5 min | One-line takeaway plus a "common mistakes" note |

Each day also includes learning objectives, a stretch goal for faster learners, and an answer key with explanations. Quizzes appear on Days 7, 15, 23, and 30.

---

## Course Outline

### Phase 1: Foundations (Days 1-7)
Learn what databases are and how to retrieve and filter data.



| Day | Topic |
|---|---|
| 0 | Installation 
| 1 | What databases are, tables/rows/columns, setting up |
| 2 | `SELECT`, `FROM`, aliases, `DISTINCT` |
| 3 | Filtering with `WHERE`, comparison operators, `AND`/`OR`/`NOT` |
| 4 | `IN`, `BETWEEN`, `LIKE`, `NULL` handling |
| 5 | `ORDER BY`, `LIMIT`/`OFFSET` |
| 6 | Data types, basic functions (string, numeric, date) |
| 7 | **Review + mini-project:** explore a sample store/movie dataset |

### Phase 2: Core Analysis (Days 8-15)
Summarize data and combine multiple tables.

| Day | Topic |
|---|---|
| 8 | Aggregates: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` |
| 9 | `GROUP BY` |
| 10 | `HAVING` vs `WHERE` |
| 11 | `CASE WHEN` and conditional logic |
| 12 | Primary/foreign keys, relationships, ER diagrams |
| 13 | `INNER JOIN` |
| 14 | `LEFT`/`RIGHT`/`FULL` joins, self joins |
| 15 | **Review + mini-project:** sales report across multiple tables |

### Phase 3: Intermediate to Advanced (Days 16-23)
Write more powerful queries and analyze data over time.

| Day | Topic |
|---|---|
| 16 | Subqueries (in `WHERE`, `FROM`, `SELECT`) |
| 17 | CTEs (`WITH`) |
| 18 | `UNION`, `INTERSECT`, `EXCEPT` |
| 19 | Window functions I: `ROW_NUMBER`, `RANK`, `DENSE_RANK` |
| 20 | Window functions II: `PARTITION BY`, running totals, `LAG`/`LEAD` |
| 21 | Date/time analysis (cohorts, month-over-month) |
| 22 | Data cleaning: `COALESCE`, `TRIM`, deduplication |
| 23 | **Review + mini-project:** customer retention / cohort analysis |

### Phase 4: Real-World Skills (Days 24-30)
Change data, design databases, and prepare for the job.

| Day | Topic |
|---|---|
| 24 | `INSERT`, `UPDATE`, `DELETE`, transactions |
| 25 | `CREATE TABLE`, constraints, schema design and normalization |
| 26 | Indexes and reading `EXPLAIN` plans |
| 27 | Views, and query optimization habits |
| 28 | Interview-style problem solving |
| 29 | **Capstone, part 1:** design and build |
| 30 | **Capstone, part 2:** present findings + course wrap-up |

---

## Dataset

The course uses one consistent dataset so you don't have to learn a new context each day. The suggested starting point is an e-commerce database:

- `customers` (customer_id, name, email, city, signup_date)
- `products` (product_id, name, category, price)
- `orders` (order_id, customer_id, order_date, status)
- `order_items` (order_id, product_id, quantity, unit_price)

Later exercises reuse earlier skills, so a Day 20 problem will still need a `JOIN`.

---

## Setup

The course uses **PostgreSQL** by default. SQLite works for the first phases if you want a lighter setup. Day 1 walks you through installation.

---

## Tips for Success

- Type every query yourself instead of copying and pasting.
- Do the exercises before looking at the answer key.
- Try the stretch goal when you finish early.
- Review the "common mistakes" note at the end of each lesson.
- Keep your own notes of useful queries as you go.


-- For one to one Dicussion or For Doubt Dicussion or Live Class 
-- please email me on      : rajbeer.singh2706@gmail.com