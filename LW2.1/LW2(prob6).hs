main = do
    putStr (show (palidrome [1,2,4,5,67]))

palidrome [] = True

palidrome (x:t)
    | t == [] = (x == last(t)) && palidrome(init(t))
    | otherwise = True