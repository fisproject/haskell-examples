main = do
	print $ fmap (*2) [1,2,3]
	print $ fmap (*2) [1..10]
	print $ fmap (*2) (Just 200)
	print $ fmap (*2) Nothing