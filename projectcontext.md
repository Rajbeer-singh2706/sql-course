# SQLCourse: Project Context

Paste this file (or attach it) at the start of every new chat. Each chat covers **one day** of the course.

---

## 1. Project Overview

- **Project:** A 30-day SQL course, taking a learner from complete beginner to confident, job-ready SQL.
- **Owner:** Raj
- **Structure:** A Day 0 installation day, then 4 phases (Days 1-30), each ending with a review + mini-project, finishing with a 2-day capstone.
- **Working method:** One separate chat per day. Each chat produces the full lesson content for that day.

### Details to confirm (fill in, then keep updated)
- **Target audience:** Complete beginners _(assumed; confirm)_
- **Delivery format:** **PDF files. Every day's lesson is delivered as its own PDF** (e.g., `Day-01.pdf`), self-paced.
- **SQL dialect:** PostgreSQL (suggested default; change here if different)
- **Tools for learners:** Local PostgreSQL + pgAdmin (main path); SQLite + DB Browser for SQLite as the lighter alternative. Installed on **Day 0**.
- **Video thumbnails:** One PNG per day, fixed template (see section 9). Same look for all 31 days (Day 0 to Day 30).
- **Tone / style:** Friendly, concise, example-heavy _(assumed; confirm)_

---

## 2. Design Principles

1. Use **one or two consistent datasets** across the whole course (suggested: an e-commerce database with `customers`, `orders`, `order_items`, `products`) so learners don't relearn context daily.
2. **Spiral back:** later exercises reuse earlier skills (a Day 20 problem should still need a `JOIN`).
3. Weekly quizzes, and answer keys with **explanations**, not just solutions.
4. Stick to one SQL dialect; note differences only where they matter.
5. Offer a **stretch goal** each day for faster learners.

---

## 3. Standard Daily Lesson Format (about 60-90 minutes)

| Step | Duration | What happens |
|---|---|---|
| Concept | 15 min | Short lesson with one clear example |
| Guided practice | 20 min | Follow-along queries |
| Exercises | 25-40 min | 5-8 problems, easy to hard |
| Recap | 5 min | One-line takeaway plus a "common mistakes" note |

Every day's output should also include: learning objectives, a stretch goal, and an answer key with explanations.

---

## 4. Full 30-Day Curriculum

### Day 0: Installation and Setup (do this before Day 1)
| Day | Topic |
|---|---|
| 0 | Complete step-by-step installation of PostgreSQL + pgAdmin (Windows/macOS/Linux), SQLite alternative, creating the `sqlcourse` database, running a first test query, troubleshooting |

Day 0 keeps the 30-day numbering unchanged. From Day 1 on, learners already have a working SQL environment.

### Phase 1: Foundations (Days 1-7)
| Day | Topic |
|---|---|
| 1 | What databases are, tables/rows/columns, keys, loading the course dataset (installation is covered on Day 0) |
| 2 | `SELECT`, `FROM`, aliases, `DISTINCT` |
| 3 | Filtering with `WHERE`, comparison operators, `AND`/`OR`/`NOT` |
| 4 | `IN`, `BETWEEN`, `LIKE`, `NULL` handling |
| 5 | `ORDER BY`, `LIMIT`/`OFFSET` |
| 6 | Data types, basic functions (string, numeric, date) |
| 7 | **Review + mini-project:** explore a sample store/movie dataset |

### Phase 2: Core Analysis (Days 8-15)
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

## 5. Shared Dataset Schema

_(Fill this in once finalized on Day 1 or 2, and paste the final version into every later chat so queries stay consistent.)_

```sql
-- FINAL (set on Day 1). Runs on PostgreSQL and SQLite.
-- customers(customer_id PK, name, email, city, signup_date)
-- products(product_id PK, name, category, price)
-- orders(order_id PK, customer_id FK -> customers, order_date, status)
-- order_items(order_id FK -> orders, product_id FK -> products, quantity, unit_price)  -- PK = (order_id, product_id)
--
-- Data: customers 8 rows (ids 1-8), products 8 (ids 101-108), orders 8 (ids 1001-1008), order_items 12.
-- Deliberate quirks: customer 7 has a NULL email; customers 7 and 8 have no orders.
```

---

## 6. Progress Log

