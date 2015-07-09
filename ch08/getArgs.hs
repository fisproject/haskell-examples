import System.Environment
import Data.List

main = do
 args <- getArgs
 progName <- getProgName
 putStrLn "args are : "
 mapM_ putStrLn args
 putStrLn "program is : "
 putStrLn progName