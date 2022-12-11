main = do
    print (double "abc" 0)
    print (double [1, 2, 3, 4, 5, 67] 3)
    print (double [1, 2, 3, 4, 5, 64/8] 7)

double :: [a] -> Int -> [a]
double xs n = xs >>= myReplicate n

myReplicate :: Int -> a -> [a]
myReplicate 0 y = [ ]
myReplicate x y = y : myReplicate (x-1) y