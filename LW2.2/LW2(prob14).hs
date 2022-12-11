main = do
    print . double $ "abc"
    print . double $ [1, 2, 3, 4, 5, 67]

double  :: [a] -> [a]
double [] = []
double (x:xs) = x : x : double xs