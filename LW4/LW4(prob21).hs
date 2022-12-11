main = do 
  print (insertAt 'X' "abcd" 2)

insertAt :: a -> [a] -> Int -> [a]
insertAt elt lst pos = myfoldr concat' [] $ zip [1..] lst
    where
        concat' (i, x) xs
            | i == pos  = elt:x:xs
            | otherwise = x:xs

myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr f z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)  
