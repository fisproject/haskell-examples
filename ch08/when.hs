import Control.Monad

main = do
	input <- getLine
	when (input == "cuteCat") $ do
		putStrLn input 