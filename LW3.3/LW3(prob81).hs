main = do
  print (paths 1 4 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)])

paths :: Eq a => a -> a -> [(a, a)] -> [[a]]
paths q w e 
    | q == w = [[w]]
    | otherwise = [
        q:path | edge<-e, (fst edge) == q,
        path<-(paths (snd edge) w [e|e<-e, e/=edge])];