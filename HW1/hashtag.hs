-- | Сгенерировать хеш-тег для фразы.
hashtag :: String -> Maybe String
hashtag str = checkStr (convertStr str)

convertStr :: String -> String
convertStr [] = []
convertStr (x:xs) | x == ' ' = convertStr xs
                  | otherwise = x : (convertStr xs)

checkStr :: String -> Maybe String
checkStr [] = Nothing
checkStr str | length(str) < 140 = Just ("#" ++ str)
             | otherwise = Nothing
