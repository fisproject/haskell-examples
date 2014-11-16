-- lambda
lam (x:xs)  = map (\x -> negate (abs x)) xs
-- composite function
cf (x:xs)  = map (negate . abs) xs

main = do
	print $ lam [-5, 2, 5, 10, -8, -4]
	print $ cf [-5, 2, 5, 10, -8, -4]