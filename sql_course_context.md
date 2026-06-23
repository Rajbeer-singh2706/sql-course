# 30-Day PostgreSQL Course — Project Context

## Learner Profile

| Attribute | Detail |
|---|---|
| Experience level | Complete beginner |
| Goal | Data engineering / pipelines |
| Database focus | PostgreSQL |
| Course duration | 30 days |

---

## How to Use This File

> **Each day is a separate chat session.** At the start of every new chat, paste this entire file so Claude has full course context. Then say: `"Let's do Day X"` and Claude will know exactly what to teach and what to deliver.

---

## What Claude Should Deliver Every Day

For every single day, without being asked, Claude must produce:

1. **Full lesson** — concept explanation → example SQL → hands-on exercise
2. **1-hour session documentation (.pdf)** — structured as a video recording script with timed segments, talking points, code blocks, tables, and callout boxes
3. **Video description** — 3 versions: YouTube (long/SEO), Short (Reels/Shorts), Course platform (Udemy style)

Do not wait to be asked for the doc or description. Deliver all three automatically.

---

## Course Structure Overview

| Week | Theme | Days | Focus |
|---|---|---|---|
| Week 1 | SQL Foundations | 1–7 | Queries, filtering, strings, dates |
| Week 2 | Aggregations & Shaping Data | 8–14 | GROUP BY, CTEs, subqueries |
| Week 3 | JOINs & Relational Data | 15–21 | Joins, window functions |
| Week 4 | Data Engineering Essentials | 22–30 | Writes, schema, indexes, pipelines |

---

## Full Day-by-Day Curriculum

### Week 1 — SQL Foundations (Days 1–7)

**Day 1 — What is PostgreSQL?** ✅ COMPLETED
- Relational databases explained
- How PostgreSQL fits into data pipelines
- Install & connect via psql
- *Exercise: Install PostgreSQL locally, connect and run `\l` and `\dt`*
- *Deliverables: Lesson taught, .pdf session doc created, 3 video descriptions written*

**Day 2 — Your first SELECT**
- SELECT, FROM, semicolons
- Selecting all columns with `*`
- Aliasing columns with AS
- *Exercise: Query a sample table, alias 3 columns*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 3 — Filtering rows**
- WHERE clause basics
- Comparison operators `=`, `>`, `<`, `!=`
- NULL checks: `IS NULL` / `IS NOT NULL`
- *Exercise: Filter orders placed after a date*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 4 — Logical operators**
- AND, OR, NOT
- IN and BETWEEN shortcuts
- Operator precedence with parentheses
- *Exercise: Find rows matching 2+ conditions*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 5 — Sorting & limiting**
- ORDER BY ASC / DESC
- LIMIT and OFFSET
- Paginating results for pipelines
- *Exercise: Get the top 10 rows by value*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 6 — String functions**
- LOWER, UPPER, TRIM
- CONCAT and `||`
- LIKE and ILIKE pattern matching
- *Exercise: Clean a messy name column*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 7 — Date & time basics**
- DATE, TIMESTAMP types
- NOW(), CURRENT_DATE
- Date arithmetic with intervals
- *Exercise: Find events from the last 30 days*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

---

### Week 2 — Aggregations & Shaping Data (Days 8–14)

**Day 8 — Aggregate functions**
- COUNT, SUM, AVG, MIN, MAX
- COUNT(*) vs COUNT(col)
- Ignoring NULLs in aggregates
- *Exercise: Count rows and sum a revenue column*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 9 — GROUP BY**
- Grouping rows into buckets
- Combining GROUP BY with aggregates
- Multiple grouping columns
- *Exercise: Revenue by product category*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 10 — HAVING clause**
- Filtering after aggregation
- HAVING vs WHERE — key difference
- Common pipeline use cases
- *Exercise: Find categories with > 100 orders*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 11 — CASE expressions**
- CASE WHEN THEN ELSE END
- Using CASE inside aggregates
- Pivot-style transformations
- *Exercise: Classify orders by size bucket*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 12 — DISTINCT & UNION**
- SELECT DISTINCT usage
- UNION vs UNION ALL
- Deduplication strategies
- *Exercise: Merge two source tables cleanly*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 13 — Subqueries**
- Subquery in WHERE
- Subquery in FROM (inline view)
- Correlated subqueries intro
- *Exercise: Find rows above the average value*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 14 — CTEs (WITH clause)**
- Common Table Expressions syntax
- Chaining multiple CTEs
- Why CTEs improve readability
- *Exercise: Rewrite a subquery as a CTE*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

---

### Week 3 — JOINs & Relational Data (Days 15–21)

