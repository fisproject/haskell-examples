import Control.Applicative

sequenceA :: (Applicative f) => [f a] -> f [a]
sequenceA = foldr (liftA2(:)) (pure[])

main = do
	print $ [(+),(*)] <*> [1,2] <*>  [3,4]
	print $ filter (>50) $ (*) <$> [2,5,10] <*> [5.1,8,10]
	print $ liftA2 (:) (Just 3) (Just [4])
	-- Applicative Function
	print $ sequenceA [Just 3, Just 4, Just 5]
	print $ map (\f -> f 7) [(>4), (<10), odd]
	print $ sequenceA  [(>4), (<10), odd] 7