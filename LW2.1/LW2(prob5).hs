main = do
    putStr (show (listLength [1,2,3,4,5,67])) 

listLength :: [getElem] -> [getElem]

listLength [] = []
listLength rev = last rev : listLength (init rev)