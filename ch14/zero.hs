import Control.Monad

powerset :: [a] -> [[a]]
powerset xs = filterM (\x -> [True, False]) xs

main = do
	print $  powerset [1,2,3]