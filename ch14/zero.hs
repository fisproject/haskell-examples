import Control.Monad

powerset :: [a] -> [[a]]
powerset = filterM (const [True, False])

main = print $ powerset [1,2,3] -- [[1,2,3],[1,2],[1,3],[1],[2,3],[2],[3],[]]