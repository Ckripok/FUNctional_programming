import Data.List (group)

import Control.Arrow ((&&&))

main :: IO ()
main = do
  let decoded = rldecode [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
  putStrLn $ "Encoded: " ++ show decoded
rldecode = concatMap (uncurry replicate)