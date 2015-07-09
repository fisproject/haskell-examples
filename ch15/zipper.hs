x -: f = f x

type ListZipper a = ([a], [a])

goForward :: ListZipper a -> ListZipper a
goForward (x:xs, bs) = (xs, x:bs)

goBack :: ListZipper a -> ListZipper a
goBack (xs, b:bs) = (b:xs, bs)

main = do
 let xs = [1,2,3,4]
 print $ goForward(xs, []) -- ([2,3,4],[1])
 print $ goForward([3,4], [2,1]) -- ([4],[3,2,1])
 print $ goBack([4], [3,2,1]) -- ([3,4],[2,1])