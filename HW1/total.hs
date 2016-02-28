-- | Суммарная стоимость товаров в корзине.
total :: [(String, Double)] -> Double
total items = sum (map (\(x,y) -> y) items)
