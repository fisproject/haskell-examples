main = do
 -- map
 print $ map (+3) [1,2,3,4,5] -- [4,5,6,7,8]
 print $ map (++"!!") ["create", "delete"] -- ["create!!","delete!!"]
 print $ map (replicate 4) ["BobaFett", "JangoFett"] -- [["BobaFett","BobaFett","BobaFett","BobaFett"],["JangoFett","JangoFett","JangoFett","JangoFett"]]

 -- filter
 print $ filter (<4) [1,2,3,4,5] -- [1,2,3]
 print $ filter (<10) (filter even [1..20]) -- [2,4,6,8]