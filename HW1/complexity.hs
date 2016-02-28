-- | Оценить сложность задачи.
complexity :: [(String, Int)] -> Maybe Int
complexity students = result (count (filter (\(x,xs) -> xs > 0) students))

count :: [(String, Int)] -> Int
count [] = 0
count students = (div (foldr (\(x,xs) y -> (y+xs)) 0 students) (length (students)))

result :: Int -> Maybe Int
result 0 = Nothing
result n = Just n
