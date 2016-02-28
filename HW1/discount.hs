-- | Рассчитать скидку для списка товаров.
discount :: [(String, Double)] -> Double
discount items | (filter (> 10000) (map (\(x,y) -> y) items)) /= [] = 15.0
               | (filter (> 5000) (map (\(x,y) -> y) items)) /= [] = 10.0
               | (filter (> 1000) (map (\(x,y) -> y) items)) /= [] = 5.0
               | otherwise = 0.0
