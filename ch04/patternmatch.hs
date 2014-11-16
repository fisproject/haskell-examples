f 1 = "good"
f 2 = "normal"
f a = "bad"

-- firstletter
firstletter :: String -> String
firstletter "" = "Empty String"
firstletter all@(x:xs) = "The First Letter Of" ++ all ++ " is " ++ [x]

-- calculate BMI
bmiCalc :: Double -> Double -> String
bmiCalc weight height
	| bmi <= 18.5 = "slim"
	| bmi <= 25.0 = "normal"
	| otherwise = "fat"
	where bmi = weight / height ^2

main = do
	-- Pattern match
    print $ f 0
    print $ f 1
    print $ f 2

    -- list comprehension
    let xs = [(1,3),(4,5),(3,2),(11,3)]
    print $ [a+b | (a,b) <- xs]

    -- as Pattern
    print $ firstletter "FiSProject"

    -- where keyword
    print $ bmiCalc 60.5 1.68