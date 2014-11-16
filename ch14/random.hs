import System.Random

threeCoins :: StdGen -> (Bool,Bool,Bool)
threeCoins gen = let 
				(firstCoin, newGen) = random gen
				(secondCoin, newGen') = random newGen
				(thirdCoin, newGen'') = random newGen
			in 	(firstCoin, secondCoin, thirdCoin)

main = do
	print $ threeCoins (mkStdGen 33)
	print $ threeCoins (mkStdGen 101)