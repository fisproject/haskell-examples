data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
 | x == a = Node x left right
 | x < a = Node a (treeInsert x left) right
 | x > a = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a ->  Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
 | x == a = True
 | x < a = treeElem x left
 | x > a = treeElem x right


main = do
 let nums = [8,1,9,3,2,5,6,0,7]
 let numsTree = foldr treeInsert EmptyTree nums
 print numsTree
 print $ 8 `treeElem` numsTree
 print $ 10 `treeElem` numsTree