lucas :: Int->Int
lucas 0 = 2
lucas 1 = 1
lucas n = lucas(n-1) + lucas(n-2)
