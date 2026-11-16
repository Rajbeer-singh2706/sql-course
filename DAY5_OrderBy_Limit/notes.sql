


########## Topics ########
# Order By 
# Limit 

1. Concept: rows have no built-in order
 * ASC / DESC 
 * Sorting By Several Columns 
 * Aliases , Expression and Positions
 * The Order Of Clauses 
   - SELECT columns
   - FROM table 
   - WHere row filter   -- 1. pick the rows
   - ORDER BY sort rules -- -- 2. arrange them
   - LIMIT n OFFSET m    ---- 3. keep a slice
* NULLs and Sorting 
* LIMIT and OFFSET 


-- TOTAL 8 REcords 
-- ASC 
-- LIMIT 3 : 3 Pages 
-- PAGE 1 OFFSET 0: 1001
-- PAGE 1 OFFSET 1: 1002
-- PAGE 1 OFFSET 2: 1003

-- PAGE 2 OFFSET 3: 1004
-- PAGE 2 OFFSET 4: 1005
-- PAGE 2 OFFSET 5: 1006

-- PAGE 3 OFFSET 6: 1007
-- PAGE 3 OFFSET 7: 1008


-- #### One-line takeaway:
WHERE picks the rows, 
ORDER BY arranges them, 
LIMIT keeps the first few, 
and ties always need a tie-breaker.