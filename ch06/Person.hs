data Person = Person { 
 firstName :: String
 ,lastName :: String
 , age :: Int
} deriving (Eq)

fukuura = Person {firstName = "fukuura", lastName = "kazuya", age = 38}
kakunaka = Person {firstName = "kakunaka", lastName = "katsuya", age = 27}

main = do
 print $ fukuura /= kakunaka
 print $ fukuura == kakunaka