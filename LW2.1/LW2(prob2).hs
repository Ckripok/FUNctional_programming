main = do
    putStr (show (endPenultElem [1,2,3,4,5,67]))

endPenultElem :: [getElem]-> getElem

endPenultElem getElem
  | length getElem < 2 = error "Size does not allow getting value"
  | length getElem == 0 = error "The list is empty!"
  | otherwise = last $ init getElem  