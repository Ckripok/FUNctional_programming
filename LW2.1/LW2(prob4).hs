main = do
    putStr (show (listLength [1,2,3,4,5,67])) 

listLength :: [getElem] -> Int 

listLength getElem 
  | null getElem = error "Size fuuu"
  |otherwise  = length getElem