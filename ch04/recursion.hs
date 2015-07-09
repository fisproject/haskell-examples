fact 1 = 1
fact n = n * fact (n - 1)

maxinum' :: (Ord a) => [a] -> a
maxinum' [] = error "empty list"
maxinum' [x] = x
maxinum' (x:xs) = max x (maxinum' xs)

main = do
 print $ fact 7 -- 5040
 print $ maxinum'[1,2,3,4,5,10] -- 10