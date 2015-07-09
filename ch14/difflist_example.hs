import Data.Monoid
import Control.Monad.Writer

newtype DiffList a = DiffList { getDiffList :: [a] -> [a]}

toDiffList ::  [a] -> DiffList a
toDiffList xs = DiffList (xs++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

instance Monoid (DiffList a) where
    mempty = DiffList (\xs -> [] ++ xs)
    (DiffList f) `mappend` (DiffList g) = DiffList (f . g) -- or (\ xs -> f (g xs))

gcdReverse :: Int -> Int -> Writer (DiffList String) Int
gcdReverse a b
    | b == 0 = do
        tell (toDiffList ["Finished with " ++ show a])
        return a
    | otherwise = do
        result <- gcdReverse b (a `mod` b)
        tell (toDiffList [show a ++ " mod " ++ show b ++ " == " ++ show (a `mod` b)])
        return result

-- fast
finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 =
    tell (toDiffList ["0"])
finalCountDown x = do
    finalCountDown(x -1)
    tell (toDiffList [show x])

-- slow
preFinalCountDown :: Int -> Writer [String] ()
preFinalCountDown 0 =
    tell ["0"]
preFinalCountDown x = do
    preFinalCountDown(x -1)
    tell [show x]

main = print $ fromDiffList (toDiffList [1,2,3,4] `mappend` toDiffList [1,2,3]) -- [1,2,3,4,1,2,3]

-- ghci
-- :load difflist_example
-- mapM_ putStrLn . fromDiffList . snd . runWriter $ gcdReverse 110 34
-- mapM_ putStrLn . fromDiffList . snd . runWriter $ finalCountDown 50000
-- mapM_ putStrLn . snd . runWriter $ pre_finalCountDown 50000
