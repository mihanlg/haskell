-- | Вероятность, что Саша произнесёт заданное предложение.
sentenceChance :: [String] -> [(String, Double)] -> Double
sentenceChance words dict = product(map (has dict) words)

has :: [(String, Double)] -> String -> Double
has [] _ = 0.0
has ((w,p):xs) word | w == word = p
                    | otherwise = has xs word
