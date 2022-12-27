main = do
  print (removeAt 2 "abcd")

removeAt :: Int -> [a] -> (Maybe a, [a])

removeAt _ [] = (Nothing, [])
removeAt 1 (x:xs) = (Just x, xs)
removeAt k (x:xs) = let (a, r) = removeAt (k - 1) xs in (a, x:r)