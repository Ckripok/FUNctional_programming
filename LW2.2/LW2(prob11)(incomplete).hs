-- 'Data.List' - cтандартный модуль для работы со списками.
import Data.List (group)
-- '&&&' - берет один вход, дублирует его и модифицирует каждую копию с другой стрелкой (a b c -> a b c' -> a b (c, c') ).
import Control.Arrow ((&&&)) -- 'Arrows' Основной класс стрелок.
main :: IO ()
main = do
  let encode = rlencode "aaaabccaadeeee"
  putStrLn $ "Duplicate: " ++ show encode
rlencode = map (length &&& head) . group