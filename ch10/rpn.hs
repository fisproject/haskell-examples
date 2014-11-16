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
	print $ solveRPN "2 4 *"
	print $ solveRPN "4 2 +"
	print $ solveRPN "2 4 -"
	print $ solveRPN "2 4 5 10.2 / *"
	print $ solveRPN "2 4 ln"
	print $ solveRPN "5.2 4.4 ^"