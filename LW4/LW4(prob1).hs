main = do
    print $ (endElem [1,2,3,4,5,67])

endElem :: [getElem] -> getElem
endElem = myfoldr1 (myconst id) 

myfoldr1 :: (a -> a -> a) -> [a] -> a
myfoldr1 _ [x] = x
myfoldr1 f (x:xs) = f x (myfoldr1 f xs)

myconst :: a -> b -> a
myconst a _ = a