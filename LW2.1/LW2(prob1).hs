main = do
    putStr (show (endElem [1,2,3,4,5,67]))

endElem :: [getElem] -> getElem

endElem getElem
  | length getElem == 0 = error "The List is Empty !"
  | otherwise = last getElem  