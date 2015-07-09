main = do
 print $ fmap (*2) [1,2,3] -- [2,4,6]
 print $ fmap (*2) [1..10] -- [2,4,6,8,10,12,14,16,18,20]
 print $ fmap (*2) (Just 200) -- Just 400
 print $ fmap (*2) Nothing -- Nothing