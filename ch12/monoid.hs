import Data.Monoid

-- normal style
lengthCompareNs :: String -> String -> Ordering
lengthCompareNs x y = let 
      a = length x `compare` length y
      b = x `compare` y
     in if a == EQ then b else a

-- monoid style
lengthCompareMs :: String -> String -> Ordering
lengthCompareMs  x y = (length x `compare` length y) `mappend` (x `compare` y)

main = do
 -- mempty
 print $ LT `mappend` GT
 print $ mempty `mappend` GT
 -- try two-style
 print $ lengthCompareNs "zen" "ants"
 print $ lengthCompareNs "ants" "zen"
 print $ lengthCompareMs "zen" "ants"
 print $ lengthCompareMs "ants" "zen"

--LT
--GT
--LT
--GT
--LT
--GT