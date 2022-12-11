main = do
    print (double "abc" 0)
    print (double [1, 2, 3, 4, 5, 67] 3)
    print (double [1, 2, 3, 4, 5, 64/8] 7)

double :: [a] -> Double -> [a]
double [] _ = []
double _ 0 = []
double (x:xs) n = x : double [x] (n-1) ++ double xs n