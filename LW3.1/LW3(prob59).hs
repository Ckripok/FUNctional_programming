data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

main =  do print $ show (take 4 $ hbalTree 'x' 3)    

hbalTree s 0 = [Empty]
hbalTree s 1 = [Branch s Empty Empty]
hbalTree s x = [Branch s c d | (a, b) <- [(x-2, x-1), (x-1, x-1), (x-1, x-2)], c <- hbalTree s a, d <- hbalTree s b]