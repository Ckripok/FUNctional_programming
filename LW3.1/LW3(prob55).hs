data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

main = do
  print $ concatMap (\t -> show t ++ "\n") filIsTree where filIsTree = filter isTree (doTrees 'x' 4)

isTree :: Tree a -> Bool
isTree Empty = True
isTree (Branch _ l r) = abs (isBranch l - isBranch r) <= 1 && isTree l && isTree r

isBranch :: Tree a -> Int
isBranch Empty = 0
isBranch (Branch _ l r) = 1 + isBranch l + isBranch r

list x = Branch x Empty Empty

doTrees :: a -> Int -> [Tree a]
doTrees _ 0 = []
doTrees c 1 = [list c]
doTrees c n = x ++ y ++ z
    where x  = [Branch c t Empty | t <- sTree]
          y = [Branch c Empty t | t <- sTree]
          z = concat [[Branch c l r | l <- fst h, r <- snd h] | h <- mTree]
          sTree = doTrees c (n-1)
          mTree = [(doTrees c num, doTrees c (n-1-num)) | num <- [0..n-2]]