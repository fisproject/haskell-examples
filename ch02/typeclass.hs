main = do
 -- Eq
 print $ 5 == 5 -- True
 print $ 'a' == 'b' -- False

 -- Ord
 print $ 5 `compare` 3 -- GT

 -- Show
 print $ show 3.2 -- "3.2"

 -- read
 print $ read "3.2" + 9.1 -- 12.3
 print $ (read "1" + 3.2 ) * 4 -- 16.8

 -- Enum
 print ['a'..'z'] -- "abcdefghijklmnopqrstuvwxyz"
 print $ succ 'C' -- 'D'
 print [1..10] -- [1,2,3,4,5,6,7,8,9,10]