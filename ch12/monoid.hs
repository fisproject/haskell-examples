import Data.Monoid

-- normal style
lengthCompare_ns :: String -> String -> Ordering
lengthCompare_ns x y = let 
						a = length x `compare` length y
						b = x `compare` y
					in if a == EQ then b else a
-- monoid style
lengthCompare_ms :: String -> String -> Ordering
lengthCompare_ms  x y = (length x `compare` length y) `mappend` (x `compare` y)

main = do
	-- mempty
	print $ LT `mappend` GT
	print $ mempty `mappend` GT
	-- try two-style
	print $ lengthCompare_ns "zen" "ants"
	print $ lengthCompare_ns "ants" "zen"
	print $ lengthCompare_ms "zen" "ants"
	print $ lengthCompare_ms "ants" "zen"
