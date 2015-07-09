solveRPN :: String -> Double
solveRPN  = head . foldl foldingFunction [] . words
 where 
  foldingFunction (x:y:ys) "*" = (y*x):ys
  foldingFunction (x:y:ys) "+" = (y+x):ys
  foldingFunction (x:y:ys) "-" = (y-x):ys
  foldingFunction (x:y:ys) "/" = (y/x):ys
  foldingFunction (x:y:ys) "^" = (y**x):ys
  foldingFunction (x:xs) "ln" = log x:xs
  foldingFunction xs "sum" = [sum xs]
  foldingFunction xs numberString = read numberString:xs

main = do
 print $ solveRPN "2 4 *" --8.0
 print $ solveRPN "4 2 +" --6.0
 print $ solveRPN "2 4 -" ---2.0
 print $ solveRPN "2 4 5 10.2 / *" --1.9607843137254903
 print $ solveRPN "2 4 ln" --1.3862943611198906
 print $ solveRPN "5.2 4.4 ^" --1413.8870345776209