main = do
	-- map
	print $ map (+3) [1,2,3,4,5]
	print $ map (++"!!") ["create","delete"]
	print $ map (replicate 4) ["BobaFett","JangoFett"]
	-- filter
	print $ filter (<4) [1,2,3,4,5]
	print $ filter (<10) (filter even [1..20])