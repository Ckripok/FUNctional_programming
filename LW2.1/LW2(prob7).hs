data NestedList a = Elem a | List [NestedList a]
main = do
    putStr (show (my_flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])))

my_flatten :: NestedList a -> [a]

my_flatten  (Elem a) = [a]
my_flatten  (List []) = []
my_flatten  (List (x:t)) = my_flatten(x) ++ my_flatten(List t)