-- | Дерево со значениями в листьях.
data Tree a
  = Leaf a                  -- ^ Лист дерева со значением.
  | Node (Tree a) (Tree a)  -- ^ Узел с двумя поддеревьями.

-- | Высота дерева.
height :: Tree a -> Int
height (Leaf a) = 0
height (Node x y) = max2 (height x) (height y) + 1

max2 :: Ord a => a -> a -> a
max2 x y | x > y = x
         | otherwise = y
