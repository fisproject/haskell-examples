func a = if a == 1 then "good" else "bad"

main = do
 print $ func 0 -- "bad"
 print $ func 1 -- "good"