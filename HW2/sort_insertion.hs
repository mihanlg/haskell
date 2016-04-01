-- | Сортировка вставками.
insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) | isSorted (x:xs) = x:xs
                     | otherwise = insertionSort ((dropWhile (<=x) xs) ++ (takeWhile (<=x) xs) ++ [x])

isSorted :: Ord a => [a] -> Bool
isSorted [] = True
isSorted x = foldr (&&) True (zipWith (\y z -> y < z) x (tail x))
