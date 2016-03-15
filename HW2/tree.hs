-- | Дерево со значениями в листьях.
data Tree a
  = Leaf a                  -- ^ Лист дерева со значением.
  | Node (Tree a) (Tree a)  -- ^ Узел с двумя поддеревьями.

-- | Минимальный лист дерева.
minTree :: Ord a => Tree a -> a
minTree (Leaf x) = x
minTree (Node x y) = min2 (minTree x) (minTree y)

min2 :: Ord a => a -> a -> a
min2 x y | x < y = x
         | otherwise = y
