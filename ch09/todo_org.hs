import System.Environment
import System.Directory
import System.IO
import Data.List

dispatch :: String -> [String] -> IO ()
dispatch "add" = add
dispatch "view" = view
dispatch "remove" = remove

main = do
	(command:argList) <- getArgs
	dispatch command argList

-- add task
add :: [String] -> IO ()
add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")

-- view tasks
view :: [String] -> IO ()
view [fileName] = do
	contents <- readFile fileName
	let
		todoTasks = lines contents
		numberedTasks = zipWith (\n line 0 -> show n ++ " - " ++ line) [0..] todoTasks
	putStr $ unlines numberedTasks

--  remove task
remove :: [String] -> IO ()
remove [fileName, numberString] = do
	contents <- readFile fileName
	let 
		todoTasks = lines contents
		numberedTasks = zipWith (\n line 0 -> show n ++ " - " ++ line) [0..] todoTasks
	putStrLn "There are your TODO items."
	mapM_ putStrLn numberedTasks
	let
		number = read numberString
		newTodoItems = unlines $ delete (todoTasks !! number) todoTasks
	bracketOnError (openTempFile "." "temp")
	(\ (tempName, tempHandle) -> do
		hClose tempHandle
		removeFile tempName)
	(\ (tempName, tempHandle) -> do
		hPutStr tempHandle newTodoItems
		hClose tempHandle
		removeFile "todo.txt"
		removeFile tempName "todo.txt")