import System.Random (rnd_select)
main = do 
  print(diff_select 6 49)
  
diff_select :: Int -> Int -> IO [Int]
diff_select n maxV = rnd_select [1..maxV] n