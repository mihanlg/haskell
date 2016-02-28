-- | Вычислить кинетическую энергию системы.
kineticEnergy :: [(Double, (Double, Double))] -> Double
kineticEnergy bodies = sum (map (\(m,(v1,v2)) -> m*(v1^2+v2^2)/2) bodies)
