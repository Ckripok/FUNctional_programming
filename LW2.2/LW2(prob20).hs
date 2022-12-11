main = do
  print (removeAt 2 "abcd")
removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (last l, (init l) ++ r) where
  (l, r) = splitAt n xs