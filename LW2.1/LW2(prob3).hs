main = do
    putStr (show (endElem [1,2,3,4,5,67] 3)) 

endElem :: [getElem] -> Int -> getElem

endElem getElem getK
  | getK < 0 || getK >= length getElem = error "Index fuuu"
  | otherwise = getElem !! getK