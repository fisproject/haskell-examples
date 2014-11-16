import Control.Monad

type KnightPos = (Int, Int);
-- move
moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
	(c',r') <- [(c+2, r-1),(c-2, r+1), (c-2, r-1),(c+1, r-2),(c+1, r+2),(c-1, r-2),(c-1, r+2)]
	guard (c' `elem` [1..8] && r' `elem` [1..8])
	return (c', r')

-- step
in3 :: KnightPos -> [KnightPos]
in3 start = do
	first  <- moveKnight start
	second  <- moveKnight first
	moveKnight second

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3  start end = end `elem` in3 start

main = do
	print $ moveKnight (6,2)
	print $ moveKnight (8,1)
	print $ (6,2) `canReachIn3` (6,1)
	print $ (7,3) `canReachIn3` (7,1)