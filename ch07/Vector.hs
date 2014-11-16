data Vector a = Vector a a a deriving (Show)

-- Plus
vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

-- Dot Product
dotprod :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotprod` (Vector l m n) = i*l+j*m+k*n

-- Multiplication
vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)

main = do
	print $ Vector 3 4 5 `vplus` Vector 6 7 8
	print $ Vector 3 4 5 `dotprod` Vector 6 7 8
	print $ Vector 3 4 5 `vmult` 2