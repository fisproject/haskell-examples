import Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Got Number: " ++ show x])

multWithLog :: Writer [String] Int
multWithLog = do
 a <- logNumber 3
 b <- logNumber 5
 tell ["Gonna multiply these two"]
 return (a*b)

main  = print $ runWriter multWithLog
-- (15,["Got Number: 3","Got Number: 5","Gonna multiply these two"])