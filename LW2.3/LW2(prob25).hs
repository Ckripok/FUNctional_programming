import System.Random (rnd_select)
main = do 
  print(rnd_permu "abcdef")
  
rnd_permu :: [a] -> IO [a]
rnd_permu xs = return . concat =<< rnd_select (permutations xs) 1