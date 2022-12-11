main = do
    print(dropEvery "abcdefghik" 3)

dropEvery :: [a] -> Double -> [a]
dropEvery xs n = map g $ filter f $ zip [1..] xs where
    f (i, _) = i `rem` n /= 0
    g (_, x) = x