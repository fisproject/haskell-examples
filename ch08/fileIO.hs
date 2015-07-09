import System.IO

main = do
 handle <- openFile "linux.txt" ReadMode
 contents <- hGetContents handle
 putStr contents
 hClose handle