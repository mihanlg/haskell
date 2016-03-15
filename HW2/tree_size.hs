-- | Дерево со значениями в узлах
-- и произвольным количеством поддеревьев.
data RoseTree a = RoseTree a [RoseTree a]
  deriving (Show)

-- | Размер дерева (количество узлов).
sizeRoseTree :: RoseTree a -> Int
sizeRoseTree = 