_(Update after each day's chat so the next day stays consistent.)_

| Day | Status | Key decisions / notes carried forward |
|---|---|---|
| 0 | Complete | Installation day added before Day 1. Delivered as PDF. PostgreSQL + pgAdmin main path, SQLite alternative. |
| 1 | Complete | Final dataset set (see section 5). Full load script lives in the Day 1 lesson. |
| 2 | Not started | |
| 3 | Not started | Thumbnail template defined from the Day 3 thumbnail (see section 9). |
| 4 | Complete | IN/BETWEEN/LIKE/NULL. PDF + thumbnail + YouTube title/description delivered. LIKE is case-sensitive in PostgreSQL (ILIKE) and case-insensitive in SQLite. NOT LIKE / NOT IN NULL traps introduced; COALESCE (Day 22) and subquery (Day 16) only previewed. Dataset values not asserted beyond ids and the NULL email. |
| 5 | Not started | |

_(Add rows as you go.)_

---

## 7. Starter Prompt for Each Day's Chat

Copy, fill in the day number, and send along with this file:

```
I'm building a 30-day SQL course. The attached projectcontext.md has the full
curriculum, design principles, and daily format.

Today we're working on Day [N]: [topic from the curriculum].

Please create the complete lesson for this day as a PDF file, following the
standard daily format: learning objectives, concept explanation with examples, guided
practice, 5-8 exercises (easy to hard), a stretch goal, a recap with common
mistakes, and an answer key with explanations. Use the shared dataset schema
in the file.

Also give me, for the day's video: a YouTube title, a YouTube description,
and the thumbnail PNG, built with the Thumbnail Standard in section 9.

Notes carried over from earlier days: [paste anything relevant from the
Progress Log]
```

---

## 8. Per-Day Deliverable Checklist

- [ ] Learning objectives (2-4)
- [ ] Concept section with a clear example
- [ ] Guided practice queries
- [ ] 5-8 exercises, ordered easy to hard
- [ ] Stretch goal
- [ ] Recap + common mistakes
- [ ] Answer key with explanations
- [ ] Weekly quiz (Days 7, 15, 23, plus a final one on Day 30)
- [ ] Delivered as a PDF file
- [ ] Thumbnail PNG (1280x720) built to the section 9 standard
- [ ] YouTube title and description (section 9 format)
- [ ] Progress Log updated

---

## 9. Thumbnail and Video Metadata Standard (same for all 31 days)

Every day gets a 1280x720 PNG thumbnail named `Day-NN-thumbnail.png` (Day-00 ... Day-30). The Day 3 thumbnail is the original reference; Day 4 is the first one built with the final template (two amber boxes at the top).

### Layout (pixels, 1280x720 canvas)
| Element | Spec |
|---|---|
| Background | Vertical gradient, navy `#0F2742` (top) to `#274469` (bottom) |
| Day badge | Amber `#F5B301` rounded box at x60-331, y50-151, text `DAY N` in bold navy |
| Series box | Same amber and same height, starts at x351, width fits the text, text `SQL in 30 Days` in bold navy. Always next to the day badge |
| Title | Large bold white, left-aligned at x60, vertically centered at y275. Starts at 120 px and shrinks to fit 1160 px width. Short: 2-4 words, the day's key topic |
| Subtitle | Bold cyan `#7FD6E4`, 52 px, centered at y371. One short benefit line |
| Code box | Dark `#0A1A2E` fill, teal `#2A7F8E` border, x60-760, y440-660, monospace 36 px, 4 lines max, about 28 characters per line. The core keywords of the day's query (from WHERE onward, or the key clause) are amber, the rest white |
| Keyword chips | Teal `#2A7F8E` rounded boxes, bold white 34 px, starting at x830, y430, two rows (85 px apart), 5 chips max (keywords or operators the day teaches) |
| Fonts | DejaVu Sans Bold and DejaVu Sans Mono |
| Footer text | None. "SQL in 30 Days" lives in the top box |

### Rules
1. Never change colors, positions or fonts between days. Only the text changes.
2. Code snippets must be valid on PostgreSQL and use the shared dataset (customers, products, orders, order_items).
3. Keep the code box to 4 lines. If a day's topic needs more, show the most recognizable 4 lines.
4. Titles and chips should match the day's curriculum topic in section 4.
5. Generate with the script below so every thumbnail is pixel-consistent (it renders at 2x and downsamples for smooth edges). Save as `thumb.py` and call `make(...)` with the day's content.

### Reference call (Day 4)
```python
make(4, "IN, BETWEEN, LIKE", "Smarter Filters + NULL Handling",
     [("SELECT name, email",0),("FROM customers",0),
      ("WHERE city IN ('Pune','Goa')",1),("  AND email IS NOT NULL;",1)],
     [["IN","LIKE","%"],["BETWEEN","NULL"]],
     "Day-04-thumbnail.png")
```
Each tuple in the code list is `(line_text, is_highlighted)`; `chips` is a list of rows.

### Generator script
```python
from PIL import Image, ImageDraw, ImageFont
S = 2
W, H = 1280*S, 720*S
F = "/usr/share/fonts/truetype/dejavu/"
bold = lambda n: ImageFont.truetype(F+"DejaVuSans-Bold.ttf", int(n*S))
mono = lambda n: ImageFont.truetype(F+"DejaVuSansMono.ttf", int(n*S))
NAVY=(15,39,66); NAVY2=(39,68,105); TEAL=(42,127,142); AMBER=(245,179,1)
CODEBG=(10,26,46); CYAN=(127,214,228); FOOT=(159,182,204); WHITE=(255,255,255)

def make(day, title, subtitle, code, chips, out):
    im = Image.new("RGB",(W,H)); d = ImageDraw.Draw(im)
    for y in range(H):
        t=y/(H-1); d.line([(0,y),(W,y)], fill=tuple(int(NAVY[i]+(NAVY2[i]-NAVY[i])*t) for i in range(3)))
    # badge
    d.rounded_rectangle([60*S,50*S,331*S,151*S], radius=28*S, fill=AMBER)
    d.text((195.5*S,100*S), f"DAY {day}", font=bold(70), fill=NAVY, anchor="mm")
    # second box next to the day badge
    f2=bold(48); tw=d.textlength("SQL in 30 Days",font=f2)/S; bx=351; bw=tw+64
    d.rounded_rectangle([bx*S,50*S,(bx+bw)*S,151*S], radius=28*S, fill=AMBER)
    d.text(((bx+bw/2)*S,100*S), "SQL in 30 Days", font=f2, fill=NAVY, anchor="mm")
    # title (auto-fit)
    size=120
    while d.textlength(title, font=bold(size)) > 1160*S and size>60: size-=2
    d.text((60*S,275*S), title, font=bold(size), fill=WHITE, anchor="lm")
    d.text((60*S,371*S), subtitle, font=bold(52), fill=CYAN, anchor="lm")
    # code box
    d.rounded_rectangle([60*S,440*S,760*S,660*S], radius=22*S, fill=CODEBG, outline=TEAL, width=3*S)
    for i,(txt,hl) in enumerate(code):
        d.text((90*S,490*S+i*48*S), txt, font=mono(36), fill=AMBER if hl else WHITE, anchor="lm")
    # chips
    f = bold(34)
    for r,row in enumerate(chips):
        x=830; y=430+r*85
        for c in row:
            w = max(81, d.textlength(c,font=f)/S+50)
            d.rounded_rectangle([x*S,y*S,(x+w)*S,(y+70)*S], radius=18*S, fill=TEAL)
            d.text(((x+w/2)*S,(y+35)*S), c, font=f, fill=WHITE, anchor="mm")
            x += w+14
    im.resize((1280,720), Image.LANCZOS).save(out)

if __name__=="__main__":
    make(4, "IN, BETWEEN, LIKE", "Smarter Filters + NULL Handling",
         [("SELECT name, email",0),("FROM customers",0),("WHERE city IN ('Pune','Goa')",1),("  AND email IS NOT NULL;",1)],
         [["IN","LIKE","%"],["BETWEEN","NULL"]],
         "Day-04-thumbnail.png")
```

### YouTube title format
`SQL <topic> Explained | Day N of 30 | SQL in 30 Days`
Example: `SQL IN, BETWEEN, LIKE and NULL Explained | Day 4 of 30 | SQL in 30 Days`

### YouTube description format
1. One welcoming line plus what the day covers.
2. Bullet list of the 3-5 concepts taught.
3. One or two "gotchas" the video clears up.
4. "What you need" line (setup/prerequisite days).
5. Links: today's PDF, previous day, next day (placeholders until published).
6. Timestamps (placeholders until the video is edited).
7. Hashtags: `#SQL #LearnSQL #PostgreSQL #SQLTutorial #SQLforBeginners #SQLin30Days`

### Thumbnail log
| Day | Title text | Subtitle | Status |
|---|---|---|---|
| 3 | SQL WHERE | Filter Rows Like a Pro | Done (original reference, older layout without the top series box) |
| 4 | IN, BETWEEN, LIKE | Smarter Filters + NULL Handling | Done (final template) |

_(Add a row for each new day. Consider regenerating Day 3 with the final template for consistency.)_
