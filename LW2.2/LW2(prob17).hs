main = do
    print(split  "abcdefghik" 3 )
    
split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split a@(x:xs) n
  | n > 0 = let (l, r) = split xs (n - 1) in (x:l, r)
  | otherwise = ([], a)