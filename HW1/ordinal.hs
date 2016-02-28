-- | Преобразовать заданное число в порядковое числительное.
ordinal :: Int -> String
ordinal n | (div (mod n 100) 10) == 1 = (show n) ++ "th"
          | (mod n 10) == 1 = (show n) ++ "st"
          | (mod n 10) == 2 = (show n) ++ "nd"
          | (mod n 10) == 3 = (show n) ++ "rd"
          | otherwise = (show n) ++ "th"
