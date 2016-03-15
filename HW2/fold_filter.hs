-- | Оставить только элементы, удовлетворяющие предикату.
filter' :: (a -> Bool) -> [a] -> [a]
filter' f = foldr (\x s -> if (f x) then x:s else s) []
