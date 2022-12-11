main = do
    print . dupli $ "abc"
    print . dupli $ [1, 2, 3, 4, 5, 67]

dupli  :: [a] -> [a]
dupli = myfoldr (\ x xs -> x : x : xs) []

myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr f z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)  
