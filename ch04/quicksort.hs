-- quick sort
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = let
	smallOrEqual = [a | a <- xs, a <= x]
	larger = [a | a <- xs, a > x]
	in qsort smallOrEqual++ [x] ++  qsort larger

main = do
	print $ qsort [6,3,4,9,1,12,0]