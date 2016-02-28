-- | Кодирование длин серий.
encodeRunLength :: String -> [(Int, Char)]
encodeRunLength [] = []
encodeRunLength str = myzip (map pairs str)

pairs :: Char -> (Int, Char)
pairs x = (1, x)

myzip :: [(Int, Char)] -> [(Int, Char)]
myzip [] = []
myzip [x] = [x]
myzip ((v,w):(x,y):z) | w == y = myzip((v+x, w):z)
                      | otherwise = (v,w):myzip((x,y):z)
