-- | Расставить запятые между строками.
commaList :: [String] -> String
commaList list = foldr1 (\x y -> x++","++y) list
