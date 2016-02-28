-- | Длина замкнутого пути.
cycleLength :: [(Double, Double)] -> Double
cycleLength path = sum (zipWith (\(u, v) (x, y) -> sqrt((x-u)^2+(y-v)^2)) path ((tail path)++[path !! 0]))
