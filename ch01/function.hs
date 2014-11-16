func x = x
add x y = x + y

main = do
	print (func 1)
	let
		a = 1
		b = 2
	print $ add a b
	print $ 1 `add` 2
