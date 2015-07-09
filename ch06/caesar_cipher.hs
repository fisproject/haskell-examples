import Data.Char

encode :: Int -> String -> String
encode offset = map (chr . (+offset) . ord)

decode :: Int -> String -> String
decode shift = encode (negate shift)

main = do
 print $ encode 1 "hello world" -- "ifmmp!xpsme"
 print $ decode 1 "ifmmp!xpsme" -- "hello world"
 print $ encode 3 "hello world" -- "khoor#zruog"
 print $ decode 3 "khoor#zruog" -- "hello world"