**Day 15 — INNER JOIN**
- How INNER JOIN works visually
- ON clause and key matching
- Joining on multiple columns
- *Exercise: Join orders to customers table*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 16 — LEFT & RIGHT JOIN**
- Preserving unmatched rows
- NULLs from outer joins
- Choosing the right join type
- *Exercise: Find customers with no orders*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 17 — FULL OUTER JOIN**
- When both sides can be missing
- Union of both outer joins
- Data reconciliation patterns
- *Exercise: Reconcile two pipeline sources*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 18 — Self JOINs**
- Joining a table to itself
- Aliasing for clarity
- Hierarchy and comparison queries
- *Exercise: Find employees and their managers*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 19 — Multi-table JOINs**
- Joining 3+ tables in sequence
- Join order and performance
- Naming collisions — using aliases
- *Exercise: Build a sales summary across 3 tables*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 20 — JOIN with aggregates**
- Aggregating after joining
- GROUP BY on joined columns
- Common reporting patterns
- *Exercise: Revenue per customer per month*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 21 — Window functions intro**
- OVER() clause basics
- ROW_NUMBER, RANK, DENSE_RANK
- PARTITION BY and ORDER BY
- *Exercise: Rank products within each category*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

---

### Week 4 — Data Engineering Essentials (Days 22–30)

**Day 22 — Advanced window functions**
- LAG and LEAD for row offsets
- FIRST_VALUE, LAST_VALUE
- Running totals with SUM OVER
- *Exercise: Day-over-day change in revenue*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 23 — Writing data: INSERT**
- INSERT INTO … VALUES
- INSERT … SELECT pattern
- ON CONFLICT (upserts)
- *Exercise: Load rows from a staging table*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 24 — UPDATE & DELETE**
- UPDATE with WHERE conditions
- DELETE safely with WHERE
- Soft deletes pattern
- *Exercise: Correct a batch of bad records*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 25 — CREATE TABLE & types**
- Common PostgreSQL data types
- Constraints: NOT NULL, UNIQUE, DEFAULT
- Serial / BIGSERIAL for IDs
- *Exercise: Design a simple events table*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 26 — Indexes & performance**
- Why indexes matter in pipelines
- B-tree index creation
- EXPLAIN ANALYZE basics
- *Exercise: Add an index, compare query plans*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 27 — Transactions**
- BEGIN, COMMIT, ROLLBACK
- ACID properties explained
- When to wrap pipeline steps in transactions
- *Exercise: Run a safe multi-step load operation*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 28 — Views & materialized views**
- CREATE VIEW for reusable queries
- Materialized views for caching
- REFRESH MATERIALIZED VIEW
- *Exercise: Build a summary materialized view*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 29 — Schema design & capstone**
- Normalization basics (1NF–3NF)
- Star schema for analytics
- Putting it all together
- *Exercise: Design & query a mini data warehouse*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

**Day 30 — Pipeline patterns**
- ELT vs ETL in PostgreSQL
- Incremental loads with timestamps
- Error handling & logging tables
- *Exercise: Build a simple incremental pipeline*
- *Deliver: Full lesson + .pdf recording script + 3 video descriptions*

---

## Teaching Approach

When teaching any lesson in this course:

- Assume **zero prior SQL knowledge** — explain every concept from scratch
- Always connect concepts to **real data engineering use cases** (pipelines, staging tables, incremental loads, deduplication)
- Use **PostgreSQL-specific syntax** throughout (not generic SQL)
- Every lesson should include: concept explanation → example SQL → hands-on exercise
- Keep examples practical — prefer data pipeline scenarios over abstract toy data

---

## .pdf Session Document — Format Standard

Every day's recording script doc must include:

- Cover section with session info table (duration, level, goal, week)
- "What you will learn" callout box
- Session agenda table with timestamps
- One page per segment with time tag, talking points, code blocks, tables
- Hands-on exercise section with expected output and common errors table
- Recap bullet list + Day N+1 preview with camera script
- Appendix quick-reference card
- Teal (`#1A7A6E`) as the primary brand color throughout

---

## Video Description — Format Standard

Always provide exactly 3 versions per day:

1. **YouTube** — 80–120 words, SEO-friendly, mentions day number, topics covered, skill level, and next day preview
2. **Short** — 2–3 sentences max, punchy, for Reels / YouTube Shorts / intro card
3. **Course platform** — 50–70 words, Udemy/Teachable style, outcome-focused

---

## Quick Reference: Key PostgreSQL Concepts for Data Engineering

| Concept | Why it matters for pipelines |
|---|---|
| CTEs | Break complex pipeline logic into readable steps |
| Window functions | Row-level calculations without collapsing groups |
| Upserts (ON CONFLICT) | Safe idempotent data loads |
| Transactions | Atomic multi-step pipeline operations |
| Materialized views | Pre-computed results for expensive queries |
| EXPLAIN ANALYZE | Debug and optimize slow pipeline queries |
| Incremental loads | Load only new/changed rows using timestamps |
