import Data.Char

encode :: Int -> String -> String
encode offset msg = map (chr . (+offset) . ord) msg

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

main = do
	print $ encode 1 "hello world"
	print $ decode 1 "ifmmp!xpsme"