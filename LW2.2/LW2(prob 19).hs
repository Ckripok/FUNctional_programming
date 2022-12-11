main = do 
  print(rotate ['a','b','c','d','e','f','g','h'] (-2))

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n
  | n > 0 = rotate (tail xs ++ [head xs]) (n - 1)
  | n < 0 = rotate (last xs : init xs) (n + 1)
  | otherwise = xs