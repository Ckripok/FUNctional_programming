main = do 
  print (range 4 9)

range :: Int -> Int -> [Int]
range x y
    | x > y = []
    | otherwise = x : range (x + 1) y