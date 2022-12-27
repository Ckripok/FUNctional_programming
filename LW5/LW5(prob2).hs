main = do
    print (lBOne [1,2,3,4,5,67])

lBOne :: [a] -> Maybe a

lBOne [a, _] = Just a
lBOne (_:xs) = lBOne xs
lBOne _ = Nothing