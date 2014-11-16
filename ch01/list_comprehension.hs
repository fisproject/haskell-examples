main = do
	print $ [(x,y,z) | x <- [1..9], y <- [1..9], z <- [1..9], x * y * z == 24]