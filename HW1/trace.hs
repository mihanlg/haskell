-- | След матрицы.
trace :: Num a => [[a]] -> a
trace m = snd(foldl (\(y, z) x -> (y + 1, z + (x !! y))) (0, 0) m)
