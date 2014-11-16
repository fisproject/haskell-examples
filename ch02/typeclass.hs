main = do
	-- Eq
	print $ 5 == 5
	print $ "a" == "b"
	-- Ord
	print $ 5 `compare` 3
	-- Show
	print $ show 3.2
	-- read
	print $ read "3.2" + 9.1
	print $ (read "1" + 3.2 ) * 4
	-- Enum
	print $ ['a'..'z']
	print $ succ 'C'
	print $ [1..10]